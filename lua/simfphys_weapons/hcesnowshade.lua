local function m1(ply,vehicle,shootOrigin,shootDirection)
	vehicle:EmitSound( "shade_fire" )

			vehicle:PlayAnimation( "shoot" )

	
	vehicle:GetPhysicsObject():ApplyForceOffset( -shootDirection * 3300, shootOrigin ) 
	
	local bullet = {}
		bullet.Num 			= 1
		bullet.Src 			= shootOrigin
		bullet.Dir 			= shootDirection
		bullet.Spread 		= Vector(0.03,0.03,0.03)
		bullet.Tracer		= 1
		bullet.TracerName	= "effect_simfphys_halo_ce_tracer_turret_covenant"
		bullet.Force		= 1
		bullet.Damage		= 75
		bullet.HullSize		= 1
		bullet.Attacker 	= ply
		bullet.IgnoreEntity = vehicle.Wheels[2]
		bullet.Callback = function(att, tr, dmginfo)
			local effectdata = EffectData()
				effectdata:SetOrigin( tr.HitPos )
				util.Effect( "effect_simfphys_halo_ce_impact_turret_covenant", effectdata, true, true )

			if tr.Entity ~= Entity(0) then
				if simfphys.IsCar( tr.Entity ) then
					local effectdata = EffectData()
						effectdata:SetOrigin( tr.HitPos + shootDirection * tr.Entity:BoundingRadius() )
						effectdata:SetNormal( shootDirection * 10 )
					util.Effect( "effect_simfphys_halo_ce_impact_turret_covenant", effectdata, true, true )
				end
			end
		end
		
	vehicle:FireBullets( bullet )
end

local function m2(ply,vehicle,shootOrigin,shootDirection)
	
	local bullet = {}
		bullet.Num 			= 1
		bullet.Src 			= shootOrigin
		bullet.Dir 			= shootDirection
		bullet.Spread 		= Vector(0.005,0.005,0.005)
		bullet.Tracer		= 1
		bullet.TracerName	= "effect_simfphys_halo_ce_tracer_turret_covenant"
		bullet.Force		= 1
		bullet.Damage		= 75
		bullet.HullSize		= 1
		bullet.Attacker 	= ply
		bullet.IgnoreEntity = vehicle.Wheels[2]
		bullet.Callback = function(att, tr, dmginfo)
			local effectdata = EffectData()
				effectdata:SetOrigin( tr.HitPos )
				util.Effect( "effect_simfphys_halo_ce_impact_turret_covenant", effectdata, true, true )

			if tr.Entity ~= Entity(0) then
				if simfphys.IsCar( tr.Entity ) then
					local effectdata = EffectData()
						effectdata:SetOrigin( tr.HitPos + shootDirection * tr.Entity:BoundingRadius() )
						effectdata:SetNormal( shootDirection * 10 )
					util.Effect( "effect_simfphys_halo_ce_impact_turret_covenant", effectdata, true, true )
				end
			end
		end
		
	vehicle:FireBullets( bullet )
end

function simfphys.weapon:ValidClasses()
	
	local classes = {
		"simfphys_covceshadesnow"
	}
	
	return classes
end

function simfphys.weapon:Initialize( vehicle )
	local data = {}
	vehicle:GetDriverSeat():SetParent(vehicle,vehicle:LookupAttachment("player"))
	data.Attachment = "muzzle1"
	data.Direction = Vector(1,0,0)
	data.Attach_Start_Left = "muzzle2"
	data.Attach_Start_Right = "muzzle3"
	data.Type = 3

	simfphys.RegisterCrosshair( vehicle:GetDriverSeat() , { Attachment = "muzzle1", Type = 2 } )

	simfphys.SetOwner( vehicle.EntityOwner, prop )
	simfphys.RegisterCamera( vehicle:GetDriverSeat(), Vector(0,0,20), Vector(0,60,50), true, "muzzle1" )
	
	if not istable( vehicle.Driver ) or not istable( vehicle.pSeat ) then return end
	
end


function simfphys.weapon:AimWeapon( ply, vehicle, pod )	
	if not IsValid( pod ) then return end
	
	local safemode = ply:KeyDown( IN_WALK )

	if vehicle.ButtonSafeMode ~= safemode then
		vehicle.ButtonSafeMode = safemode
		
		if safemode then
			vehicle:SetNWBool( "TurretSafeMode", not vehicle:GetNWBool( "TurretSafeMode", true ) )
		end
	end
	
	if vehicle:GetNWBool( "TurretSafeMode", true ) then return end

	local Aimang = pod:WorldToLocalAngles( ply:EyeAngles() )
	local AimRate = 160
	
	local Angles = vehicle:WorldToLocalAngles( Aimang ) - Angle(0,0,0)
	
	vehicle.sm_pp_yaw = vehicle.sm_pp_yaw and math.ApproachAngle( vehicle.sm_pp_yaw, Angles.y, AimRate * FrameTime() ) or 0
	vehicle.sm_pp_pitch = vehicle.sm_pp_pitch and math.ApproachAngle( vehicle.sm_pp_pitch, Angles.p, AimRate * FrameTime() ) or 0
	
	local TargetAng = Angle(vehicle.sm_pp_pitch,vehicle.sm_pp_yaw,0)
	
	vehicle:SetPoseParameter("turret_yaw", TargetAng.y )
	vehicle:SetPoseParameter("spin_cannon", -TargetAng.p )
end

function simfphys.weapon:Think( vehicle )
	local pod = vehicle:GetDriverSeat()
	if not IsValid( pod ) then return end
	
	local ply = pod:GetDriver()
	
	local curtime = CurTime()
	
	if not IsValid( ply ) then 
		if vehicle.wpn then
			vehicle.wpn:Stop()
			vehicle.wpn = nil
		end
		
		return
	end
	
	self:AimWeapon( ply, vehicle, pod )
	
	local fire = ply:KeyDown( IN_ATTACK )
	
	if fire then
		self:PrimaryAttack( vehicle, ply, shootOrigin )
		self:SecondaryAttack( vehicle, ply, shootOrigin )
		self:Attack( vehicle, ply, shootOrigin )
	end
end

function simfphys.weapon:CanAttack( vehicle )
	vehicle.NextShoot3 = vehicle.NextShoot3 or 0
	return vehicle.NextShoot3 < CurTime()
end

function simfphys.weapon:SetNextFire( vehicle, time )
	vehicle.NextShoot3 = time
end

function simfphys.weapon:CanPrimaryAttack( vehicle )
	vehicle.NextShoot = vehicle.NextShoot or 0
	return vehicle.NextShoot < CurTime()
end

function simfphys.weapon:SetNextPrimaryFire( vehicle, time )
	vehicle.NextShoot = time
end

function simfphys.weapon:CanSecondaryAttack( vehicle )
	vehicle.NextShoot2 = vehicle.NextShoot2 or 0
	return vehicle.NextShoot2 < CurTime()
end

function simfphys.weapon:SetNextSecondaryFire( vehicle, time )
	vehicle.NextShoot2 = time
end

function simfphys.weapon:PrimaryAttack( vehicle, ply )
	if not self:CanPrimaryAttack( vehicle ) then return end
	
	vehicle.wOldPos = vehicle.wOldPos or Vector(0,0,0)
	local deltapos = vehicle:GetPos() - vehicle.wOldPos
	vehicle.wOldPos = vehicle:GetPos()
	
	local AttachmentID = vehicle:LookupAttachment( "muzzle3" )
	local Attachment = vehicle:GetAttachment( AttachmentID )
	
	local shootOrigin = Attachment.Pos + deltapos * engine.TickInterval()
	local shootDirection = Attachment.Ang:Forward()
	
	ParticleEffectAttach( "astw2_halo_spv3_muzzle_beam_rifle", PATTACH_POINT_FOLLOW, vehicle, 4 )
	
	m1( ply, vehicle, shootOrigin, shootDirection )

	self:SetNextPrimaryFire( vehicle, CurTime() + .23 )
end

function simfphys.weapon:SecondaryAttack( vehicle, ply )
	if not self:CanSecondaryAttack( vehicle ) then return end
	
	vehicle.wOldPos = vehicle.wOldPos or Vector(0,0,0)
	local deltapos = vehicle:GetPos() - vehicle.wOldPos
	vehicle.wOldPos = vehicle:GetPos()
	
	local AttachmentID = vehicle:LookupAttachment( "muzzle2" )
	local Attachment = vehicle:GetAttachment( AttachmentID )
	
	local shootOrigin = Attachment.Pos + deltapos * engine.TickInterval()
	local shootDirection = Attachment.Ang:Forward()
	
	ParticleEffectAttach( "astw2_halo_spv3_muzzle_beam_rifle", PATTACH_POINT_FOLLOW, vehicle, 3 )
	
	m2( ply, vehicle, shootOrigin, shootDirection )
	
	self:SetNextSecondaryFire( vehicle, CurTime() + .23 )
end

function simfphys.weapon:Attack( vehicle, ply, shootOrigin, Attachment, ID )
	if not self:CanAttack( vehicle ) then return end
	vehicle.wOldPos = vehicle.wOldPos or Vector(0,0,0)
	local deltapos = vehicle:GetPos() - vehicle.wOldPos
	vehicle.wOldPos = vehicle:GetPos()
	
	local AttachmentID = vehicle:LookupAttachment( "muzzle1" )
	local Attachment = vehicle:GetAttachment( AttachmentID )
	
	local shootOrigin = Attachment.Pos + deltapos * engine.TickInterval()
	local shootDirection = Attachment.Ang:Forward()
	
	ParticleEffectAttach( "astw2_halo_spv3_muzzle_beam_rifle", PATTACH_POINT_FOLLOW, vehicle, 2 )
	
	m2( ply, vehicle, shootOrigin, shootDirection )
	
	self:SetNextFire( vehicle, CurTime() + .23 )
end
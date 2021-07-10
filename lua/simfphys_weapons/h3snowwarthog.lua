local function mg_fire(ply,vehicle,shootOrigin,shootDirection)

	vehicle:EmitSound("hce_turret")
	vehicle:EmitSound("turret_dist")
	
	vehicle.minigunspin = vehicle.minigunspin and (vehicle.minigunspin + 90) or 0
	vehicle:SetPoseParameter("speen", vehicle.minigunspin )

	
	vehicle:GetPhysicsObject():ApplyForceOffset( -shootDirection * 1450, shootOrigin ) 

	local bullet = {}
		bullet.Num 			= 2
		bullet.Src 			= shootOrigin
		bullet.Dir 			= shootDirection
		bullet.Spread 		= Vector(0.025,0.015,0.025)
		bullet.Tracer		= 1
		bullet.TracerName	= "effect_simfphys_halo_warthog_chaingun_tracer"
		bullet.Force		= 1
		bullet.Damage		= 32
		bullet.HullSize		= 1
		bullet.Attacker 	= ply
		bullet.Callback = function(att, tr, dmginfo)
			local effectdata = EffectData()
				effectdata:SetOrigin( tr.HitPos )
				util.Effect( "cball_bounce", effectdata, true, true )

			if tr.Entity ~= Entity(0) then
				if simfphys.IsCar( tr.Entity ) then
					local effectdata = EffectData()
						effectdata:SetOrigin( tr.HitPos + shootDirection * tr.Entity:BoundingRadius() )
						effectdata:SetNormal( shootDirection * 10 )
					util.Effect( "manhacksparks", effectdata, true, true )
				
					sound.Play( Sound( "doors/vent_open"..math.random(1,3)..".wav" ), tr.HitPos, 30)
				end
			end
		end
		
	vehicle:FireBullets( bullet )
end

function simfphys.weapon:ValidClasses()
	
	local classes = {
		"simfphys_h2warthogsnow",
		"simfphys_hrwarthogsnow",
		"simfphys_h3warthogsnow",
		"simfphys_h3sfwarthogsnow"
	}
	
	return classes
end

function simfphys.weapon:Initialize( vehicle )
	local data = {}
	vehicle.pSeat[2]:SetParent(vehicle,vehicle:LookupAttachment("hcenpc_seat2"))
	data.Attachment = "muzzle"
	data.Direction = Vector(0,90,0)
	data.Attach_Start_Left = "muzzle"
	data.Attach_Start_Right = "muzzle"
	data.Type = 3

	vehicle.MaxMag = 30
	vehicle:SetNWString( "WeaponMode", tostring( vehicle.MaxMag ) )
	
	simfphys.RegisterCrosshair( vehicle.pSeat[2] , { Attachment = "muzzle", Type = 5 } )
	simfphys.RegisterCamera( vehicle.pSeat[2], Vector(-52.25,0,5.5), Vector(0,20,60), true, "muzzle" )
	
	if not istable( vehicle.PassengerSeats ) or not istable( vehicle.pSeat ) then return end
end

function simfphys.weapon:AimWeapon( ply, vehicle, pod )	
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
	if not istable(vehicle.PassengerSeats) or not istable(vehicle.pSeat) then return end
	local pod = vehicle.pSeat[2]
	if not IsValid(pod) then return end
	local ply = pod:GetDriver()
	if not IsValid(ply) then return end
	
	self:AimWeapon( ply, vehicle, pod )
	
	local Attachment = vehicle:GetAttachment(vehicle:LookupAttachment("muzzle"))
	local shootOrigin = Attachment.Pos * engine.TickInterval()
	
	local fire = ply:KeyDown( IN_ATTACK )
	
	if fire then
		self:PrimaryAttack( vehicle, ply, shootOrigin )
	end
end

function simfphys.weapon:TakePrimaryAmmo( vehicle )
	vehicle.CurMag = isnumber( vehicle.CurMag ) and vehicle.CurMag - 1 or vehicle.MaxMag
	
	vehicle:SetNWString( "WeaponMode", tostring( vehicle.CurMag ) )
end

function simfphys.weapon:CanPrimaryAttack( vehicle )
	vehicle.CurMag = isnumber( vehicle.CurMag ) and vehicle.CurMag or vehicle.MaxMag
	
	if vehicle.CurMag <= 0 then
		self:ReloadPrimary( vehicle )
		return false
	end
	
	vehicle.NextShoot = vehicle.NextShoot or 0
	return vehicle.NextShoot < CurTime()
end

function simfphys.weapon:SetNextPrimaryFire( vehicle, time )
	vehicle.NextShoot = time
end

function simfphys.weapon:PrimaryAttack( vehicle, ply )
	if not self:CanPrimaryAttack( vehicle ) then return end
	
	vehicle.wOldPos = vehicle.wOldPos or vehicle:GetPos()
	local deltapos = vehicle:GetPos() - vehicle.wOldPos
	vehicle.wOldPos = vehicle:GetPos()
	
	local AttachmentID = vehicle:LookupAttachment( "muzzle" )
	local Attachment = vehicle:GetAttachment( AttachmentID )
	
	local shootOrigin = Attachment.Pos + deltapos * engine.TickInterval()
	local shootDirection = Attachment.Ang:Forward()
	
	ParticleEffectAttach( "simphys_halo_warthog_chaingun_muzzle", PATTACH_POINT_FOLLOW, vehicle, 5 )
	
	mg_fire( ply, vehicle, shootOrigin, shootDirection )
	
	self:SetNextPrimaryFire( vehicle, CurTime() + 0.06 )
end

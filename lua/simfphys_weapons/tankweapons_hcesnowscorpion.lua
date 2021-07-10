local scorp_susdata = {}
for i = 1,7 do
	scorp_susdata[i] = {
		attachment = "sus_left_attach_" .. i,
		poseparameter = "suspension_left_" .. i,
	}

	local ir = i + 7

	scorp_susdata[ir] = {
		attachment = "sus_right_attach_" .. i,
		poseparameter = "suspension_right_" .. i,
	}
end

local function cannon_fire(ply,vehicle,shootOrigin,shootDirection)

	vehicle:EmitSound("scorpionfire")
	
	vehicle:GetPhysicsObject():ApplyForceOffset( -shootDirection * 900000, shootOrigin )
	
	local projectile = {}
		projectile.filter = vehicle.VehicleData["filter"]
		projectile.shootOrigin = shootOrigin
		projectile.shootDirection = shootDirection
		projectile.attacker = ply
		projectile.attackingent = vehicle
		projectile.Damage = 1500
		projectile.Force = 24000
		projectile.Size = 30
		projectile.BlastRadius = 450
		projectile.BlastDamage = 4500
		projectile.DeflectAng = 25
		projectile.BlastEffect = "simfphys_hce_snow_expl"
		projectile.MuzzleVelocity = 240
	
	HCS.FirePhysProjectile( projectile )
end

local function mg_fire(ply,vehicle,shootOrigin,shootDirection)

	vehicle:EmitSound("hce_turret")
	vehicle:GetPhysicsObject():ApplyForceOffset( -shootDirection * 50000, shootOrigin )
	
	local effectdata = EffectData()
		effectdata:SetEntity( vehicle )
	util.Effect( "simphys_halo_scorpion_chaingun_muzzle", effectdata )

	local bullet = {}
		bullet.Num 			= 1
		bullet.Src 			= shootOrigin
		bullet.Dir 			= shootDirection
		bullet.Spread 		= Vector(0.00,0.00,0.00)
		bullet.Tracer		= 1
		bullet.TracerName	= "effect_simfphys_halo_warthog_chaingun_tracer"
		bullet.Force		= 1
		bullet.Damage		= 20
		bullet.HullSize		= 1
		bullet.Attacker 	= ply
	vehicle:FireBullets( bullet )
end

function simfphys.weapon:ValidClasses()
	
	local classes = {
		"simfphys_hcescorpionsnow",
		"simfphys_h2scorpionsnow"
	}
	
	return classes
end

function simfphys.weapon:Initialize( vehicle )
	net.Start( "halo_misc_register_tank" )
		net.WriteEntity( vehicle )
		net.WriteString( "hcescorpionsnow" )
	net.Broadcast()
	local data = {}
	data.Attachment = "muzzle"
	data.Direction = Vector(0,0,0)
	data.Attach_Start_Left = "muzzle"
	data.Attach_Start_Right = "muzzle"
	data.Type = 1
	
	simfphys.RegisterCrosshair( vehicle:GetDriverSeat(), { Attachment = "muzzle", Type = 2 } )
	simfphys.RegisterCamera( vehicle:GetDriverSeat(), Vector(0,0,20), Vector(50,70,140), true, "turret" )
	
	if not istable( vehicle.PassengerSeats ) or not istable( vehicle.pSeat ) then return end
	simfphys.RegisterCamera( vehicle.pSeat[1], Vector(0,0,20), Vector(50,70,140), true, "turret" )
	
	for i = 2, table.Count( vehicle.pSeat ) do
		simfphys.RegisterCamera( vehicle.pSeat[ i ], Vector(0,0,0), Vector(0,0,0) )
	end
end

function simfphys.weapon:AimWeapon( ply, vehicle, pod )	
if not IsValid( pod ) then return end

	local Aimang = pod:WorldToLocalAngles( ply:EyeAngles() )
	Aimang:Normalize()
	
	local AimRate = 110
	
	local Angles = vehicle:WorldToLocalAngles( Aimang )
	
	vehicle.sm_pp_yaw = vehicle.sm_pp_yaw and math.ApproachAngle( vehicle.sm_pp_yaw, Angles.y, AimRate * FrameTime() ) or 180
	vehicle.sm_pp_pitch = vehicle.sm_pp_pitch and math.ApproachAngle( vehicle.sm_pp_pitch, Angles.p, AimRate * FrameTime() ) or 0
	
	local TargetAng = Angle(vehicle.sm_pp_pitch,vehicle.sm_pp_yaw,0)
	TargetAng:Normalize() 

	vehicle:SetPoseParameter("turret_yaw", TargetAng.y - 0 )
	
	vehicle:SetPoseParameter("spin_cannon", (-TargetAng.p) )
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
	
	vehicle.wOldPos = vehicle.wOldPos or Vector(0,0,0)
	local deltapos = vehicle:GetPos() - vehicle.wOldPos
	vehicle.wOldPos = vehicle:GetPos()
	
	self:AimWeapon( ply, vehicle, pod )
	
	local fire = ply:KeyDown( IN_ATTACK )
	local fire2 = ply:KeyDown( IN_ATTACK2 )
	
	if fire then
		self:PrimaryAttack( vehicle, ply )
	end
	
	if fire2 then
		self:SecondaryAttack( vehicle, ply )
	end
	
	local handbrake = vehicle:GetHandBrakeEnabled()

	self:DoWheelSpin( vehicle )
	self:ModPhysics( vehicle, handbrake )
end

function simfphys.weapon:CanPrimaryAttack( vehicle )
	vehicle.NextShoot = vehicle.NextShoot or 0
	return vehicle.NextShoot < CurTime()
end

function simfphys.weapon:SetNextPrimaryFire( vehicle, time )
	vehicle.NextShoot = time + 0
end

function simfphys.weapon:CanSecondaryAttack( vehicle )
	vehicle.NextShoot2 = vehicle.NextShoot2 or 0
	return vehicle.NextShoot2 < CurTime()
end

function simfphys.weapon:SetNextSecondaryFire( vehicle, time )
	vehicle.NextShoot2 = time + 0.05
end

function simfphys.weapon:PrimaryAttack( vehicle, ply )
	if not self:CanPrimaryAttack( vehicle ) then return end
	
	vehicle.wOldPos = vehicle.wOldPos or vehicle:GetPos()
	local deltapos = vehicle:GetPos() - vehicle.wOldPos
	vehicle.wOldPos = vehicle:GetPos()
	
	if vehicle.swapMuzzle then
		vehicle.swapMuzzle = false
	else
		vehicle.swapMuzzle = true
	end
	
	local AttachmentID = vehicle:LookupAttachment( "muzzle" )
	local Attachment = vehicle:GetAttachment( AttachmentID )
	
	local shootOrigin = Attachment.Pos + deltapos * engine.TickInterval()
	local shootDirection = Attachment.Ang:Forward()
	
	ParticleEffectAttach( "simfphys_halo_ce_scorpion_muzzle", PATTACH_POINT_FOLLOW, vehicle, 3 )
	
	cannon_fire( ply, vehicle, shootOrigin + shootDirection * 80, shootDirection )
	
	self:SetNextPrimaryFire( vehicle, CurTime() + 3 )
end

function simfphys.weapon:SecondaryAttack( vehicle, ply )
	if not self:CanSecondaryAttack( vehicle ) then return end
	
	vehicle.wOldPos = vehicle.wOldPos or vehicle:GetPos()
	local deltapos = vehicle:GetPos() - vehicle.wOldPos
	vehicle.wOldPos = vehicle:GetPos()
	
	if vehicle.swapMuzzle then
		vehicle.swapMuzzle = false
	else
		vehicle.swapMuzzle = true
	end
	
	local AttachmentID = vehicle.swapMuzzle and vehicle:LookupAttachment( "mgmuzzle" ) or vehicle:LookupAttachment( "mgmuzzle" )
	local Attachment = vehicle:GetAttachment( AttachmentID )
	
	local shootOrigin = Attachment.Pos + deltapos * engine.TickInterval()
	local shootDirection = Attachment.Ang:Forward()
	
	ParticleEffectAttach( "simfphys_halo_warthog_ce_chaingun_muzzle", PATTACH_POINT_FOLLOW, vehicle, 4 )
	
	mg_fire( ply, vehicle, shootOrigin + shootDirection * 80, shootDirection )
	
	self:SetNextSecondaryFire( vehicle, CurTime() + 0.05 )
end

function simfphys.weapon:IsOnGround( vehicle )
	return vehicle.susOnGround == true
end

function simfphys.weapon:GetForwardSpeed( vehicle )
	return vehicle.ForwardSpeed
end

function simfphys.weapon:ModPhysics( vehicle, wheelslocked )
	if wheelslocked and self:IsOnGround( vehicle ) then
		local phys = vehicle:GetPhysicsObject()
		phys:ApplyForceCenter( -vehicle:GetVelocity() * phys:GetMass() * 0.04 )
	end
end

function simfphys.weapon:DoWheelSpin( vehicle )
	local spin_r = (vehicle.VehicleData[ "spin_4" ] + vehicle.VehicleData[ "spin_6" ]) * 1.25
	local spin_l = (vehicle.VehicleData[ "spin_3" ] + vehicle.VehicleData[ "spin_5" ]) * 1.25

	net.Start( "simfphys_update_tracks", true )
		net.WriteEntity( vehicle )
		net.WriteFloat( spin_r )
		net.WriteFloat( spin_l )
	net.Broadcast()
end
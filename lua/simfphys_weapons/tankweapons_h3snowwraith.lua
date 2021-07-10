local t90ms_susdata = {}
for i = 1,6 do
	t90ms_susdata[i] = { 
		attachment = "sus_left_attach_"..i,
		poseparameter = "suspension_left_"..i,
	}
	
	local ir = i + 6
	
	t90ms_susdata[ir] = { 
		attachment = "sus_right_attach_"..i,
		poseparameter = "suspension_right_"..i,
	}
end

local function hmg_fire(ply,vehicle,shootOrigin,shootDirection)

	vehicle:EmitSound("h3_plasturret")
	
	local projectile = {}
		projectile.filter = vehicle.VehicleData["filter"]
		projectile.shootOrigin = shootOrigin
		projectile.shootDirection = shootDirection
		projectile.attacker = ply
		projectile.Tracer	= 1
		projectile.HullSize = 6
		projectile.attackingent = vehicle
		projectile.Spread = Vector(0.01,0.01,0.01)
		projectile.Damage = 30
		projectile.Force = 12
	
	simfphys.FireHitScan( projectile )
end

local function cannon_fire(ply,vehicle,shootOrigin,shootDirection)
	vehicle:EmitSound("wraithfire")
	
	vehicle:GetPhysicsObject():ApplyForceOffset( -shootDirection * 900000, shootOrigin )
	
	local projectile = {}
		projectile.filter = vehicle.VehicleData["filter"]
		projectile.shootOrigin = shootOrigin
		projectile.shootDirection = shootDirection
		projectile.attacker = ply
		projectile.attackingent = vehicle
		projectile.Damage = 600
		projectile.Force = 24000
		projectile.Size = 30
		projectile.BlastRadius = 450
		projectile.BlastDamage = 2400
		projectile.DeflectAng = 25
		projectile.BlastEffect = "snow_wraith_expl"
		projectile.MuzzleVelocity = 30
	
	SWR.FirePhysProjectile( projectile )
end

function simfphys.weapon:ValidClasses()
	
	local classes = {
		"simfphys_covwraithsnow"
	}
	
	return classes
end

function simfphys.weapon:Initialize( vehicle )
	local data = {}
	data.Attachment = "muzzle"
	data.Direction = Vector(1,0,0)
	data.Type = 3
	simfphys.RegisterCrosshair( vehicle:GetDriverSeat(), { Attachment = "muzzle", Type = 2 } )
	simfphys.RegisterCamera( vehicle:GetDriverSeat(), Vector(0,-35,2), Vector(0,50,110), true, "muzzle" )
	
	if not istable( vehicle.PassengerSeats ) or not istable( vehicle.pSeat ) then return end

	simfphys.RegisterCrosshair( vehicle.pSeat[1] , { Attachment = "mgmuzzle", Type = 5 } )
	simfphys.RegisterCamera( vehicle.pSeat[1], Vector(5,0,-3), Vector(0,0,25), true, "mgmuzzle" )
end

function simfphys.weapon:GetForwardSpeed( vehicle )
	return vehicle.ForwardSpeed
end

function simfphys.weapon:IsOnGround( vehicle )
	return (vehicle.susOnGround == true)
end

function simfphys.weapon:AimMachinegun( ply, vehicle, pod )	
	if not IsValid( pod ) then return end

	local Aimang = pod:WorldToLocalAngles( ply:EyeAngles() )
	
	local AimRate = 250
	
	local Angles = vehicle:WorldToLocalAngles( Aimang )
	
	vehicle.sm_ppmg_yaw = vehicle.sm_ppmg_yaw and math.ApproachAngle( vehicle.sm_ppmg_yaw, Angles.y, AimRate * FrameTime() ) or 180
	vehicle.sm_ppmg_pitch = vehicle.sm_ppmg_pitch and math.ApproachAngle( vehicle.sm_ppmg_pitch, Angles.p, AimRate * FrameTime() ) or 0
	
	local TargetAng = Angle(vehicle.sm_ppmg_pitch,vehicle.sm_ppmg_yaw,0)
	TargetAng:Normalize() 
	
	vehicle.sm_pp_yaw = vehicle.sm_pp_yaw or 0
	
	vehicle:SetPoseParameter("pass_yaw", TargetAng.y  )
	vehicle:SetPoseParameter("pass_pitch", -TargetAng.p )
end

function simfphys.weapon:AimCannon( ply, vehicle, pod, Attachment )	
	if not IsValid( pod ) then return end

	local Aimang = pod:WorldToLocalAngles( ply:EyeAngles() )
	Aimang:Normalize()
	
	local AimRate = 110
	
	local Angles = vehicle:WorldToLocalAngles( Aimang )
	
	vehicle.sm_pp_yaw = vehicle.sm_pp_yaw and math.ApproachAngle( vehicle.sm_pp_yaw, Angles.y, AimRate * FrameTime() ) or 0
	vehicle.sm_pp_pitch = vehicle.sm_pp_pitch and math.ApproachAngle( vehicle.sm_pp_pitch, Angles.p, AimRate * FrameTime() ) or 0
	
	local TargetAng = Angle(vehicle.sm_pp_pitch,vehicle.sm_pp_yaw,0)
	TargetAng:Normalize() 

	vehicle:SetPoseParameter("turret_yaw", TargetAng.y - 0 )
	
	vehicle:SetPoseParameter("spin_cannon", (-TargetAng.p) )
end

function simfphys.weapon:ControlTurret( vehicle, deltapos )
	if not istable( vehicle.PassengerSeats ) or not istable( vehicle.pSeat ) then return end
	
	local pod = vehicle:GetDriverSeat()
	
	if not IsValid( pod ) then return end
	
	local ply = pod:GetDriver()
	
	if not IsValid( ply ) then return end
	
	local safemode = ply:KeyDown( IN_WALK )

	if vehicle.ButtonSafeMode ~= safemode then
		vehicle.ButtonSafeMode = safemode
		
		if safemode then
			vehicle:SetNWBool( "TurretSafeMode", not vehicle:GetNWBool( "TurretSafeMode", true ) )
			
			if vehicle:GetNWBool( "TurretSafeMode" ) then
				vehicle:EmitSound( "vehicles/tank_turret_stop1.wav")
			else
				vehicle:EmitSound( "vehicles/tank_readyfire1.wav")
			end
		end
	end
	
	if vehicle:GetNWBool( "TurretSafeMode", true ) then return end
	
	local ID = vehicle:LookupAttachment( "muzzle" )
	local Attachment = vehicle:GetAttachment( ID )
	
	self:AimCannon( ply, vehicle, pod, Attachment )
	
	local DeltaP = deltapos * engine.TickInterval()
	
	local fire = ply:KeyDown( IN_ATTACK )
	
	if fire then
		self:PrimaryAttack( vehicle, ply, Attachment.Pos + DeltaP, Attachment )
	end
end

function simfphys.weapon:ControlMachinegun( vehicle, deltapos )

	if not istable( vehicle.PassengerSeats ) or not istable( vehicle.pSeat ) then return end
	
	local pod = vehicle.pSeat[1]
	
	if not IsValid( pod ) then return end
	
	local ply = pod:GetDriver()
	
	if not IsValid( ply ) then return end
	
	self:AimMachinegun( ply, vehicle, pod )
	
	local ID = vehicle:LookupAttachment( "mgmuzzle" )
	local Attachment = vehicle:GetAttachment( ID )

	local shootOrigin = Attachment.Pos + deltapos * engine.TickInterval()
	
	local fire = ply:KeyDown( IN_ATTACK )
	
	if fire then
		self:Attack( vehicle, ply, shootOrigin, Attachment, ID )
	end
end

function simfphys.weapon:Attack( vehicle, ply, shootOrigin, Attachment, ID )
	
	if not self:CanAttack( vehicle ) then return end

	local shootDirection = Attachment.Ang:Forward()
	
	hmg_fire( ply, vehicle, shootOrigin, shootDirection )
	
	self:SetNextFire( vehicle, CurTime() + 0.1)
	
	ParticleEffectAttach( "astw2_halo_3_muzzle_plasma_turret", PATTACH_POINT_FOLLOW, vehicle, 3 )
end

function simfphys.weapon:CanAttack( vehicle )
	vehicle.NextShoot3 = vehicle.NextShoot3 or 0
	return vehicle.NextShoot3 < CurTime()
end

function simfphys.weapon:SetNextFire( vehicle, time )
	vehicle.NextShoot3 = time
end


function simfphys.weapon:PrimaryAttack( vehicle, ply, shootOrigin, Attachment )
	if not self:CanPrimaryAttack( vehicle ) then return end
	
	local shootDirection = Attachment.Ang:Forward()
	
	local AttachmentID = vehicle:LookupAttachment( "muzzle" )
	local Attachment = vehicle:GetAttachment( AttachmentID )
	
	ParticleEffectAttach( "astw2_halo_3_muzzle_plasma_turret", PATTACH_POINT_FOLLOW, vehicle, 2 )

	cannon_fire( ply, vehicle, shootOrigin + shootDirection * 80, shootDirection )
	
	self:SetNextPrimaryFire( vehicle, CurTime() + 2.05 )
end

function simfphys.weapon:CanPrimaryAttack( vehicle )
	vehicle.NextShoot = vehicle.NextShoot or 0
	return vehicle.NextShoot < CurTime()
end

function simfphys.weapon:SetNextPrimaryFire( vehicle, time )
	vehicle.NextShoot = time + 0
end

function simfphys.weapon:ModPhysics( vehicle, wheelslocked )
	if wheelslocked and self:IsOnGround( vehicle ) then
		local phys = vehicle:GetPhysicsObject()
		phys:ApplyForceCenter( -vehicle:GetVelocity() * phys:GetMass() * 0.04 )
	end
end

function simfphys.weapon:ControlTrackSounds( vehicle, wheelslocked ) 
	local speed = math.abs( self:GetForwardSpeed( vehicle ) )
	local fastenuf = speed > 2 and not wheelslocked and self:IsOnGround( vehicle )
	
	if fastenuf ~= vehicle.fastenuf then
		vehicle.fastenuf = fastenuf
		
		if fastenuf then
			vehicle.track_snd = CreateSound( vehicle, "simulated_vehicles/sherman/tracks.wav" )
			vehicle.track_snd:PlayEx(0,0)
			vehicle:CallOnRemove( "stopmesounds", function( vehicle )
				if vehicle.track_snd then
					vehicle.track_snd:Stop()
				end
			end)
		else
			if vehicle.track_snd then
				vehicle.track_snd:Stop()
				vehicle.track_snd = nil
			end
		end
	end
	
	if vehicle.track_snd then
		vehicle.track_snd:ChangePitch( math.Clamp(60 + speed / 40,0,150) ) 
		vehicle.track_snd:ChangeVolume( math.min( math.max(speed - 20,0) / 200,1) ) 
	end
end

function simfphys.weapon:Think( vehicle )
	if not IsValid( vehicle ) or not vehicle:IsInitialized() then return end
	
	vehicle.wOldPos = vehicle.wOldPos or Vector(0,0,0)
	local deltapos = vehicle:GetPos() - vehicle.wOldPos
	vehicle.wOldPos = vehicle:GetPos()
	
	local handbrake = vehicle:GetHandBrakeEnabled()
	
	self:DoWheelSpin( vehicle )
	self:ControlTurret( vehicle, deltapos )
	self:ControlMachinegun( vehicle, deltapos )
	self:ControlTrackSounds( vehicle, handbrake )
	self:ModPhysics( vehicle, handbrake )
end

function simfphys.weapon:DoWheelSpin( vehicle )
	local spin_r = (vehicle.VehicleData[ "spin_4" ] + vehicle.VehicleData[ "spin_6" ]) * 1.25
	local spin_l = (vehicle.VehicleData[ "spin_3" ] + vehicle.VehicleData[ "spin_5" ]) * 1.25
	
	net.Start( "simfphys_update_tracks", true )
		net.WriteEntity( vehicle )
		net.WriteFloat( spin_r ) 
		net.WriteFloat( spin_l ) 
	net.Broadcast()
	
	vehicle:SetPoseParameter("spin_wheels_right", spin_r)
	vehicle:SetPoseParameter("spin_wheels_left", spin_l )
end
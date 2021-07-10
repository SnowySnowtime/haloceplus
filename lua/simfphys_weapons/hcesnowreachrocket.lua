local function mg_fire(ply,vehicle,shootOrigin,shootDirection)

	vehicle:EmitSound("reach_rocket_fire")

	vehicle:GetPhysicsObject():ApplyForceOffset( -shootDirection * 80000, shootOrigin )
	
	local projectile = {}
		projectile.filter = vehicle.VehicleData["filter"]
		projectile.shootOrigin = shootOrigin
		projectile.shootDirection = shootDirection
		projectile.attacker = ply
		projectile.attackingent = vehicle
		projectile.Damage = 250
		projectile.Force = 64000
		projectile.Size = 50
		projectile.BlastRadius = 200
		projectile.BlastDamage = 800
		projectile.DeflectAng = 1
		projectile.BlastEffect = "simfphys_hce_snow_rocket_reach"
		projectile.MuzzleVelocity = 50
	
	HCE.FirePhysProjectile( projectile )
end

function simfphys.weapon:ValidClasses()
	
	local classes = {
		"simfphys_hrwarthogrocketsnow"
	}
	
	return classes
end

function simfphys.weapon:Initialize( vehicle )
	local data = {}
	data.Attachment = "muzzle"
	data.Direction = Vector(0,90,0)
	data.Attach_Start_Left = "muzzle"
	data.Attach_Start_Right = "muzzle"
	data.Type = 3
	
	vehicle:SetNWString( "WeaponMode", tostring( vehicle.MaxMag ) )
		
	simfphys.RegisterCrosshair( vehicle.pSeat[2] , { Attachment = "muzzle", Type = 5 } )
	simfphys.RegisterCamera( vehicle.pSeat[2], Vector(-30,0,5), Vector(0,20,20), true, "muzzle" )
	
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
	local fire2 = ply:KeyDown( IN_ATTACK2 )
	
	if fire then
		self:PrimaryAttack( vehicle, ply, shootOrigin )
	end
	if fire2 then
		self:SecondaryAttack( vehicle, ply, shootOrigin )
	end
end

function simfphys.weapon:TakePrimaryAmmo( vehicle )
	vehicle.CurMag = isnumber( vehicle.CurMag ) and vehicle.CurMag - 1 or vehicle.MaxMag
	
	vehicle:SetNWString( "WeaponMode", tostring( vehicle.CurMag ) )
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
	
	vehicle.wOldPos = vehicle.wOldPos or vehicle:GetPos()
	local deltapos = vehicle:GetPos() - vehicle.wOldPos
	vehicle.wOldPos = vehicle:GetPos()
	
	local AttachmentID = vehicle.swapMuzzle and vehicle:LookupAttachment( "muzzlel" ) or vehicle:LookupAttachment( "muzzlel" )
	local Attachment = vehicle:GetAttachment( AttachmentID )
	
	local shootOrigin = Attachment.Pos + deltapos * engine.TickInterval()
	local shootDirection = Attachment.Ang:Forward()
	
	ParticleEffectAttach( "simphys_halo_warthog_rocket_muzzle", PATTACH_POINT_FOLLOW, vehicle, 6 )
	
	mg_fire( ply, vehicle, shootOrigin, shootDirection )
	
	self:SetNextPrimaryFire( vehicle, CurTime() + 0.9 )
end

function simfphys.weapon:SecondaryAttack( vehicle, ply )
	if not self:CanSecondaryAttack( vehicle ) then return end
	
	vehicle.wOldPos = vehicle.wOldPos or vehicle:GetPos()
	local deltapos = vehicle:GetPos() - vehicle.wOldPos
	vehicle.wOldPos = vehicle:GetPos()
	
	local AttachmentID = vehicle.swapMuzzle and vehicle:LookupAttachment( "muzzler" ) or vehicle:LookupAttachment( "muzzler" )
	local Attachment = vehicle:GetAttachment( AttachmentID )
	
	local shootOrigin = Attachment.Pos + deltapos * engine.TickInterval()
	local shootDirection = Attachment.Ang:Forward()
	
	ParticleEffectAttach( "simphys_halo_warthog_rocket_muzzle", PATTACH_POINT_FOLLOW, vehicle, 7 )
	
	mg_fire( ply, vehicle, shootOrigin, shootDirection )
	
	self:SetNextSecondaryFire( vehicle, CurTime() + 0.9 )
end
local function mg_fire(ply,vehicle,shootOrigin,shootDirection)

	vehicle:EmitSound("spectre_fire")

	vehicle:GetPhysicsObject():ApplyForceOffset( -shootDirection * 1450, shootOrigin ) 

	local bullet = {}
		bullet.Num 			= 2
		bullet.Src 			= shootOrigin
		bullet.Dir 			= shootDirection
		bullet.Spread 		= Vector(0.035,0.025,0.035)
		bullet.Tracer		= 1
		bullet.TracerName	= "effect_simfphys_halo3_tracer_plasmarifle"
		bullet.Force		= 1
		bullet.Damage		= 32
		bullet.HullSize		= 1
		bullet.Attacker 	= ply
		bullet.Callback = function(att, tr, dmginfo)
		end
		
	vehicle:FireBullets( bullet )
end

function simfphys.weapon:ValidClasses()
	
	local classes = {
		"simfphys_covh2aspectresnow"
	}
	
	return classes
end

function simfphys.weapon:Initialize( vehicle )
	local data = {}
	vehicle.pSeat[3]:SetParent(vehicle,vehicle:LookupAttachment("player"))
	data.Attachment = "muzzle"
	data.Direction = Vector(0,90,0)
	data.Attach_Start_Left = "muzzle"
	data.Attach_Start_Right = "muzzle"
	data.Type = 3

	vehicle.MaxMag = 30
	vehicle:SetNWString( "WeaponMode", tostring( vehicle.MaxMag ) )
	
	simfphys.RegisterCrosshair( vehicle.pSeat[3] , { Attachment = "muzzle", Type = 5 } )
	simfphys.RegisterCamera( vehicle.pSeat[3], Vector(0,0,0), Vector(0,10,60), true, "camera" )
	
	if not istable( vehicle.PassengerSeats ) or not istable( vehicle.pSeat ) then return end
end

function simfphys.weapon:AimWeapon( ply, vehicle, pod )	
	local Aimang = pod:WorldToLocalAngles( ply:EyeAngles() )
	local AimRate = 160
	
	local Angles = vehicle:WorldToLocalAngles( Aimang ) - Angle(0,-90,0)
	
	vehicle.sm_pp_yaw = vehicle.sm_pp_yaw and math.ApproachAngle( vehicle.sm_pp_yaw, Angles.y, AimRate * FrameTime() ) or 0
	vehicle.sm_pp_pitch = vehicle.sm_pp_pitch and math.ApproachAngle( vehicle.sm_pp_pitch, Angles.p, AimRate * FrameTime() ) or 0
	
	local TargetAng = Angle(vehicle.sm_pp_pitch,vehicle.sm_pp_yaw,0)
	
	vehicle:SetPoseParameter("turret_yaw", TargetAng.y )
	vehicle:SetPoseParameter("spin_cannon", -TargetAng.p )
end

function simfphys.weapon:Think( vehicle )
	if not istable(vehicle.PassengerSeats) or not istable(vehicle.pSeat) then return end
	local pod = vehicle.pSeat[3]
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
	
	ParticleEffectAttach( "astw2_halo_3_muzzle_plasma_turret", PATTACH_POINT_FOLLOW, vehicle, 6 )
	
	mg_fire( ply, vehicle, shootOrigin, shootDirection )
	
	self:SetNextPrimaryFire( vehicle, CurTime() + 0.1 )
end

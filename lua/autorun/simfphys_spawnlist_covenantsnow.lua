local V = {
	Name = "Wraith",
	Model = "models/snowysnowtime/vehicles/halo3/sf/Wraith.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Covenant Edition",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 10000,
		AirFriction = 5,
		Inertia = Vector(10000,80000,100000),
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
				ent.OnTakeDamage = HALO.TankTakeDamage
			end,
		ApplyDamage = function( ent, damage, type ) 
			simfphys.TankApplyDamage(ent, damage, type)
		end,

		MaxHealth = 10000,
		StrengthenSuspension = false,
		
		IsArmored = true,
		
		NoWheelGibs = true,
		
		FirstPersonViewPos = Vector(0,-50,15),
		
		FrontWheelRadius = 45,
		RearWheelRadius = 45,
		SteerRear = true,
		
		EnginePos = Vector(-79.66,0,72.21),
		
		CustomWheels = true,
		CustomSuspensionTravel = 10,
		
		CustomWheelModel = "models/props_c17/canisterchunk01g.mdl",
		
		CustomWheelPosFL = Vector(0,104,18),
		CustomWheelPosFR = Vector(0,-104,18),
		CustomWheelPosML = Vector(-50,0,18),
		CustomWheelPosRL = Vector(-121,70,18),
		CustomWheelPosRR = Vector(-121,-70,18),
		CustomWheelAngleOffset = Angle(0,0,0),
		
		CustomMassCenter = Vector(0,0,0),
		
		CustomSteerAngle = 80,
		
		SeatOffset = Vector(0,-17,63),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ModelInfo = {
			WheelColor = Color(0,0,0,0),
		},
			
		ExhaustPositions = {
			{
				pos = Vector(-159.8,27.694,28.142),
				ang = Angle(-90,0,0)
			},
			
			{
				pos = Vector(-159.8,-27.694,28.142),
				ang = Angle(-90,0,0)
			},
		},

		
		PassengerSeats = {
			{
				pos = Vector(-18,0,80),
				ang = Angle(0,-90,0)
			},
		},
		
		FrontHeight = 10,
		FrontConstant = 50000,
		FrontDamping = 5000,
		FrontRelativeDamping = 6000,
		
		RearHeight = 10,
		RearConstant = 50000,
		RearDamping = 5000,
		RearRelativeDamping = 6000,
		
		FastSteeringAngle = 14,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 12,
		
		MaxGrip = 1500,
		Efficiency = 1,
		GripOffset = -300,
		BrakePower = 150,
		BulletProofTires = true,
		
		IdleRPM = 600,
		LimitRPM = 6250,
		PeakTorque = 560,
		PowerbandStart = 600,
		PowerbandEnd = 6000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-111.88,-0.14,59.15),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 160,
		
		PowerBias = -0.5,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h3/wraith/wraith_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/h3/wraith/wraith_engl.wav",
		Sound_MidPitch = 0.7,
		Sound_MidVolume = 3,
		Sound_MidFadeOutRPMpercent = 64,
		Sound_MidFadeOutRate = 0.4,
		
		Sound_High = "vehicles/h3/wraith/wraith_engr.wav",
		Sound_HighPitch = 0.8,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 50,
		Sound_HighFadeInRate = 0.25,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.15,
		Gears = {-0.12,0,0.12}
	}
}
list.Set( "simfphys_vehicles", "simfphys_covwraithsnow", V )

local V = {
	Name = "Ghost",
	Model = "models/snowysnowtime/vehicles/halo3/sf/ghost.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Covenant Edition",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1000,
		AirFriction = -10000000,
		SeatAnim = "drive_airboat", -- overwrite passenger seat animation
		
		PassengerSeats = {
			{
				pos = Vector(-30,0,20),
				ang = Angle(0,90,0)
			},
		},

		MaxHealth = 2000,
		StrengthenSuspension = false,
		
		IsArmored = true,
		
		NoWheelGibs = true,
		
		FirstPersonViewPos = Vector(0,-110,0),
		
		FrontWheelRadius = 30,
		RearWheelRadius = 30,
		SteerRear = false,
		
		EnginePos = Vector(-79.66,0,72.21),
		
		CustomWheels = true,
		CustomSuspensionTravel = 15,
		
		CustomWheelModel = "models/hunter/plates/plate.mdl",
		
		CustomWheelPosFL = Vector(65,45,-16),
		CustomWheelPosFR = Vector(65,-45,-16),
		CustomWheelPosRL = Vector(30,0,-16),
		CustomWheelPosRR = Vector(-45,0,-16),
		CustomWheelAngleOffset = Angle(0,0,0),
		
		CustomMassCenter = Vector(20,0,0),
		
		CustomSteerAngle = 15,
		
		SeatOffset = Vector(-10,0,30),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ModelInfo = {
			WheelColor = Color(0,0,0,0),
		},
		
		FrontHeight = 0,
		FrontConstant = 5000,
		FrontDamping = 600,
		FrontRelativeDamping = 6000,
		
		RearHeight = 0,
		RearConstant = 5000,
		RearDamping = 600,
		RearRelativeDamping = 6000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 3000,
		
		TurnSpeed = 6,
		
		MaxGrip = 100,
		Efficiency = 1.5,
		GripOffset = 0,
		BrakePower = 70,
		BulletProofTires = true,
		
		IdleRPM = 600,
		LimitRPM = 6250,
		PeakTorque = 180,
		PowerbandStart = 600,
		PowerbandEnd = 6250,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-111.88,-0.14,59.15),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 160,
		
		PowerBias = 0.25,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h3/ghost/ghost_left/track1/loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/h3/ghost/ghost_right/track1/loop.wav",
		Sound_MidPitch = 0.5,
		Sound_MidVolume = 3,
		Sound_MidFadeOutRPMpercent = 0,
		Sound_MidFadeOutRate = 0,
		
		Sound_High = "vehicles/h3/ghost/ghost_left/track1/loop1.wav",
		Sound_HighPitch = 1.4,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 1,
		Sound_HighFadeInRate = 0.1,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.18,
		Gears = {-0.2,0,0.4}
	}
}
list.Set( "simfphys_vehicles", "simfphys_covghostsnow", V )

local V = {
	Name = "Spectre",
	Model = "models/snowysnowtime/vehicles/halo2/spectre.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Covenant Edition",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1000,
		AirFriction = -500000000,
		SeatAnim = "drive_airboat", -- overwrite passenger seat animation
		
		PassengerSeats = {
			{
				pos = Vector(-30,35,30),
				ang = Angle(0,-70,0)
			},
			{
				pos = Vector(-30,-35,30),
				ang = Angle(0,-110,0)
			},
			{
				pos = Vector(-90,0,35),
				ang = Angle(0,-90,0),
				anim = "pose_standing_04" -- overwrite passenger seat animation
			},
		},

		MaxHealth = 2000,
		StrengthenSuspension = true,
		
		IsArmored = true,
		
		NoWheelGibs = true,
		
		FrontWheelRadius = 27,
		RearWheelRadius = 25,
		SteerRear = true,
		
		EnginePos = Vector(-79.66,0,72.21),
		
		CustomMassCenter = Vector(10,0,0),
		
		CustomSteerAngle = 10,
		
		SeatOffset = Vector(-20.5,0,65),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ModelInfo = {
			WheelColor = Color(0,0,0,0),
		},
		
		FrontHeight = 0,
		FrontConstant = 5000,
		FrontDamping = 200,
		FrontRelativeDamping = 6000,
		
		RearHeight = 0,
		RearConstant = 5000,
		RearDamping = 200,
		RearRelativeDamping = 6000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 3000,
		
		TurnSpeed = 6,
		
		MaxGrip = 100,
		Efficiency = 1.5,
		GripOffset = 0,
		BrakePower = 70,
		BulletProofTires = true,
		
		IdleRPM = 600,
		LimitRPM = 6250,
		PeakTorque = 200,
		PowerbandStart = 600,
		PowerbandEnd = 6250,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-111.88,-0.14,59.15),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 160,
		
		PowerBias = -0.5,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h2/spectre/sp_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/h2/spectre/sp_low.wav",
		Sound_MidPitch = 0.5,
		Sound_MidVolume = 3,
		Sound_MidFadeOutRPMpercent = 0,
		Sound_MidFadeOutRate = 0,
		
		Sound_High = "vehicles/h2/spectre/sp_hi.wav",
		Sound_HighPitch = 1.25,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 1,
		Sound_HighFadeInRate = 0.1,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.25,
		Gears = {-0.12,0,0.3}
	}
}
list.Set( "simfphys_vehicles", "simfphys_covspectresnow", V )

local V = {
	Name = "H2A Spectre",
	Model = "models/snowysnowtime/vehicles/halo2a/spectre.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Covenant Edition",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1000,
		AirFriction = -500000000,
		SeatAnim = "drive_airboat", -- overwrite passenger seat animation
		LightsTable = "warthogh2aspectre",
		
		PassengerSeats = {
			{
				pos = Vector(-50,30,40),
				ang = Angle(0,140,0)
			},
			{
				pos = Vector(50,30,40),
				ang = Angle(0,-140,0)
			},
			{
				pos = Vector(0,127,55),
				ang = Angle(0,180,0),
				anim = "pose_standing_04" -- overwrite passenger seat animation
			},
		},

		MaxHealth = 2000,
		StrengthenSuspension = false,
		
		IsArmored = true,
		
		NoWheelGibs = true,
		
		FrontWheelRadius = 27,
		RearWheelRadius = 25,
		SteerRear = false,
		
		EnginePos = Vector(-79.66,0,72.21),
		
		CustomMassCenter = Vector(10,0,0),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-36.5,0,79),
		SeatPitch = 0,
		SeatYaw = 180,
		
		ModelInfo = {
			WheelColor = Color(0,0,0,0),
		},
		
		FrontHeight = 5,
		FrontConstant = 50000,
		FrontDamping = 1800,
		FrontRelativeDamping = 6000,
		
		RearHeight = 8,
		RearConstant = 50000,
		RearDamping = 1800,
		RearRelativeDamping = 6000,
		
		FastSteeringAngle = 3,
		SteeringFadeFastSpeed = 1000,
		
		TurnSpeed = 6,
		
		MaxGrip = 100,
		Efficiency = 1.5,
		GripOffset = 0,
		BrakePower = 70,
		BulletProofTires = true,
		
		IdleRPM = 600,
		LimitRPM = 6250,
		PeakTorque = 200,
		PowerbandStart = 600,
		PowerbandEnd = 6250,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-111.88,-0.14,59.15),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 160,
		
		PowerBias = -0.5,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h2/spectre/sp_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/h2/spectre/sp_low.wav",
		Sound_MidPitch = 0.5,
		Sound_MidVolume = 3,
		Sound_MidFadeOutRPMpercent = 0,
		Sound_MidFadeOutRate = 0,
		
		Sound_High = "vehicles/h2/spectre/sp_hi.wav",
		Sound_HighPitch = 1.25,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 1,
		Sound_HighFadeInRate = 0.1,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.25,
		Gears = {-0.12,0,0.3}
	}
}
list.Set( "simfphys_vehicles", "simfphys_covh2aspectresnow", V )

local V = {
	Name = "H2A Spectre (Civ)",
	Model = "models/snowysnowtime/vehicles/halo2a/spectre_civ.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Covenant Edition",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1000,
		AirFriction = -500000000,
		SeatAnim = "drive_airboat", -- overwrite passenger seat animation
		LightsTable = "warthogh2aspectre",
		
		PassengerSeats = {
			{
				pos = Vector(-50,30,40),
				ang = Angle(0,140,0)
			},
			{
				pos = Vector(50,30,40),
				ang = Angle(0,-140,0)
			},
			{
				pos = Vector(35,143,60),
				ang = Angle(0,-50,0),
			},
			{
				pos = Vector(-35,143,60),
				ang = Angle(0,50,0),
			},
			{
				pos = Vector(0,143,55),
				ang = Angle(0,0,0),
			},
		},

		MaxHealth = 2000,
		StrengthenSuspension = false,
		
		IsArmored = true,
		
		NoWheelGibs = true,
		
		FrontWheelRadius = 27,
		RearWheelRadius = 25,
		SteerRear = false,
		
		EnginePos = Vector(-79.66,0,72.21),
		
		CustomMassCenter = Vector(10,0,0),
		
		CustomSteerAngle = 20,
		
		SeatOffset = Vector(-36.5,0,79),
		SeatPitch = 0,
		SeatYaw = 180,
		
		ModelInfo = {
			WheelColor = Color(0,0,0,0),
		},
		
		FrontHeight = 5,
		FrontConstant = 50000,
		FrontDamping = 1800,
		FrontRelativeDamping = 6000,
		
		RearHeight = 8,
		RearConstant = 50000,
		RearDamping = 1800,
		RearRelativeDamping = 6000,
		
		FastSteeringAngle = 3,
		SteeringFadeFastSpeed = 850,
		
		TurnSpeed = 6,
		
		MaxGrip = 100,
		Efficiency = 1.5,
		GripOffset = 0,
		BrakePower = 70,
		BulletProofTires = true,
		
		IdleRPM = 600,
		LimitRPM = 6250,
		PeakTorque = 200,
		PowerbandStart = 600,
		PowerbandEnd = 6250,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-111.88,-0.14,59.15),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 160,
		
		PowerBias = -0.5,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h2/spectre/sp_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/h2/spectre/sp_low.wav",
		Sound_MidPitch = 0.5,
		Sound_MidVolume = 3,
		Sound_MidFadeOutRPMpercent = 0,
		Sound_MidFadeOutRate = 0,
		
		Sound_High = "vehicles/h2/spectre/sp_hi.wav",
		Sound_HighPitch = 1.25,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 1,
		Sound_HighFadeInRate = 0.1,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.25,
		Gears = {-0.12,0,0.3}
	}
}
list.Set( "simfphys_vehicles", "simfphys_covh2aspectrecivsnow", V )

local V = {
	Name = "T-29 ASG (Shade)",
	Model = "models/snowysnowtime/vehicles/c_gun_turret.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Covenant Edition",
	SpawnAngleOffset = 0,

	Members = {
		Mass = 50000,
		FrontWheelMass = 50,
		RearWheelMass = 50,
		LightsTable = "shade",
		SeatAnim = "drive_airboat", -- overwrite passenger seat animation
		
       OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
				ent:EmitSound( "shade_idle" )
				ent:EmitSound( "shade_idle2" )
		end,
		
		OnDelete =
			function(ent) 
				ent:StopSound( "shade_idle" )
				ent:StopSound( "shade_idle2" )
		end,
		
		OnDestroyed =
			function(ent) 
				ent:StopSound( "shade_idle" )
				ent:StopSound( "shade_idle2" )
		end,
		
		MaxHealth = 64000,    -- overrides max health
		
		CustomWheels = true,       	 -- You have to set this to "true" in order to define custom wheels
		CustomSuspensionTravel = 0,	--suspension travel limiter length
		
		
		CustomWheelModel = "models/hunter/plates/plate.mdl",	-- since we create our own wheels we have to define a model. It has to have a collission model
		--CustomWheelModel_R = "",			-- different model for rear wheels?
		
		CustomWheelPosFL = Vector(0,0,60),		-- set the position of the front left wheel. 
		CustomWheelPosFR = Vector(0,0,60),		-- position front right wheel
		CustomWheelPosRL = Vector(0,0,60),		-- rear left
		CustomWheelPosRR = Vector(0,0,60),		-- rear right		NOTE: make sure the position actually matches the name. So FL is actually at the Front Left ,  FR Front Right, ...   if you do this wrong the wheels will spin in the wrong direction or the car will drive sideways/reverse
		CustomWheelAngleOffset = Angle(90,0,0),
		
		FrontWheelRadius = 1,
		RearWheelRadius = 1,
		StrengthenSuspension = true,
		
		
		CustomMassCenter = Vector(0,5,0),		-- custom masscenter offset. The script creates a counter weight to make the masscenter exactly in the center of the wheels. However you can add an offset to this to create more body roll if you really have to...
		
		CustomSteerAngle = 35,				-- max clamped steering angle,
		
		SeatOffset = Vector(0,0,80),
		SeatPitch = 0,
		SeatYaw = 90,
		
		-- everything below this comment is exactly the same as for normal vehicles. For more info take a look in simfphys_spawnlist.lua
		

		
		FrontHeight = 7,			-- you need to finetune this versus CustomWheelPos so the wheels wont end up in space if the suspension gets lowered using C => Edit Properties  
		FrontConstant = 12000,
		FrontDamping = 400,
		FrontRelativeDamping = 50,
		
		RearHeight = 7,
		RearConstant = 12000,
		RearDamping = 400,
		RearRelativeDamping = 50,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 120,
		
		TurnSpeed = 8,
		
		MaxGrip = 20,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 5,
		BulletProofTires = true,
		
		IdleRPM = 0,
		LimitRPM = 0,
		PeakTorque = 0,
		PowerbandStart = 0,
		PowerbandEnd = 0,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "",
		Sound_IdlePitch = 0,
		
		Sound_Mid = "vehicles/apc/apc_idle1.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 100,
		Sound_MidFadeOutRate = 1,
		
		Sound_High = "",
		
		Sound_Throttle = "",
		
		snd_horn = "simulated_vehicles/horn_0.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.1,0,0.1}
	}
}
list.Set( "simfphys_vehicles", "simfphys_covceshadesnow", V )

local V = {
	Name = "T-25 ASG (Shade)",
	Model = "models/snowysnowtime/hawk/h2a/shade_turret.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Covenant Edition",
	SpawnAngleOffset = 0,

	Members = {
		Mass = 50000,
		FrontWheelMass = 50,
		RearWheelMass = 50,
		LightsTable = "shade",
		SeatAnim = "drive_airboat", -- overwrite passenger seat animation
		
       OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true )
		end,
		
		MaxHealth = 64000,    -- overrides max health
		
		CustomWheels = true,       	 -- You have to set this to "true" in order to define custom wheels
		CustomSuspensionTravel = 0,	--suspension travel limiter length
		
		
		CustomWheelModel = "models/hunter/plates/plate.mdl",	-- since we create our own wheels we have to define a model. It has to have a collission model
		--CustomWheelModel_R = "",			-- different model for rear wheels?
		
		CustomWheelPosFL = Vector(0,0,6),		-- set the position of the front left wheel. 
		CustomWheelPosFR = Vector(0,0,6),		-- position front right wheel
		CustomWheelPosRL = Vector(0,0,6),		-- rear left
		CustomWheelPosRR = Vector(0,0,6),		-- rear right		NOTE: make sure the position actually matches the name. So FL is actually at the Front Left ,  FR Front Right, ...   if you do this wrong the wheels will spin in the wrong direction or the car will drive sideways/reverse
		CustomWheelAngleOffset = Angle(90,0,0),
		
		FrontWheelRadius = 1,
		RearWheelRadius = 1,
		StrengthenSuspension = true,
		
		
		CustomMassCenter = Vector(0,5,0),		-- custom masscenter offset. The script creates a counter weight to make the masscenter exactly in the center of the wheels. However you can add an offset to this to create more body roll if you really have to...
		
		CustomSteerAngle = 35,				-- max clamped steering angle,
		
		SeatOffset = Vector(-50,0,62),
		SeatPitch = 25,
		SeatYaw = 0,
		
		-- everything below this comment is exactly the same as for normal vehicles. For more info take a look in simfphys_spawnlist.lua
		

		
		FrontHeight = 7,			-- you need to finetune this versus CustomWheelPos so the wheels wont end up in space if the suspension gets lowered using C => Edit Properties  
		FrontConstant = 12000,
		FrontDamping = 400,
		FrontRelativeDamping = 50,
		
		RearHeight = 7,
		RearConstant = 12000,
		RearDamping = 400,
		RearRelativeDamping = 50,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 120,
		
		TurnSpeed = 8,
		
		MaxGrip = 20,
		Efficiency = 1,
		GripOffset = 0,
		BrakePower = 5,
		BulletProofTires = true,
		
		IdleRPM = 0,
		LimitRPM = 0,
		PeakTorque = 0,
		PowerbandStart = 0,
		PowerbandEnd = 0,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		PowerBias = 0,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "",
		Sound_IdlePitch = 0,
		
		Sound_Mid = "vehicles/apc/apc_idle1.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 100,
		Sound_MidFadeOutRate = 1,
		
		Sound_High = "",
		
		Sound_Throttle = "",
		
		snd_horn = "simulated_vehicles/horn_0.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.1,0,0.1}
	}
}
list.Set( "simfphys_vehicles", "simfphys_covh2ashadesnow", V )

local V = {
	Name = "Shadow (Regular)",
	Model = "models/snowysnowtime/vehicles/halo2a/shadow.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Covenant Edition",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 7000,
		AirFriction = 0.5,
		SeatAnim = "drive_airboat", -- overwrite passenger seat animation
		LightsTable = "warthogh2ashadow",
		
		PassengerSeats = {
			{
				pos = Vector(73,0,145),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(42.5,30,10),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-5,30,10),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-51.5,30,10),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(42.5,-30,10),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(-5,-30,10),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(-51.5,-30,10),
				ang = Angle(0,180,0)
			},
		},

		MaxHealth = 12000,
		StrengthenSuspension = false,
		
		IsArmored = true,
		
		NoWheelGibs = true,
		
		FirstPersonViewPos = Vector(0,-110,0),
		
		FrontWheelRadius = 35,
		RearWheelRadius = 35,
		SteerRear = false,
		
		EnginePos = Vector(-79.66,0,72.21),
		
		CustomWheels = true,
		CustomSuspensionTravel = 15,
		
		CustomWheelModel = "models/props_c17/canisterchunk01g.mdl",
		
		CustomWheelPosFL = Vector(135,90,0),
		CustomWheelPosFR = Vector(135,-90,0),
		CustomWheelPosRL = Vector(-135,90,0),
		CustomWheelPosRR = Vector(-135,-90,0),
		CustomWheelAngleOffset = Angle(0,0,0),
		
		CustomMassCenter = Vector(10,0,0),
		
		CustomSteerAngle = 24,
		
		SeatOffset = Vector(150,0,80),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ModelInfo = {
			WheelColor = Color(0,0,0,0),
		},
		
		FrontHeight = 0,
		FrontConstant = 15000,
		FrontDamping = 6000,
		FrontRelativeDamping = 6000,
		
		RearHeight = 0,
		RearConstant = 15000,
		RearDamping = 6000,
		RearRelativeDamping = 6000,
		
		FastSteeringAngle = 4,
		SteeringFadeFastSpeed = 3000,
		
		TurnSpeed = 6,
		
		MaxGrip = 250,
		Efficiency = 1.75,
		GripOffset = 0,
		BrakePower = 70,
		BulletProofTires = true,
		
		IdleRPM = 600,
		LimitRPM = 4200,
		PeakTorque = 180,
		PowerbandStart = 600,
		PowerbandEnd = 4000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-111.88,-0.14,59.15),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 160,
		
		PowerBias = -0.5,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h2/creep/creep_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/h2/creep/creep_mid.wav",
		Sound_MidPitch = 0.4,
		Sound_MidVolume = 3,
		Sound_MidFadeOutRPMpercent = 0,
		Sound_MidFadeOutRate = 0,
		
		Sound_High = "vehicles/h2/creep/creep_hi.wav",
		Sound_HighPitch = 1.4,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 1,
		Sound_HighFadeInRate = 0.1,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.15,
		Gears = {-0.2,0,0.4}
	}
}
list.Set( "simfphys_vehicles", "simfphys_covshadowsnow", V )

local V = {
	Name = "Shadow (Empty)",
	Model = "models/snowysnowtime/vehicles/halo2a/shadow_notransport.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Covenant Edition",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 7000,
		AirFriction = 0.5,
		SeatAnim = "drive_airboat", -- overwrite passenger seat animation
		
		PassengerSeats = {
			{
				pos = Vector(73,0,145),
				ang = Angle(0,-90,0)
			},
		},

		MaxHealth = 12000,
		StrengthenSuspension = false,
		
		IsArmored = true,
		
		NoWheelGibs = true,
		
		FirstPersonViewPos = Vector(0,-110,0),
		
		FrontWheelRadius = 35,
		RearWheelRadius = 35,
		SteerRear = false,
		
		EnginePos = Vector(-79.66,0,72.21),
		
		CustomWheels = true,
		CustomSuspensionTravel = 15,
		
		CustomWheelModel = "models/props_c17/canisterchunk01g.mdl",
		
		CustomWheelPosFL = Vector(135,90,0),
		CustomWheelPosFR = Vector(135,-90,0),
		CustomWheelPosRL = Vector(-135,90,0),
		CustomWheelPosRR = Vector(-135,-90,0),
		CustomWheelAngleOffset = Angle(0,0,0),
		
		CustomMassCenter = Vector(10,0,0),
		
		CustomSteerAngle = 24,
		
		SeatOffset = Vector(150,0,80),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ModelInfo = {
			WheelColor = Color(0,0,0,0),
		},
		
		FrontHeight = 0,
		FrontConstant = 15000,
		FrontDamping = 6000,
		FrontRelativeDamping = 6000,
		
		RearHeight = 0,
		RearConstant = 15000,
		RearDamping = 6000,
		RearRelativeDamping = 6000,
		
		FastSteeringAngle = 4,
		SteeringFadeFastSpeed = 3000,
		
		TurnSpeed = 6,
		
		MaxGrip = 250,
		Efficiency = 1.75,
		GripOffset = 0,
		BrakePower = 70,
		BulletProofTires = true,
		
		IdleRPM = 600,
		LimitRPM = 4200,
		PeakTorque = 180,
		PowerbandStart = 600,
		PowerbandEnd = 4000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-111.88,-0.14,59.15),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 160,
		
		PowerBias = -0.5,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h2/creep/creep_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/h2/creep/creep_mid.wav",
		Sound_MidPitch = 0.4,
		Sound_MidVolume = 3,
		Sound_MidFadeOutRPMpercent = 0,
		Sound_MidFadeOutRate = 0,
		
		Sound_High = "vehicles/h2/creep/creep_hi.wav",
		Sound_HighPitch = 1.4,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 1,
		Sound_HighFadeInRate = 0.1,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.15,
		Gears = {-0.2,0,0.4}
	}
}
list.Set( "simfphys_vehicles", "simfphys_covshadowemptysnow", V )

local V = {
	Name = "Shadow (Troop)",
	Model = "models/snowysnowtime/vehicles/halo2a/shadow_troop.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Covenant Edition",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 7000,
		AirFriction = 0.5,
		SeatAnim = "drive_airboat", -- overwrite passenger seat animation
		
		PassengerSeats = {
			{
				pos = Vector(42.5,30,10),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-5,30,10),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-51.5,30,10),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(42.5,-30,10),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(-5,-30,10),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(-51.5,-30,10),
				ang = Angle(0,180,0)
			},
		},

		MaxHealth = 12000,
		StrengthenSuspension = false,
		
		IsArmored = true,
		
		NoWheelGibs = true,
		
		FirstPersonViewPos = Vector(0,-110,0),
		
		FrontWheelRadius = 35,
		RearWheelRadius = 35,
		SteerRear = false,
		
		EnginePos = Vector(-79.66,0,72.21),
		
		CustomWheels = true,
		CustomSuspensionTravel = 15,
		
		CustomWheelModel = "models/props_c17/canisterchunk01g.mdl",
		
		CustomWheelPosFL = Vector(135,90,0),
		CustomWheelPosFR = Vector(135,-90,0),
		CustomWheelPosRL = Vector(-135,90,0),
		CustomWheelPosRR = Vector(-135,-90,0),
		CustomWheelAngleOffset = Angle(0,0,0),
		
		CustomMassCenter = Vector(10,0,0),
		
		CustomSteerAngle = 24,
		
		SeatOffset = Vector(150,0,80),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ModelInfo = {
			WheelColor = Color(0,0,0,0),
		},
		
		FrontHeight = 0,
		FrontConstant = 15000,
		FrontDamping = 6000,
		FrontRelativeDamping = 6000,
		
		RearHeight = 0,
		RearConstant = 15000,
		RearDamping = 6000,
		RearRelativeDamping = 6000,
		
		FastSteeringAngle = 4,
		SteeringFadeFastSpeed = 3000,
		
		TurnSpeed = 6,
		
		MaxGrip = 250,
		Efficiency = 1.75,
		GripOffset = 0,
		BrakePower = 70,
		BulletProofTires = true,
		
		IdleRPM = 600,
		LimitRPM = 4200,
		PeakTorque = 180,
		PowerbandStart = 600,
		PowerbandEnd = 4000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-111.88,-0.14,59.15),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 160,
		
		PowerBias = -0.5,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h2/creep/creep_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/h2/creep/creep_mid.wav",
		Sound_MidPitch = 0.4,
		Sound_MidVolume = 3,
		Sound_MidFadeOutRPMpercent = 0,
		Sound_MidFadeOutRate = 0,
		
		Sound_High = "vehicles/h2/creep/creep_hi.wav",
		Sound_HighPitch = 1.4,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 1,
		Sound_HighFadeInRate = 0.1,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.15,
		Gears = {-0.2,0,0.4}
	}
}
list.Set( "simfphys_vehicles", "simfphys_covshadowtroopsnow", V )

local V = {
	Name = "Shadow (Cargo)",
	Model = "models/snowysnowtime/vehicles/halo2a/shadow_cargo.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Covenant Edition",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 7000,
		AirFriction = 0.5,
		SeatAnim = "drive_airboat", -- overwrite passenger seat animation
		
		PassengerSeats = {
			{
				pos = Vector(73,0,145),
				ang = Angle(0,-90,0)
			},
		},

		MaxHealth = 16200,
		StrengthenSuspension = false,
		
		IsArmored = true,
		
		NoWheelGibs = true,
		
		FirstPersonViewPos = Vector(0,-110,0),
		
		FrontWheelRadius = 35,
		RearWheelRadius = 35,
		SteerRear = false,
		
		EnginePos = Vector(-79.66,0,72.21),
		
		CustomWheels = true,
		CustomSuspensionTravel = 15,
		
		CustomWheelModel = "models/props_c17/canisterchunk01g.mdl",
		
		CustomWheelPosFL = Vector(135,90,0),
		CustomWheelPosFR = Vector(135,-90,0),
		CustomWheelPosRL = Vector(-135,90,0),
		CustomWheelPosRR = Vector(-135,-90,0),
		CustomWheelAngleOffset = Angle(0,0,0),
		
		CustomMassCenter = Vector(10,0,0),
		
		CustomSteerAngle = 24,
		
		SeatOffset = Vector(150,0,80),
		SeatPitch = 0,
		SeatYaw = 90,
		
		ModelInfo = {
			WheelColor = Color(0,0,0,0),
		},
		
		FrontHeight = 0,
		FrontConstant = 15000,
		FrontDamping = 6000,
		FrontRelativeDamping = 6000,
		
		RearHeight = 0,
		RearConstant = 15000,
		RearDamping = 6000,
		RearRelativeDamping = 6000,
		
		FastSteeringAngle = 4,
		SteeringFadeFastSpeed = 3000,
		
		TurnSpeed = 6,
		
		MaxGrip = 250,
		Efficiency = 1.75,
		GripOffset = 0,
		BrakePower = 70,
		BulletProofTires = true,
		
		IdleRPM = 600,
		LimitRPM = 4200,
		PeakTorque = 180,
		PowerbandStart = 600,
		PowerbandEnd = 4000,
		Turbocharged = false,
		Supercharged = false,
		DoNotStall = true,
		
		FuelFillPos = Vector(-111.88,-0.14,59.15),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 160,
		
		PowerBias = -0.5,
		
		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h2/creep/creep_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/h2/creep/creep_mid.wav",
		Sound_MidPitch = 0.4,
		Sound_MidVolume = 3,
		Sound_MidFadeOutRPMpercent = 0,
		Sound_MidFadeOutRate = 0,
		
		Sound_High = "vehicles/h2/creep/creep_hi.wav",
		Sound_HighPitch = 1.4,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 1,
		Sound_HighFadeInRate = 0.1,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.15,
		Gears = {-0.2,0,0.4}
	}
}
list.Set( "simfphys_vehicles", "simfphys_covshadowghostsnow", V )
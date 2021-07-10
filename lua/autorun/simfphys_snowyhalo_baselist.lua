-- I mostly made this as an example of how I set up my vehicles. They all start from the bottom - the warthog.
-- Adorabirb sent me the H2A Civilian Warthog, so I wanted to port it. I had no where else to put it, so...
-- The vehicle code below is for all of my H2+ Vehicles, they all use the same drivetrain, and similar sounds.
-- I split the funny songs from the normal ones just so servers who actually use my vehicles can provide these
-- to their players without having to deal with the earrape songs.
-- > Snowy Snowtime

local V = {
	Name = "AMG M12S Warthog CST",
	Model = "models/snowysnowtime/vehicles/h2a/civhog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo CE+ Project Examples",

	Members = {
		Mass = 1200,
		LightsTable = "warthogh2a_serious",
		
		OnSpawn = function(ent) 
			ent:SetColor(Color(255, 114, 10, 255))
			ent:SetNWBool( "simfphys_NoRacingHud", true )
			ent:SetNWBool( "simfphys_NoHud", true ) 
        end,
		PassengerSeats = {
			{
				pos = Vector(-10,-19,28.25),
				ang = Angle(0,-90,0)
			},		
		},
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 4000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-13.67,-19.58,63),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 19.5,
		RearWheelRadius = 19.5,
		FrontHeight = 10,
		FrontConstant = 17000,
		FrontDamping = 800,
		FrontRelativeDamping = 2000,
		
		RearHeight = 10,
		RearConstant = 16000,
		RearDamping = 800,
		RearRelativeDamping = 2000,
		
		FastSteeringAngle = 16,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 38,
		Efficiency = 1.45,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 400,
		LimitRPM = 5550,
		PeakTorque = 115,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = true,
		Supercharged	 = true,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h3/wh/wh_idle.wav",
		Sound_IdlePitch = 1.1,
		Sound_IdleVolume = 1,
		
		Sound_Mid = "vehicles/warthog/mid.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 3,
		Sound_MidFadeOutRPMpercent = 70,
		Sound_MidFadeOutRate = 0.2,
		
		Sound_High = "vehicles/h3/wh/wh_hi.wav",
		Sound_HighPitch = 0.8,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 70,
		Sound_HighFadeInRate = 0.2,
		
		Sound_Throttle = "simulated_vehicles/shelby/shelby_mid.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 2,
		
		snd_horn = "vehicles/warthog/horn.wav",
		snd_bloweron = "vehicles/bank_031/sound_001.wav",
		snd_bloweroff = "vehicles/bank_031/sound_001.wav",
		snd_spool = "vehicles/h3/sc/sc_mid.wav",
		
		DifferentialGear = 0.1635,
		Gears = {-0.2,0,0.2,0.4,0.6,0.8,1,1.2}
	}
}
list.Set( "simfphys_vehicles", "simfphys_h2awarthogcivilsnow", V )

local V = {
	Name = "AMG Funny Warthog CST",
	Model = "models/snowysnowtime/vehicles/h2a/civhog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo CE+ Project Examples",

	Members = {
		Mass = 1200,
		LightsTable = "warthogh2a",
		
		OnSpawn = function(ent) 
			ent:SetColor(Color(255, 114, 10, 255))
			ent:SetNWBool( "simfphys_NoRacingHud", true )
			ent:SetNWBool( "simfphys_NoHud", true ) 
        end,
		PassengerSeats = {
			{
				pos = Vector(-10,-19,28.25),
				ang = Angle(0,-90,0)
			},		
		},
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 4000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-13.67,-19.58,63),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 19.5,
		RearWheelRadius = 19.5,
		FrontHeight = 10,
		FrontConstant = 17000,
		FrontDamping = 800,
		FrontRelativeDamping = 2000,
		
		RearHeight = 10,
		RearConstant = 16000,
		RearDamping = 800,
		RearRelativeDamping = 2000,
		
		FastSteeringAngle = 16,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 38,
		Efficiency = 1.45,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 400,
		LimitRPM = 5550,
		PeakTorque = 115,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = true,
		Supercharged	 = true,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h3/wh/wh_idle.wav",
		Sound_IdlePitch = 1.1,
		Sound_IdleVolume = 1,
		
		Sound_Mid = "vehicles/warthog/mid.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 3,
		Sound_MidFadeOutRPMpercent = 70,
		Sound_MidFadeOutRate = 0.2,
		
		Sound_High = "vehicles/h3/wh/wh_hi.wav",
		Sound_HighPitch = 0.8,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 70,
		Sound_HighFadeInRate = 0.2,
		
		Sound_Throttle = "simulated_vehicles/shelby/shelby_mid.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 2,
		
		snd_horn = "vehicles/warthog/horn.wav",
		snd_bloweron = "vehicles/bank_031/sound_001.wav",
		snd_bloweroff = "vehicles/bank_031/sound_001.wav",
		snd_spool = "vehicles/h3/sc/sc_mid.wav",
		
		DifferentialGear = 0.1635,
		Gears = {-0.2,0,0.2,0.4,0.6,0.8,1,1.2}
	}
}
list.Set( "simfphys_vehicles", "simfphys_h2awarthogcivilsnow_funny", V )

local V = {
	Name = "Civilian Hatchback",
	Model = "models/snowysnowtime/vehicles/h2a/civ.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo CE+ Project Examples",

	Members = {
		Mass = 2100,
		LightsTable = "snowciv2a_serious",
		
		OnSpawn = function(ent) 
			ent:SetNWBool( "simfphys_NoRacingHud", true )
			ent:SetNWBool( "simfphys_NoHud", true ) 
        end,
		PassengerSeats = {
			{
				pos = Vector(-21.7,0,20.25),
				ang = Angle(0,180,0)
			},		
		},
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 4000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(0,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-3.67,-20.75,52.5),
		SeatPitch = 0,
		SeatYaw = 180,
		
		AirFriction = -40000,
		FrontWheelRadius = 18.5,
		RearWheelRadius = 18.5,
		FrontHeight = 5,
		FrontConstant = 50000,
		FrontDamping = 0,
		FrontRelativeDamping = 1000,
		
		RearHeight = 5,
		RearConstant = 50000,
		RearDamping = 0,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 40,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 78,
		Efficiency = 0.95,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 400,
		LimitRPM = 8350,
		PeakTorque = 100,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 9200,
		Turbocharged = true,
		Supercharged	 = true,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 11,
		
		snd_pitch = 1,
		snd_idle = "vehicles/bank_031/sound_002.wav",
		
		snd_low = "vehicles/bank_108/sound_001.wav",
		snd_low_revdown = "vehicles/bank_108/sounds_011.wav",
		snd_low_pitch = 0.7,
		
		snd_mid = "vehicles/bank_108/sound_001.wav",
		snd_mid_gearup = "vehicles/bank_108/sounds_111.wav",
		snd_mid_geardown = "vehicles/bank_108/sounds_111.wav",
		snd_mid_pitch = 0.7,
		
		Sound_Throttle = "vehicles/bank_031/sound_001.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 4,
		
		snd_horn = "vehicles/warthog/horn.wav",
		snd_bloweron = "snow/h2a/sound_002.wav",
		snd_bloweroff = "snow/h2a/sound_002.wav",
		snd_spool = "vehicles/warthog/mid.wav",
		
		DifferentialGear = 0.1635,
		Gears = {-0.2,0,0.25,0.5,0.75,1,1.2}
	}
}
list.Set( "simfphys_vehicles", "simfphys_h2asnowcivhatchback", V )

local V = {
	Name = "Civilian Hatchback Race",
	Model = "models/snowysnowtime/vehicles/h2a/civ.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo CE+ Project Examples",

	Members = {
		Mass = 1200,
		LightsTable = "snowciv2a_serious",
		
		OnSpawn = function(ent) 
			ent:SetNWBool( "simfphys_NoRacingHud", true )
			ent:SetNWBool( "simfphys_NoHud", true ) 
        end,
		PassengerSeats = {
			{
				pos = Vector(-21.7,0,20.25),
				ang = Angle(0,180,0)
			},		
		},
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 4000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(0,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-3.67,-20.75,52.5),
		SeatPitch = 0,
		SeatYaw = 180,
		
		AirFriction = -40000,
		FrontWheelRadius = 18.5,
		RearWheelRadius = 18.5,
		FrontHeight = 5,
		FrontConstant = 24000,
		FrontDamping = 800,
		FrontRelativeDamping = 2000,
		
		RearHeight = 5,
		RearConstant = 24000,
		RearDamping = 800,
		RearRelativeDamping = 2000,
		
		FastSteeringAngle = 40,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 42,
		Efficiency = 1.35,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 400,
		LimitRPM = 9200,
		PeakTorque = 115,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 10000,
		Turbocharged = true,
		Supercharged	 = true,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "snow/h2a/e/sound_002.wav",
		
		snd_low = "snow/h2a/e/sound_011.wav",
		snd_low_revdown = "snow/h2a/e/sound_011.wav",
		snd_low_pitch = 0.8,
		
		snd_mid = "snow/h2a/e/sound_111.wav",
		snd_mid_gearup = "snow/h2a/e/sound_111.wav",
		snd_mid_geardown = "snow/h2a/e/sound_111.wav",
		snd_mid_pitch = 0.8,
		
		Sound_Throttle = "vehicles/bank_031/sound_001.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 4,
		
		snd_horn = "vehicles/warthog/horn.wav",
		snd_bloweron = "snow/h2a/sound_002.wav",
		snd_bloweroff = "snow/h2a/sound_002.wav",
		snd_spool = "vehicles/warthog/mid.wav",
		
		DifferentialGear = 0.1635,
		Gears = {-0.2,0,0.2,0.4,0.6,0.8,1,1.2}
	}
}
list.Set( "simfphys_vehicles", "simfphys_h2asnowcivhatchbackrace", V )

local V = {
	Name = "Tyrant",
	Model = "models/snowysnowtime/vehicles/hr/tyrant.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo CE+ Project Examples",
	SpawnOffset = Vector(0,0,300),
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

		MaxHealth = 120000,
		StrengthenSuspension = false,
		
		IsArmored = true,
		
		NoWheelGibs = true,
		
		FrontWheelRadius = 1,
		RearWheelRadius = 1,
		
		EnginePos = Vector(-79.66,0,72.21),
		
		CustomWheels = true,
		CustomSuspensionTravel = 10,
		
		CustomWheelModel = "models/props_c17/canisterchunk01g.mdl",
		
		CustomWheelPosFL = Vector(0,104,100),
		CustomWheelPosFR = Vector(0,-104,100),
		CustomWheelPosML = Vector(-50,0,100),
		CustomWheelPosRL = Vector(-121,70,100),
		CustomWheelPosRR = Vector(-121,-70,100),
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
		
		Sound_Idle = "common/null.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "common/null.wav",
		Sound_MidPitch = 0.7,
		Sound_MidVolume = 3,
		Sound_MidFadeOutRPMpercent = 64,
		Sound_MidFadeOutRate = 0.4,
		
		Sound_High = "common/null.wav",
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
list.Set( "simfphys_vehicles", "simfphys_hraasnow", V )
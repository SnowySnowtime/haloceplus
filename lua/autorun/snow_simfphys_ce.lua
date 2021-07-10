local Category = "Halo: Combat Evolved"

local V = {
	Name = "M12 LRV (Civilian)",
	Model = "models/snowysnowtime/vehicles/civilhog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,

	Members = {
		Mass = 1200,
		LightsTable = "warthogce",
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-12.67035,-19.58145,69.111),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(0,-19.581,32.25),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-77,0,50),
				ang = Angle(0,90,0)
			}			
},
		FrontHeight = 10,
		FrontConstant = 10000,
		FrontDamping = 800,
		FrontRelativeDamping = 2000,
		
		RearHeight = 10,
		RearConstant = 10000,
		RearDamping = 800,
		RearRelativeDamping = 2000,
		
		FastSteeringAngle = 16,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 38,
		Efficiency = 2.5,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 9000,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 8500,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/warthog/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/warthog/low.wav",
		Sound_MidPitch = 0.76,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 74,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "vehicles/warthog/mid.wav",
		Sound_HighPitch = 0.66,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 32,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.08,0,0.114}
	}
}
list.Set( "simfphys_vehicles", "simfphys_hcewarthogcivilsnow", V )

local V = {
	Name = "M12 LAAG (Gauss)",
	Model = "models/snowysnowtime/vehicles/warthog_gauss.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,

	Members = {
		Mass = 1200,
		LightsTable = "warthogce",
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 3000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-12.67035,-19.58145,69.111),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(0,-19.581,32.25),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-77,0,50),
				ang = Angle(0,90,0)
			}			
},
		
		FrontHeight = 10,
		FrontConstant = 10000,
		FrontDamping = 800,
		FrontRelativeDamping = 2000,
		
		RearHeight = 10,
		RearConstant = 10000,
		RearDamping = 800,
		RearRelativeDamping = 2000,
		
		FastSteeringAngle = 16,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 38,
		Efficiency = 2.5,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 9000,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 8500,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/warthog/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/warthog/low.wav",
		Sound_MidPitch = 0.76,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 74,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "vehicles/warthog/mid.wav",
		Sound_HighPitch = 0.66,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 32,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.08,0,0.114}
	}
}
list.Set( "simfphys_vehicles", "simfphys_hcewarthoggausssnow", V )

local V = {
	Name = "M12 LRV (Warthog)",
	Model = "models/snowysnowtime/vehicles/warthog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,

	Members = {
		Mass = 1200,
		LightsTable = "warthogce",
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 or ent.GetIsBraking == 1 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-12.67035,-19.58145,69.111),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(0,-19.581,32.25),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-77,0,50),
				ang = Angle(0,-90,0)
			}			
},
		FrontHeight = 10,
		FrontConstant = 10000,
		FrontDamping = 800,
		FrontRelativeDamping = 2000,
		
		RearHeight = 10,
		RearConstant = 10000,
		RearDamping = 800,
		RearRelativeDamping = 2000,
		
		FastSteeringAngle = 16,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 38,
		Efficiency = 2.5,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 9000,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 8500,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/warthog/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/warthog/low.wav",
		Sound_MidPitch = 0.76,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 74,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "vehicles/warthog/mid.wav",
		Sound_HighPitch = 0.66,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 32,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.08,0,0.114}
	}
}
list.Set( "simfphys_vehicles", "simfphys_hcewarthogsnow", V )

local V = {
	Name = "M12 LRV (Rocket)",
	Model = "models/snowysnowtime/vehicles/warthog_rocket.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,

	Members = {
		Mass = 1200,
		LightsTable = "warthogce",
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 or ent.GetIsBraking == 1 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-12.67035,-19.58145,69.111),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(0,-19.581,32.25),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-77,0,50),
				ang = Angle(0,-90,0)
			}			
},
		FrontHeight = 10,
		FrontConstant = 10000,
		FrontDamping = 800,
		FrontRelativeDamping = 2000,
		
		RearHeight = 10,
		RearConstant = 10000,
		RearDamping = 800,
		RearRelativeDamping = 2000,
		
		FastSteeringAngle = 16,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 38,
		Efficiency = 2.5,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 9000,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 8500,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/warthog/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/warthog/low.wav",
		Sound_MidPitch = 0.76,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 74,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "vehicles/warthog/mid.wav",
		Sound_HighPitch = 0.66,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 32,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.08,0,0.114}
	}
}
list.Set( "simfphys_vehicles", "simfphys_hcerwarthogsnow", V )	

local V = {
	Name = "Scorpion",
	Model = "models/snowysnowtime/vehicles/scorpion.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Combat Evolved",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 12000,
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
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 25 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 24 or ent.GetIsBraking == 1 then
				ent:SetBodygroup( 1, 0 )
            end
        end,

		MaxHealth = 11500,
		
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
		
		CustomWheelPosFL = Vector(150,89,50),
		CustomWheelPosFR = Vector(150,-89,50),
		CustomWheelPosML = Vector(17,89,50),
		CustomWheelPosMR = Vector(17,-89,50),
		CustomWheelPosRL = Vector(-121,89,50),
		CustomWheelPosRR = Vector(-121,-89,50),
		CustomWheelAngleOffset = Angle(0,0,9),
		
		CustomMassCenter = Vector(0,0,5),
		
		CustomSteerAngle = 40,
		
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
				pos = Vector(0,-17.5,30),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(69.839,86.368,42.372),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-53.928,96.368,42.372),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(69.839,-86.368,42.372),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(-53.928,-96.368,42.372),
				ang = Angle(0,180,0)
			},
		},
		
		FrontHeight = 35,
		FrontConstant = 800000,
		FrontDamping = 60000,
		FrontRelativeDamping = 6000,
		
		RearHeight = 34,
		RearConstant = 800000,
		RearDamping = 60000,
		RearRelativeDamping = 6000,
		
		FastSteeringAngle = 7,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 6,
		
		MaxGrip = 800,
		Efficiency = 1,
		GripOffset = -300,
		BrakePower = 150,
		BulletProofTires = true,
		
		IdleRPM = 600,
		LimitRPM = 6250,
		PeakTorque = 280,
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
		
		Sound_Idle = "vehicles/scorpion/tank_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/scorpion/tank.wav",
		Sound_MidPitch = 0.7,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 74,
		Sound_MidFadeOutRate = 1,
		
		Sound_High = "vehicles/scorpion/tank.wav",
		Sound_HighPitch = 0.66,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 32,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.115,
		Gears = {-0.08,0,0.094}
	}
}
list.Set( "simfphys_vehicles", "simfphys_hcescorpionsnow", V )

--Beyond this is Cursed Edition, by InfernoPlus. These vehicles are specifically from his desert hog remastered map.

local V = {
	Name = "Shorthog",
	Model = "models/snowysnowtime/vehicles/cursed/shorthog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Cursed Halo",

	Members = {
		Mass = 1200,
		LightsTable = "shorthog",
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-12.67035,-19.58145,69.111),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(0,-19.581,32.25),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-47,0,50),
				ang = Angle(0,90,0)
			}	
},
		
		FrontHeight = 12,
		FrontConstant = 69000,
		FrontDamping = 8000,
		FrontRelativeDamping = 4000,
		FrontHeight = 10,
		FrontConstant = 10000,
		FrontDamping = 800,
		FrontRelativeDamping = 2000,
		
		RearHeight = 10,
		RearConstant = 10000,
		RearDamping = 800,
		RearRelativeDamping = 2000,
		
		FastSteeringAngle = 16,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 38,
		Efficiency = 2.5,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 9000,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 8500,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/warthog/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/warthog/low.wav",
		Sound_MidPitch = 0.76,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 74,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "vehicles/warthog/mid.wav",
		Sound_HighPitch = 0.66,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 32,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.08,0,0.114}
	}
}
list.Set( "simfphys_vehicles", "simfphys_hcursedwarthogshort", V )

local V = {
	Name = "Megahog",
	Model = "models/snowysnowtime/vehicles/cursed/bighog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Cursed Halo",

	Members = {
		Mass = 28000,
		LightsTable = "megahog",
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 or ent.GetIsBraking == 1 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 28000,
		BulletProofTires = true,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,100),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(31,-70,170),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 80,
		RearWheelRadius = 80,

		PassengerSeats = {
			{
				pos = Vector(45,-70,145),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-77,0,50),
				ang = Angle(0,-90,0)
			}			
},
		FrontHeight = 40,
		FrontConstant = 109000,
		FrontDamping = 169000,
		FrontRelativeDamping = 69000,
		
		RearHeight = 40,
		RearConstant = 109000,
		RearDamping = 169000,
		RearRelativeDamping = 69000,
		
		FastSteeringAngle = 20,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 1000,
		Efficiency = 5,
		GripOffset = -5,
		BrakePower = 240,
		
		IdleRPM = 750,
		LimitRPM = 9000,
		PeakTorque = 1062,
		Revlimiter = false,
		PowerbandStart = 1000,
		PowerbandEnd = 8500,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/warthog/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/warthog/low.wav",
		Sound_MidPitch = 0.76,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 74,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "vehicles/warthog/mid.wav",
		Sound_HighPitch = 0.66,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 32,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.05,0,0.094}
	}
}
list.Set( "simfphys_vehicles", "simfphys_hcursedwarthogsnow", V )

local V = {
	Name = "Longhog",
	Model = "models/snowysnowtime/vehicles/cursed/longhog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Cursed Halo",

	Members = {
		Mass = 1200,
		LightsTable = "longhog",
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 or ent.GetIsBraking == 1 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-12.67035,-19.58145,69.111),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(0,-19.581,32.25),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-394,0,54),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-53,-17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-100,-17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-152,-17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-203,-17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-255,-17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-307,-17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-53,17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-100,17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-152,17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-203,17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-255,17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-307,17,28),
				ang = Angle(0,-90,0)
			},
},
		FrontHeight = 10,
		FrontConstant = 10000,
		FrontDamping = 800,
		FrontRelativeDamping = 2000,
		
		RearHeight = 10,
		RearConstant = 10000,
		RearDamping = 800,
		RearRelativeDamping = 2000,
		
		FastSteeringAngle = 16,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 38,
		Efficiency = 2.5,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 9000,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 8500,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/warthog/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/warthog/low.wav",
		Sound_MidPitch = 0.76,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 74,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "vehicles/warthog/mid.wav",
		Sound_HighPitch = 0.66,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 32,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.08,0,0.114}
	}
}
list.Set( "simfphys_vehicles", "simfphys_hcursedlongsnow", V )

local V = {
	Name = "Widehog",
	Model = "models/snowysnowtime/vehicles/cursed/widehog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Cursed Halo",

	Members = {
		Mass = 1200,
		LightsTable = "widehog",
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 or ent.GetIsBraking == 1 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-12.67035,-35,60),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(0,0,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-77,0,50),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(0,-35,28),
				ang = Angle(0,-90,0)
			},
},
		FrontHeight = 10,
		FrontConstant = 10000,
		FrontDamping = 800,
		FrontRelativeDamping = 2000,
		
		RearHeight = 10,
		RearConstant = 10000,
		RearDamping = 800,
		RearRelativeDamping = 2000,
		
		FastSteeringAngle = 16,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 38,
		Efficiency = 2.5,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 9000,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 8500,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/warthog/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/warthog/low.wav",
		Sound_MidPitch = 0.76,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 74,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "vehicles/warthog/mid.wav",
		Sound_HighPitch = 0.66,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 32,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.08,0,0.114}
	}
}
list.Set( "simfphys_vehicles", "simfphys_hcursedwidesnow", V )

local V = {
	Name = "Wartwart",
	Model = "models/snowysnowtime/vehicles/cursed/wartwart.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Cursed Halo",

	Members = {
		Mass = 1200,
		LightsTable = "wartwart",
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 or ent.GetIsBraking == 1 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(2,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-95,0,75),
		SeatPitch = 5,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
},
		FrontHeight = 10,
		FrontConstant = 10000,
		FrontDamping = 800,
		FrontRelativeDamping = 2000,
		
		RearHeight = 10,
		RearConstant = 10000,
		RearDamping = 800,
		RearRelativeDamping = 2000,
		
		FastSteeringAngle = 16,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 38,
		Efficiency = 2.5,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 9000,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 8500,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/warthog/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/warthog/low.wav",
		Sound_MidPitch = 0.76,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 74,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "vehicles/warthog/mid.wav",
		Sound_HighPitch = 0.66,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 32,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.08,0,0.114}
	}
}
list.Set( "simfphys_vehicles", "simfphys_hcursedwortsnow", V )

local V = {
	Name = "Wartkart",
	Model = "models/snowysnowtime/vehicles/cursed/puma.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Cursed Halo",

	Members = {
		Mass = 3200,
		LightsTable = "minihog",
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 40 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 39 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 2000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(0,0,5),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-20.321,-4,64.92),
		SeatPitch = 15,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 8.5,
		RearWheelRadius = 8,

		PassengerSeats = {
			{
				pos = Vector(-20,0,40),
				ang = Angle(0,90,0)
			},		
},
		
		FrontHeight = 5,
		FrontConstant = 99000,
		FrontDamping = 8000,
		FrontRelativeDamping = 6000,
		
		RearHeight = 5,
		RearConstant = 99000,
		RearDamping = 8000,
		RearRelativeDamping = 6000,
		
		FastSteeringAngle = 5,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 7.5,
		
		MaxGrip = 125,
		Efficiency = 4,
		GripOffset = -5,
		BrakePower = 70,
		
		IdleRPM = 450,
		LimitRPM = 5550,
		PeakTorque = 210,
		Revlimiter = false,
		PowerbandStart = 1250,
		PowerbandEnd = 5200,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/warthog/smolidle.wav",
		Sound_IdlePitch = 1.6,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "vehicles/warthog/med.wav",
		Sound_MidPitch = 1.6,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 34,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "vehicles/warthog/hi.wav",
		Sound_HighPitch = 1.6,
		Sound_HighVolume = 4,
		Sound_HighFadeInRPMpercent = 30,
		Sound_HighFadeInRate = 0.9,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/horn.wav",
		
		DifferentialGear = 1,
		Gears = {-0.2,0,0.175}
	}
}
list.Set( "simfphys_vehicles", "simfphys_hcursedpumasnow", V )

local V = {
	Name = "Warthog Sedan",
	Model = "models/snowysnowtime/vehicles/cursed/sedan.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Cursed Halo",

	Members = {
		Mass = 1200,
		LightsTable = "sedanhogg",
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 or ent.GetIsBraking == 1 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-12.67035,-19.58145,69.111),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(0,-19.581,32.25),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-136,0,54),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-53,-17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-53,17,28),
				ang = Angle(0,-90,0)
			},
},
		FrontHeight = 10,
		FrontConstant = 10000,
		FrontDamping = 800,
		FrontRelativeDamping = 2000,
		
		RearHeight = 10,
		RearConstant = 10000,
		RearDamping = 800,
		RearRelativeDamping = 2000,
		
		FastSteeringAngle = 16,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 38,
		Efficiency = 2.5,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 9000,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 8500,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/warthog/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/warthog/low.wav",
		Sound_MidPitch = 0.76,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 74,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "vehicles/warthog/mid.wav",
		Sound_HighPitch = 0.66,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 32,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.08,0,0.114}
	}
}
list.Set( "simfphys_vehicles", "simfphys_hcursedsedansnow", V )

local V = {
	Name = "Thinhog",
	Model = "models/snowysnowtime/vehicles/cursed/thinhog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Cursed Halo",

	Members = {
		Mass = 1200,
		LightsTable = "sedanhogg",
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 or ent.GetIsBraking == 1 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-12.67035,-19.58145,69.111),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(0,-19.581,32.25),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-136,0,54),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-53,-17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-53,17,28),
				ang = Angle(0,-90,0)
			},
},
		FrontHeight = 10,
		FrontConstant = 10000,
		FrontDamping = 800,
		FrontRelativeDamping = 2000,
		
		RearHeight = 10,
		RearConstant = 10000,
		RearDamping = 800,
		RearRelativeDamping = 2000,
		
		FastSteeringAngle = 16,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 38,
		Efficiency = 2.5,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 9000,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 8500,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/warthog/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/warthog/low.wav",
		Sound_MidPitch = 0.76,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 74,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "vehicles/warthog/mid.wav",
		Sound_HighPitch = 0.66,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 32,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.08,0,0.114}
	}
}
list.Set( "simfphys_vehicles", "simfphys_hcursedthinsnow", V )

local V = {
	Name = "Hoghog",
	Model = "models/snowysnowtime/vehicles/cursed/hoghog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Cursed Halo",

	Members = {
		Mass = 1200,
		LightsTable = "sedanhogg",
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 or ent.GetIsBraking == 1 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-12.67035,-19.58145,69.111),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(0,-19.581,32.25),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-136,0,54),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-53,-17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-53,17,28),
				ang = Angle(0,-90,0)
			},
},
		FrontHeight = 10,
		FrontConstant = 10000,
		FrontDamping = 800,
		FrontRelativeDamping = 2000,
		
		RearHeight = 10,
		RearConstant = 10000,
		RearDamping = 800,
		RearRelativeDamping = 2000,
		
		FastSteeringAngle = 16,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 38,
		Efficiency = 2.5,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 9000,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 8500,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/warthog/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/warthog/low.wav",
		Sound_MidPitch = 0.76,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 74,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "vehicles/warthog/mid.wav",
		Sound_HighPitch = 0.66,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 32,
		Sound_HighFadeInRate = 0.3,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.7,
		Gears = {-0.08,0,0.114}
	}
}
list.Set( "simfphys_vehicles", "simfphys_hcursedhoghogsnow", V )
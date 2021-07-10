local V = {
	Name = "Scorpion",
	Model = "models/snowysnowtime/vehicles/halo3/scorpion.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo 3",
	SpawnOffset = Vector(0,0,60),
	SpawnAngleOffset = 90,

	Members = {
		Mass = 12000,
		AirFriction = 5,
		Inertia = Vector(10000,80000,100000),
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", false )
				ent:SetNWBool( "simfphys_NoHud", false ) 
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

		MaxHealth = 10000,
		StrengthenSuspension = true,
		
		IsArmored = true,
		
		NoWheelGibs = true,
		
		FirstPersonViewPos = Vector(0,-50,15),
		
		FrontWheelRadius = 46,
		RearWheelRadius = 46,
		SteerRear = true,
		
		EnginePos = Vector(-79.66,0,72.21),
		
		CustomWheels = true,
		CustomSuspensionTravel = 10,
		
		CustomWheelModel = "models/props_c17/canisterchunk01g.mdl",
		
		CustomWheelPosFL = Vector(135.9183,80.62,45),
		CustomWheelPosFR = Vector(135.9183,-80.62,45),
		CustomWheelPosML = Vector(0,84,45),
		CustomWheelPosMR = Vector(0,-84,45),
		CustomWheelPosRL = Vector(-116.3,88.69,45),
		CustomWheelPosRR = Vector(-116.3,-88.69,45),
		CustomWheelAngleOffset = Angle(0,0,9),
		
		CustomMassCenter = Vector(0,0,5),
		
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
				pos = Vector(54.13,-22.23,51.2),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(80.433,99.368,42.592),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-62.11,110.368,42.592),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(80.433,-99.368,42.592),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(-62.11,-110.368,42.592),
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
		
		FastSteeringAngle = 14,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 12,
		
		MaxGrip = 800,
		Efficiency = 1,
		GripOffset = -300,
		BrakePower = 150,
		BulletProofTires = true,
		
		IdleRPM = 600,
		LimitRPM = 6250,
		PeakTorque = 360,
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
		
		Sound_Mid = "vehicles/h3/sc/sc_mid.wav",
		Sound_MidPitch = 0.7,
		Sound_MidVolume = 3,
		Sound_MidFadeOutRPMpercent = 64,
		Sound_MidFadeOutRate = 0.4,
		
		Sound_High = "vehicles/h3/sc/sc_hi.wav",
		Sound_HighPitch = 0.54,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 50,
		Sound_HighFadeInRate = 0.25,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "common/null.wav",
		
		ForceTransmission = 1,
		
		DifferentialGear = 0.195,
		Gears = {-0.08,0,0.094}
	}
}
list.Set( "simfphys_vehicles", "simfphys_h3scorpionsnow", V )

local V = {
	Name = "M12 LRV (Tank)",
	Model = "models/snowysnowtime/vehicles/halo3/tankhog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo 3",

	Members = {
		Mass = 1200,
		LightsTable = "warthog3",
		
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 3000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-12.67,-19.58,69),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(0,-19.58,32.25),
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
		Efficiency = 1.45,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 5550,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h3/wh/wh_idle.wav",
		Sound_IdlePitch = 1.1,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "vehicles/h3/wh/wh_hi.wav",
		Sound_MidPitch = 0.85,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 84,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "vehicles/h3/wh/wh_hi.wav",
		Sound_HighPitch = 0.82,
		Sound_HighVolume = 4,
		Sound_HighFadeInRPMpercent = 70,
		Sound_HighFadeInRate = 0.9,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.115,
		Gears = {-0.2,0,0.2,0.4,0.6,0.8,1,1.2}
	}
}
list.Set( "simfphys_vehicles", "simfphys_h3scorpionhogsnow", V )	

local V = {
	Name = "M12 LRV (Warthog)",
	Model = "models/snowysnowtime/vehicles/halo3/warthog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo 3",

	Members = {
		Mass = 1200,
		LightsTable = "warthog3",
		
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		OnTick = function(ent) 
			
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 4000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-12.67,-19.58,69),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(0,-19.58,32.25),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-69,0,40.3),
				ang = Angle(0,-90,0),
				anim = "pose_standing_04" -- overwrite passenger seat animation
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
		Efficiency = 1.45,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 5550,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h3/wh/wh_idle.wav",
		Sound_IdlePitch = 1.1,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "vehicles/h3/wh/wh_hi.wav",
		Sound_MidPitch = 0.85,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 84,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "vehicles/h3/wh/wh_hi.wav",
		Sound_HighPitch = 0.82,
		Sound_HighVolume = 4,
		Sound_HighFadeInRPMpercent = 70,
		Sound_HighFadeInRate = 0.9,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.115,
		Gears = {-0.2,0,0.2,0.4,0.6,0.8,1,1.2}
	}
}
list.Set( "simfphys_vehicles", "simfphys_h3warthogsnow", V )	

local V = {
	Name = "M12 LRV (Civilian)",
	Model = "models/snowysnowtime/vehicles/halo3/warthog_civil.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo 3",

	Members = {
		Mass = 1200,
		LightsTable = "warthog3",
		
		OnTick = function(ent) 
			
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 4000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-12.67,-19.58,69),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(0,-19.58,32.25),
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
		Efficiency = 1.45,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 5550,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h3/wh/wh_idle.wav",
		Sound_IdlePitch = 1.1,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "vehicles/h3/wh/wh_hi.wav",
		Sound_MidPitch = 0.85,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 84,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "vehicles/h3/wh/wh_hi.wav",
		Sound_HighPitch = 0.82,
		Sound_HighVolume = 4,
		Sound_HighFadeInRPMpercent = 70,
		Sound_HighFadeInRate = 0.9,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.115,
		Gears = {-0.2,0,0.2,0.4,0.6,0.8,1,1.2}
	}
}
list.Set( "simfphys_vehicles", "simfphys_h3warthogcivilsnow", V )

local V = {
	Name = "M12 LAAG (Gauss)",
	Model = "models/snowysnowtime/vehicles/halo3/warthog_gauss.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo 3",

	Members = {
		Mass = 1200,
		LightsTable = "warthog3",
		
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		OnTick = function(ent) 
			
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 3000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-12.67,-19.58,69),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(0,-19.58,32.25),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-69,0,40.3),
				ang = Angle(0,-90,0),
				anim = "pose_standing_04" -- overwrite passenger seat animation
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
		Efficiency = 1.45,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 5550,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h3/wh/wh_idle.wav",
		Sound_IdlePitch = 1.1,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "vehicles/h3/wh/wh_hi.wav",
		Sound_MidPitch = 0.85,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 84,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "vehicles/h3/wh/wh_hi.wav",
		Sound_HighPitch = 0.82,
		Sound_HighVolume = 4,
		Sound_HighFadeInRPMpercent = 70,
		Sound_HighFadeInRate = 0.9,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.115,
		Gears = {-0.2,0,0.2,0.4,0.6,0.8,1,1.2}
	}
}
list.Set( "simfphys_vehicles", "simfphys_h3warthoggausssnow", V )

local V = {
	Name = "M12 LRV (Troop)",
	Model = "models/snowysnowtime/vehicles/halo3/warthog_troop.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo 3",

	Members = {
		Mass = 1200,
		LightsTable = "warthog3",
		
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		OnTick = function(ent) 
			
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 4000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-12.67,-19.58,69),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 23.165,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(0,-19.58,32.25),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-47.371,8.63,61.6),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-69.371,8.63,61.6),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-47.371,-8.63,61.6),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(-69.371,-8.63,61.6),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(-86.371,0,61.6),
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
		Efficiency = 1.45,
		GripOffset = -5,
		BrakePower = 11,
		
		IdleRPM = 450,
		LimitRPM = 5550,
		PeakTorque = 80,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/h3/wh/wh_idle.wav",
		Sound_IdlePitch = 1.1,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "vehicles/h3/wh/wh_hi.wav",
		Sound_MidPitch = 0.85,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 84,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "vehicles/h3/wh/wh_hi.wav",
		Sound_HighPitch = 0.82,
		Sound_HighVolume = 4,
		Sound_HighFadeInRPMpercent = 70,
		Sound_HighFadeInRate = 0.9,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.115,
		Gears = {-0.2,0,0.2,0.4,0.6,0.8,1,1.2}
	}
}
list.Set( "simfphys_vehicles", "simfphys_h3warthogtroopsnow", V )

local V = {
	Name = "Mongoose",
	Model = "models/snowysnowtime/vehicles/halo3/Mongoose.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo 3",

	Members = {
		Mass = 1050,
		LightsTable = "mongoose3",
		SeatAnim = "drive_airboat", -- overwrite passenger seat animation
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 2000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-18,0,47.92),
		SeatPitch = 15,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 15,
		RearWheelRadius = 15,

		PassengerSeats = {
			{
				pos = Vector(-35,0,28),
				ang = Angle(0,90,0)
			},		
},
		FrontHeight = 10,
		FrontConstant = 12000,
		FrontDamping = 1000,
		FrontRelativeDamping = 400,
		
		RearHeight = 10,
		RearConstant = 10000,
		RearDamping = 1000,
		RearRelativeDamping = 400,
		
		FastSteeringAngle = 12,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 25,
		Efficiency = 1.45,
		GripOffset = -5,
		BrakePower = 5,
		
		IdleRPM = 450,
		LimitRPM = 5550,
		PeakTorque = 40,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/halo/m/m_idle.wav",
		Sound_IdlePitch = 1.1,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "vehicles/halo/m/m.wav",
		Sound_MidPitch = 0.85,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 84,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "vehicles/halo/m/m.wav",
		Sound_HighPitch = 0.82,
		Sound_HighVolume = 4,
		Sound_HighFadeInRPMpercent = 70,
		Sound_HighFadeInRate = 0.9,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/halo/m/m_honk.wav",
		
		DifferentialGear = 0.1,
		Gears = {-0.2,0,0.2,0.4,0.6,0.8,1,1.2}
	}
}
list.Set( "simfphys_vehicles", "simfphys_h3mongoosesnow", V )
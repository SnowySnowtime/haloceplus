local V = {
	Name = "M12 LRV (Warthog)",
	Model = "models/snowysnowtime/vehicles/haloreach/warthog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo Reach",

	Members = {
		Mass = 6200,
		LightsTable = "warthogreach",
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				elseif nyoom < 59 or ent.GetIsBraking == 1 then
				ent:SetBodygroup( 1, 0 )
            end
        end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-11,-17,60),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 20,
		RearWheelRadius = 19,

		PassengerSeats = {
			{
				pos = Vector(0,-17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-77,0,50),
				ang = Angle(0,-90,0)
			}			
},
		
		FrontHeight = 12,
		FrontConstant = 69000,
		FrontDamping = 8000,
		FrontRelativeDamping = 4000,
		
		RearHeight = 12,
		RearConstant = 99000,
		RearDamping = 8000,
		RearRelativeDamping = 4000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 200,
		Efficiency = 1.65,
		GripOffset = -5,
		BrakePower = 70,
		
		IdleRPM = 450,
		LimitRPM = 5550,
		PeakTorque = 370,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/halo/m/w_idle.wav",
		Sound_IdlePitch = 1.1,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "vehicles/h2/warthog_loop.wav",
		Sound_MidPitch = 0.85,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 84,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "vehicles/h2/warthog_hiloop.wav",
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
list.Set( "simfphys_vehicles", "simfphys_hrwarthogsnow", V )	

local V = {
	Name = "Spade",
	Model = "models/snowysnowtime/vehicles/haloreach/spade.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo Reach",

	Members = {
		Mass = 6200,
		LightsTable = "warthogreach",
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(87.1,0,52.7),
		IsArmored = true,
		MaxHealth = 8500,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-11,-17,60),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 20,
		RearWheelRadius = 19,

		PassengerSeats = {
			{
				pos = Vector(0,-17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-77,0,50),
				ang = Angle(0,90,0)
			}			
},
		
		FrontHeight = 12,
		FrontConstant = 69000,
		FrontDamping = 8000,
		FrontRelativeDamping = 4000,
		
		RearHeight = 12,
		RearConstant = 99000,
		RearDamping = 8000,
		RearRelativeDamping = 4000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 200,
		Efficiency = 1.65,
		GripOffset = -5,
		BrakePower = 70,
		
		IdleRPM = 450,
		LimitRPM = 5550,
		PeakTorque = 370,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/hr/wh_idle.wav",
		Sound_IdlePitch = 1,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "common/null.wav",
		Sound_MidPitch = 0.85,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 84,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "vehicles/h3/wh/wh_hi.wav",
		Sound_HighPitch = 0.82,
		Sound_HighVolume = 2,
		Sound_HighFadeInRPMpercent = 0,
		Sound_HighFadeInRate = 0.75,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "vehicles/warthog/wh_honk.wav",
		
		DifferentialGear = 0.115,
		Gears = {-0.2,0,0.2,0.4,0.6,0.8,1,1.2}
	}
}
list.Set( "simfphys_vehicles", "simfphys_hrwarthogspadesnow", V )

local V = {
	Name = "M12 LRV (Civilian)",
	Model = "models/snowysnowtime/vehicles/haloreach/warthog_civil.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo Reach",

	Members = {
		Mass = 6200,
		LightsTable = "warthogreach",
		
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
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-11,-17,60),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 20,
		RearWheelRadius = 19,

		PassengerSeats = {
			{
				pos = Vector(0,-17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-77,0,50),
				ang = Angle(0,90,0)
			}			
},
		
		FrontHeight = 12,
		FrontConstant = 69000,
		FrontDamping = 8000,
		FrontRelativeDamping = 4000,
		
		RearHeight = 12,
		RearConstant = 99000,
		RearDamping = 8000,
		RearRelativeDamping = 4000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 200,
		Efficiency = 1.65,
		GripOffset = -5,
		BrakePower = 70,
		
		IdleRPM = 450,
		LimitRPM = 5550,
		PeakTorque = 370,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/halo/m/w_idle.wav",
		Sound_IdlePitch = 1.1,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "vehicles/h2/warthog_loop.wav",
		Sound_MidPitch = 0.85,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 84,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "vehicles/h2/warthog_hiloop.wav",
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
list.Set( "simfphys_vehicles", "simfphys_hrwarthogcivilsnow", V )

local V = {
	Name = "M12 LRV (Rocket)",
	Model = "models/snowysnowtime/vehicles/haloreach/warthog_rocket.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo Reach",

	Members = {
		Mass = 6200,
		LightsTable = "warthogreach",
		
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
		
		SeatOffset = Vector(-11,-17,60),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 20,
		RearWheelRadius = 19,

		PassengerSeats = {
			{
				pos = Vector(0,-17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-77,0,50),
				ang = Angle(0,90,0)
			}			
},
		
		FrontHeight = 12,
		FrontConstant = 69000,
		FrontDamping = 8000,
		FrontRelativeDamping = 4000,
		
		RearHeight = 12,
		RearConstant = 99000,
		RearDamping = 8000,
		RearRelativeDamping = 4000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 200,
		Efficiency = 1.65,
		GripOffset = -5,
		BrakePower = 70,
		
		IdleRPM = 450,
		LimitRPM = 5550,
		PeakTorque = 370,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/halo/m/w_idle.wav",
		Sound_IdlePitch = 1.1,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "vehicles/h2/warthog_loop.wav",
		Sound_MidPitch = 0.85,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 84,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "vehicles/h2/warthog_hiloop.wav",
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
list.Set( "simfphys_vehicles", "simfphys_hrwarthogrocketsnow", V )

local V = {
	Name = "M12 LAAG (Gauss)",
	Model = "models/snowysnowtime/vehicles/haloreach/warthog_gauss.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo Reach",

	Members = {
		Mass = 6200,
		LightsTable = "warthogreach",
		
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
		
		SeatOffset = Vector(-11,-17,60),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 20,
		RearWheelRadius = 19,

		PassengerSeats = {
			{
				pos = Vector(0,-17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-77,0,50),
				ang = Angle(0,90,0)
			}			
},
		
		FrontHeight = 12,
		FrontConstant = 69000,
		FrontDamping = 8000,
		FrontRelativeDamping = 4000,
		
		RearHeight = 12,
		RearConstant = 99000,
		RearDamping = 8000,
		RearRelativeDamping = 4000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 200,
		Efficiency = 1.65,
		GripOffset = -5,
		BrakePower = 70,
		
		IdleRPM = 450,
		LimitRPM = 5550,
		PeakTorque = 370,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/halo/m/w_idle.wav",
		Sound_IdlePitch = 1.1,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "vehicles/h2/warthog_loop.wav",
		Sound_MidPitch = 0.85,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 84,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "vehicles/h2/warthog_hiloop.wav",
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
list.Set( "simfphys_vehicles", "simfphys_hrwarthoggausssnow", V )

local V = {
	Name = "M12 LRV (Troop)",
	Model = "models/snowysnowtime/vehicles/haloreach/warthog_troop.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo Reach",

	Members = {
		Mass = 6200,
		LightsTable = "warthogreach",
		
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
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(6,0,10),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-11,-17,60),
		SeatPitch = 0,
		SeatYaw = 90,
		
		AirFriction = -40000,
		FrontWheelRadius = 20,
		RearWheelRadius = 19,

		PassengerSeats = {
			{
				pos = Vector(0,-17,28),
				ang = Angle(0,-90,0)
			},
			{
				pos = Vector(-39.371,7.5,45.6),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-60.371,7.5,45.6),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-39.371,-7.5,45.6),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(-60.371,-7.5,45.6),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(-76.371,0,45.6),
				ang = Angle(0,90,0)
			}
},
		
		FrontHeight = 12,
		FrontConstant = 69000,
		FrontDamping = 8000,
		FrontRelativeDamping = 4000,
		
		RearHeight = 12,
		RearConstant = 99000,
		RearDamping = 8000,
		RearRelativeDamping = 4000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 200,
		Efficiency = 1.65,
		GripOffset = -5,
		BrakePower = 70,
		
		IdleRPM = 450,
		LimitRPM = 5550,
		PeakTorque = 370,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 5200,
		Turbocharged = false,
        Backfire = false,
		
		PowerBias = 0.05,

		EngineSoundPreset = 0,
		
		Sound_Idle = "vehicles/halo/m/w_idle.wav",
		Sound_IdlePitch = 1.1,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "vehicles/h2/warthog_loop.wav",
		Sound_MidPitch = 0.85,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 84,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "vehicles/h2/warthog_hiloop.wav",
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
list.Set( "simfphys_vehicles", "simfphys_hrwarthogtroopsnow", V )

local V = {
	Name = "Mongoose",
	Model = "models/snowysnowtime/vehicles/haloreach/Mongoose.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo Reach",

	Members = {
		Mass = 3200,
		LightsTable = "mongoosehr",
		
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
		
		SeatOffset = Vector(-23.321,0,47.92),
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
		
		FrontHeight = 5,
		FrontConstant = 69000,
		FrontDamping = 8000,
		FrontRelativeDamping = 4000,
		
		RearHeight = 5,
		RearConstant = 99000,
		RearDamping = 8000,
		RearRelativeDamping = 4000,
		
		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 635,
		
		TurnSpeed = 8.5,
		
		MaxGrip = 100,
		Efficiency = 1.65,
		GripOffset = -5,
		BrakePower = 70,
		
		IdleRPM = 450,
		LimitRPM = 5550,
		PeakTorque = 180,
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
list.Set( "simfphys_vehicles", "simfphys_hrmongoosesnow", V )
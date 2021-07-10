local V = {
	Name = "Vaporwave Hog",
	Model = "models/snowysnowtime/vehicles/halo2/infernoplus_vapehog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Cursed Halo",

	Members = {
		Mass = 6200,
		LightsTable = "warthogce",
		
		OnDelete =
			function(ent) 
				ent:StopSound( "vapor" )
				ent:StopSound( "vapor" )
		end,
		
		OnDestroyed =
			function(ent) 
				ent:StopSound( "vapor" )
				ent:StopSound( "vapor" )
		end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		OnTick = function(ent) 
			if ent:EngineActive() then
				ent:EmitSound ( "vapor" )
			else
				ent:StopSound( "vapor" )
			end
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
		
		Sound_Idle = "common/null.wav",
		Sound_IdlePitch = 1.15,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "common/null.wav",
		Sound_MidPitch = 0.75,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 84,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "common/null.wav",
		Sound_HighPitch = 0.75,
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
list.Set( "simfphys_vehicles", "simfphys_h2desertvaporsnow", V )

local V = {
	Name = "Thanos Car",
	Model = "models/snowysnowtime/vehicles/halo2/infernoplus_thanoscar.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Cursed Halo",

	Members = {
		Mass = 6200,
		LightsTable = "warthogce",
		
		OnDelete =
			function(ent) 
				ent:StopSound( "thanos" )
				ent:StopSound( "thanos" )
		end,
		
		OnDestroyed =
			function(ent) 
				ent:StopSound( "thanos" )
				ent:StopSound( "thanos" )
		end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		OnTick = function(ent) 
			if ent:EngineActive() then
				ent:EmitSound ( "thanos" )
			else
				ent:StopSound( "thanos" )
			end
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
		
		Sound_Idle = "common/null.wav",
		Sound_IdlePitch = 1.15,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "common/null.wav",
		Sound_MidPitch = 0.75,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 84,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "common/null.wav",
		Sound_HighPitch = 0.72,
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
list.Set( "simfphys_vehicles", "simfphys_h2desertthanossnow", V )

local V = {
	Name = "Earrape Hog",
	Model = "models/snowysnowtime/vehicles/halo2/wartpog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Cursed Halo",

	Members = {
		Mass = 6200,
		LightsTable = "warthogce",
		
		OnDelete =
			function(ent) 
				ent:StopSound( "earrape" )
				ent:StopSound( "earrape" )
		end,
		
		OnDestroyed =
			function(ent) 
				ent:StopSound( "earrape" )
				ent:StopSound( "earrape" )
		end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		OnTick = function(ent) 
			if ent:EngineActive() then
				ent:EmitSound ( "earrape" )
			else
				ent:StopSound( "earrape" )
			end
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
		
		Sound_Idle = "common/null.wav",
		Sound_IdlePitch = 1.15,
		Sound_IdleVolume = 2.5,
		
		Sound_Mid = "common/null.wav",
		Sound_MidPitch = 0.75,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 84,
		Sound_MidFadeOutRate = 0.65,
		
		Sound_High = "common/null.wav",
		Sound_HighPitch = 0.72,
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
list.Set( "simfphys_vehicles", "simfphys_h2desertearrpsnow", V )

local V = {
	Name = "M12 LRV (Warthog)",
	Model = "models/snowysnowtime/vehicles/halo2/warthog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo 2",

	Members = {
		Mass = 6200,
		LightsTable = "warthog2",
		
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
		LimitRPM = 5250,
		PeakTorque = 370,
		Revlimiter = false,
		PowerbandStart = 1500,
		PowerbandEnd = 8000,
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
		Sound_HighPitch = 0.85,
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
list.Set( "simfphys_vehicles", "simfphys_h2warthogsnow", V )	

local V = {
	Name = "M12 LRV (Civilian)",
	Model = "models/snowysnowtime/vehicles/halo2/warthog_civil.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo 2",

	Members = {
		Mass = 6200,
		LightsTable = "warthog2",
		
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
list.Set( "simfphys_vehicles", "simfphys_h2warthogcivilsnow", V )

local V = {
	Name = "M12 LAAG (Gauss)",
	Model = "models/snowysnowtime/vehicles/halo2/warthog_gauss.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo 2",

	Members = {
		Mass = 6200,
		LightsTable = "warthog2",
		
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
list.Set( "simfphys_vehicles", "simfphys_h2warthoggausssnow", V )
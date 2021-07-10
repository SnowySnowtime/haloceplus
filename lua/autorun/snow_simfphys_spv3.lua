local V = {
	Name = "M12 LRV (Civilian)",
	Model = "models/snowysnowtime/vehicles/customedition/cmt/spv3/warthog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Custom Edition",

	Members = {
		Mass = 1200,
		LightsTable = "warthogspv3",
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				ent:SetBodygroup( 2, 0 )
				elseif nyoom < 59 then
				ent:SetBodygroup( 1, 0 )
				ent:SetBodygroup( 2, 0 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(0,-83.1,52.7),
		IsArmored = true,
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(0,0,0),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-11,-19,55),
		SeatPitch = 0,
		SeatYaw = 180,
		
		AirFriction = -40000,
		FrontWheelRadius = 21.5,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(-17,6,24),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(0,92,45),
				ang = Angle(0,180,0)
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
		
		Sound_Idle = "customedition/spv3/wh/wh_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "customedition/spv3/wh/wh_low.wav",
		Sound_MidPitch = 1.15,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 54,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "customedition/spv3/wh/wh_hi.wav",
		Sound_HighPitch = 0.97,
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
list.Set( "simfphys_vehicles", "simfphys_spv3warthogcivilsnow", V )

local V = {
	Name = "M12 LAAG (Gauss)",
	Model = "models/snowysnowtime/vehicles/customedition/cmt/spv3/warthog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Custom Edition",

	Members = {
		Mass = 1200,
		LightsTable = "warthogspv3",
		
		ModelInfo = {
			Skin = 2,
		},
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				ent:SetBodygroup( 2, 3 )
				elseif nyoom < 59 then
				ent:SetBodygroup( 1, 0 )
				ent:SetBodygroup( 2, 3 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(0,-83.1,52.7),
		IsArmored = true,
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(0,0,0),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-11,-19,55),
		SeatPitch = 0,
		SeatYaw = 180,
		
		AirFriction = -40000,
		FrontWheelRadius = 21.5,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(-17,6,24),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(0,65,27),
				ang = Angle(0,180,0),
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
		
		Sound_Idle = "customedition/spv3/wh/wh_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "customedition/spv3/wh/wh_low.wav",
		Sound_MidPitch = 1.15,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 54,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "customedition/spv3/wh/wh_hi.wav",
		Sound_HighPitch = 0.97,
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
list.Set( "simfphys_vehicles", "simfphys_spv3warthoggausssnow", V )

local V = {
	Name = "M12 LRV (Warthog)",
	Model = "models/snowysnowtime/vehicles/customedition/cmt/spv3/warthog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Custom Edition",

	Members = {
		Mass = 1200,
		LightsTable = "warthogspv3",
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				ent:SetBodygroup( 2, 1 )
				elseif nyoom < 59 or ent.GetIsBraking == 1 then
				ent:SetBodygroup( 1, 0 )
				ent:SetBodygroup( 2, 1 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(0,-83.1,52.7),
		IsArmored = true,
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(0,0,0),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-11,-19,55),
		SeatPitch = 0,
		SeatYaw = 180,
		
		AirFriction = -40000,
		FrontWheelRadius = 21.5,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(-17,6,24),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(0,65,27),
				ang = Angle(0,180,0),
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
		
		Sound_Idle = "customedition/spv3/wh/wh_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "customedition/spv3/wh/wh_low.wav",
		Sound_MidPitch = 1.15,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 54,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "customedition/spv3/wh/wh_hi.wav",
		Sound_HighPitch = 0.97,
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
list.Set( "simfphys_vehicles", "simfphys_spv3warthogsnow", V )

local V = {
	Name = "M12 LRV (Rocket)",
	Model = "models/snowysnowtime/vehicles/customedition/cmt/spv3/warthog.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "Halo: Custom Edition",

	Members = {
		Mass = 1200,
		LightsTable = "warthogspv3",
		
		ModelInfo = {
			Skin = 1,
		},
		
		OnTick = function(ent) 
			local nyoom = ent:GetVelocity():Length()*0.069
				if nyoom > 60 and ent:EngineActive() then
                ent:SetBodygroup( 1, 1 )
				ent:SetBodygroup( 2, 2 )
				elseif nyoom < 59 or ent.GetIsBraking == 1 then
				ent:SetBodygroup( 1, 0 )
				ent:SetBodygroup( 2, 2 )
            end
        end,
		
		OnSpawn = 
			function(ent) 
				ent:SetNWBool( "simfphys_NoRacingHud", true )
				ent:SetNWBool( "simfphys_NoHud", true ) 
		end,
		
		EnginePos = Vector(0,-83.1,52.7),
		IsArmored = true,
		MaxHealth = 7000,
		BulletProofTires = true,
		CustomWheelCamber = 0,
		StrengthenSuspension = false,
		
		CustomMassCenter = Vector(0,0,0),
		
		CustomSteerAngle = 45,
		
		SeatOffset = Vector(-11,-19,55),
		SeatPitch = 0,
		SeatYaw = 180,
		
		AirFriction = -40000,
		FrontWheelRadius = 21.5,
		RearWheelRadius = 21.5,

		PassengerSeats = {
			{
				pos = Vector(-17,6,24),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(0,65,27),
				ang = Angle(0,180,0),
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
		
		Sound_Idle = "customedition/spv3/wh/wh_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "customedition/spv3/wh/wh_low.wav",
		Sound_MidPitch = 1.15,
		Sound_MidVolume = 2.5,
		Sound_MidFadeOutRPMpercent = 54,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "customedition/spv3/wh/wh_hi.wav",
		Sound_HighPitch = 0.97,
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
list.Set( "simfphys_vehicles", "simfphys_spv3rwarthogsnow", V )	
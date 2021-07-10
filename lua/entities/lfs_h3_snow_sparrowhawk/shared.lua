ENT.Type            = "anim"
DEFINE_BASECLASS( "lunasflightschool_basescript" )

ENT.PrintName = "HW | AV-22 Sparrowhawk"
ENT.Author = "Snowy Snowtime"
ENT.Information = ""
ENT.Category = "[LFS] Halo"

ENT.Spawnable		= false
ENT.AdminSpawnable	= false

ENT.LFSHELI = false

ENT.MDL = "models/snowysnowtime/vehicles/spv3/sparrowhawk.mdl"
ENT.GibModels = {
	"models/snowysnowtime/vehicles/spv3/sparrowhawk.mdl"
}

ENT.AITEAM = 1

ENT.Mass = 1100
ENT.Inertia = Vector(80000,80000,80000)
ENT.Drag = -25

ENT.SeatPos = Vector(5,0,70)
ENT.SeatAng = Angle(0,-90,0)

ENT.IdleRPM = 1000
ENT.MaxRPM = 8000
ENT.LimitRPM = 15000

ENT.RotorPos = Vector(50,0,100)
ENT.WingPos = Vector(110,0,95)
ENT.ElevatorPos = Vector(-325,0,115)
ENT.RudderPos = Vector(-325,0,115)

ENT.MaxVelocity = 1750
ENT.MaxPerfVelocity = 200

ENT.MaxThrust = 250

ENT.MaxTurnPitch = 900
ENT.MaxTurnYaw = 900
ENT.MaxTurnRoll = 450

ENT.MaxHealth = 2500

ENT.Stability = 0.6

ENT.VerticalTakeoff = true
ENT.VtolAllowInputBelowThrottle = 101
ENT.MaxThrustVtol = 15000

ENT.MaxPrimaryAmmo = 1300
ENT.MaxSecondaryAmmo = 64
ENT.MaxTertiaryAmmo = 3000

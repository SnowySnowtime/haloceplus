ENT.Type            = "anim"
DEFINE_BASECLASS( "lunasflightschool_basescript" )

ENT.PrintName = "H3 | Banshee"
ENT.Author = "SnowySnowtime"
ENT.Information = ""
ENT.Category = "[LFS] Halo"

ENT.Spawnable		= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/snowysnowtime/vehicles/halo3/banshee.mdl"
ENT.GibModels = {
	"models/snowysnowtime/vehicles/halo3/banshee.mdl"
}

ENT.AITEAM = 1

ENT.Mass = 1100
ENT.Inertia = Vector(40000,40000,40000)
ENT.Drag = -20

ENT.SeatPos = Vector(5,0,70)
ENT.SeatAng = Angle(0,-90,0)

ENT.IdleRPM = 1000
ENT.MaxRPM = 8000
ENT.LimitRPM = 9500

ENT.RotorPos = Vector(50,0,100)
ENT.WingPos = Vector(110,0,95)
ENT.ElevatorPos = Vector(-325,0,115)
ENT.RudderPos = Vector(-325,0,115)

ENT.MaxVelocity = 1750
ENT.MaxPerfVelocity = 200

ENT.MaxThrust = 500

ENT.MaxTurnPitch = 900
ENT.MaxTurnYaw = 900
ENT.MaxTurnRoll = 450

ENT.MaxHealth = 2500

ENT.Stability = 0.6

ENT.VerticalTakeoff = true
ENT.VtolAllowInputBelowThrottle = 60
ENT.MaxThrustVtol = 10000

ENT.MaxPrimaryAmmo = 2600
ENT.MaxSecondaryAmmo = 32

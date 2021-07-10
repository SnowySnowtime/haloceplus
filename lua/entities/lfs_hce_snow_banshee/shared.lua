ENT.Type            = "anim"
DEFINE_BASECLASS( "lunasflightschool_basescript" )

ENT.PrintName = "HCE | Banshee"
ENT.Author = "SnowySnowtime"
ENT.Information = ""
ENT.Category = "[LFS] Halo"

ENT.Spawnable		= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/snowysnowtime/vehicles/banshee.mdl"
ENT.GibModels = {
	"models/snowysnowtime/vehicles/banshee.mdl"
}

ENT.AITEAM = 1

ENT.Mass = 1100
ENT.Inertia = Vector(50000,50000,50000)
ENT.Drag = -15

ENT.SeatPos = Vector(5,0,30)
ENT.SeatAng = Angle(0,-90,0)

ENT.IdleRPM = 1000
ENT.MaxRPM = 9000
ENT.LimitRPM = 9000

ENT.RotorPos = Vector(50,0,85)
ENT.WingPos = Vector(110,0,85)
ENT.ElevatorPos = Vector(-325,0,105)
ENT.RudderPos = Vector(-325,0,105)

ENT.MaxVelocity = 1000
ENT.MaxPerfVelocity = 500

ENT.MaxThrust = 500

ENT.MaxTurnPitch = 450
ENT.MaxTurnYaw = 450
ENT.MaxTurnRoll = 300

ENT.MaxHealth = 1250

ENT.Stability = 0.6

ENT.VerticalTakeoff = true
ENT.VtolAllowInputBelowThrottle = 60
ENT.MaxThrustVtol = 10000

ENT.MaxPrimaryAmmo = 2600
ENT.MaxSecondaryAmmo = 32

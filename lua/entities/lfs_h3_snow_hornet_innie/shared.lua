ENT.Type            = "anim"
DEFINE_BASECLASS( "lunasflightschool_basescript_heli" )

ENT.PrintName = "H3 | URF Hornet"
ENT.Author = "Snowy Snowtime"
ENT.Information = ""
ENT.Category = "[LFS] Halo"

ENT.Spawnable		= true
ENT.AdminSpawnable	= true

ENT.LFSHELI = true

ENT.MDL = "models/snowysnowtime/vehicles/halo3/hornet.mdl"
ENT.GibModels = {
	"models/snowysnowtime/vehicles/halo3/hornet.mdl"
}

ENT.AITEAM = 1

ENT.Mass = 6000
ENT.Inertia = Vector(10000,10000,10000)
ENT.Drag = 1

ENT.SeatPos = Vector(105,0,48)
ENT.SeatAng = Angle(0,-90,10)

ENT.MaxThrustHeli = 5
ENT.MaxTurnPitchHeli = 100
ENT.MaxTurnYawHeli = 100
ENT.MaxTurnRollHeli = 50

ENT.ThrustEfficiencyHeli = 5.2

ENT.RotorPos = Vector(0,0,60)
ENT.RotorAngle = Angle(2,0,0)
ENT.RotorRadius = 10

ENT.MaxHealth = 1850

ENT.MaxPrimaryAmmo = 2500
ENT.MaxSecondaryAmmo = 12
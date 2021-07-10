AddCSLuaFile()

ENT.Base	= "draconic_ammo_station"

ENT.PrintName 	= "Cov Uplink System (Destructible)"
ENT.Author 		= "Snowy Snowtime"
ENT.Information = ""
ENT.Category 	= "Draconic: Extras"

ENT.Spawnable = true
ENT.AdminOnly = false

ENT.Model = "models/snowysnowtime/c_uplink.mdl"

ENT.UseDelay 	= 0.62
ENT.HidePopup = true
ENT.RemoveOnUse = false
ENT.PickupType 	= "stationrequirement"
ENT.UseSound = ""
ENT.DenySound = ""

ENT.Destroyable	= true
ENT.MaxHealth	= 1000
ENT.SpawnHealth	= 1000
ENT.BreakEffect	= "drc_halo_plasmabattery_explode"
ENT.BreakSound	= "snow_plasma_expl"
ENT.DamageDelay	= 0.15

ENT.ExplodeDamage 	= 95
ENT.ExplodePressure	= 25
ENT.DamageType		= DMG_BLAST
ENT.AffectRadius	= 100

if SERVER then
	function ENT:Initialize()
		self.BaseClass.Initialize(self)
		self:SetModel(self.Model)

		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:PhysicsInit(SOLID_VPHYSICS)
		self:PhysWake()
		self:StartLoopingSound("snow_uplink_idle")
	end

	function ENT:OnRemove()
		self:StopSound("snow_uplink_idle")
	end
end

function ENT:DoCustomBreak()
	if SERVER then
		SafeRemoveEntity(self)
	end
end
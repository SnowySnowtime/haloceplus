AddCSLuaFile()

ENT.Base	= "base_anim"
ENT.Entity	= "drc_snow_uplink_useful"

ENT.PrintName 	= "Cov Uplink System"
ENT.Author 		= "Snowy Snowtime"
ENT.Information = ""
ENT.Category 	= "Draconic: Extras"

ENT.Spawnable = true
ENT.AdminOnly = false

ENT.Model = "models/snowysnowtime/c_uplink.mdl"

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
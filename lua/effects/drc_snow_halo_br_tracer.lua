AddCSLuaFile()

EFFECT.DynamicLight			= true
EFFECT.DoTracer				= true

EFFECT.LightColor			= Color(255, 140, 0)
EFFECT.LightBrightness	= 1
EFFECT.LightSize				= 70

EFFECT.TracerColor			= Color(100, 100, 100)
EFFECT.Speed 				= 1000000
EFFECT.Length 				= 1000
EFFECT.BaseMat				= "effects/halo3/8pt_ringed_star_flare"
EFFECT.TailMat				= "effects/halo3/8pt_ringed_star_flare"

EFFECT.MuzzleEffect		= "drc_snow_halo_br_muzzle"
EFFECT.ImpactEffect		= ""

function EFFECT:Init(data)
	self.Position = data:GetStart()
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()

	self.StartPos = self:GetTracerShootPos( self.Position, self.WeaponEnt, self.Attachment )
	self.EndPos = data:GetOrigin()
	self.Entity:SetRenderBoundsWS(self.StartPos, self.EndPos)
	
	local sub = self.EndPos - self.StartPos
	
	self.Normal = sub:GetNormal()
	self.StartTime = 0

	self.LifeTime = (sub:Length() + self.Length) / self.Speed
	local weapon = data:GetEntity()

	if (IsValid(weapon) and (not weapon:IsWeapon() or not weapon:IsCarriedByLocalPlayer())) then
		local dist, pos, time = util.DistanceToLine(self.StartPos, self.EndPos, EyePos())
	end
	
	local ImpactData = EffectData()
		ImpactData:SetOrigin(self. EndPos )
		ImpactData:SetStart( self.StartPos )
		ImpactData:SetAttachment( 1 )
		ImpactData:SetEntity( self )
	util.Effect( self.ImpactEffect, ImpactData )
	
	local MuzzleData = EffectData()
		MuzzleData:SetOrigin(self. StartPos )
		MuzzleData:SetStart( self.EndPos )
		MuzzleData:SetAttachment( 1 )
		MuzzleData:SetEntity( self )
	util.Effect( self.MuzzleEffect, MuzzleData )
end

function EFFECT:Think()

	self.LifeTime = self.LifeTime - FrameTime()
	self.StartTime = self.StartTime + FrameTime()
	
	local ParticleLight = DynamicLight(self:EntIndex())
	local endDistance = self.Speed * self.StartTime
	local endPos = self.StartPos + self.Normal * endDistance
	
	if self.DynamicLight == true then
		if (ParticleLight) then
			ParticleLight.pos = endPos
			ParticleLight.r = self.LightColor.r
			ParticleLight.g = self.LightColor.g
			ParticleLight.b = self.LightColor.b
			ParticleLight.brightness = self.LightBrightness
			ParticleLight.Decay = 1000
			ParticleLight.Size = self.LightSize
			ParticleLight.nomodel = 0
			ParticleLight.style = 6
			ParticleLight.DieTime = CurTime() + 3
		end
	else end
		
	return self.LifeTime > 0
end

function EFFECT:Render()
	local endDistance = self.Speed * self.StartTime
	local startDistance = endDistance - self.Length
	
	startDistance = math.max(0, startDistance)
	endDistance = math.max(0, endDistance)
	
	local startPos = self.StartPos + self.Normal * startDistance
	local endPos = self.StartPos + self.Normal * endDistance
	
	if self.DoTracer == true then
		render.SetMaterial(Material(self.TailMat))
		render.DrawSprite(endPos, 24, 24, Color(self.TracerColor.r, self.TracerColor.g, self.TracerColor.b))
		render.SetMaterial(Material(self.BaseMat))
		render.DrawBeam(startPos, endPos, 10, 0, 100, Color(self.TracerColor.r, self.TracerColor.g, self.TracerColor.b))
	else end
end
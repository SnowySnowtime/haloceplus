include("shared.lua")

function ENT:Initialize()	
	self.PixVis = util.GetPixelVisibleHandle()
	
	self.Materials = {
		"effects/halo3/smoke_volumetric",
		"effects/halo3/smoke_soft",
		"effects/halo3/soft_smoke_large",
		"effects/halo3/soft_smoke_small",
		"effects/halo3/thin_smoke_large",
		"effects/halo3/thin_smoke_small",
		"effects/halo3/soft_dust_large",
		"effects/halo_spv3/energy/gooey",
	}
	
	self.OldPos = self:GetPos()
	
	self.emitter = ParticleEmitter(self.OldPos, false )
end

local mat = Material( "effects/halo2/explosion_01" )
function ENT:Draw()
end

function ENT:Think()
	local curtime = CurTime()
	local pos = self:GetPos()
	
	if pos ~= self.OldPos then
		self:doFX( pos, self.OldPos )
		self.OldPos = pos
	end
	
	return true
end

function ENT:doFX( newpos, oldpos )
	if not self.emitter then return end
	
	local Sub = (newpos - oldpos)
	local Dir = Sub:GetNormalized()
	local Len = Sub:Length()
	
	for i = 1, Len, 15 do
		local pos = oldpos + Dir * i
	
		local particle = self.emitter:Add( self.Materials[math.random(1, table.Count(self.Materials) )], pos )
		
		if particle then
			particle:SetGravity( Vector(0,0,900) + VectorRand() * 50 ) 
			particle:SetVelocity( -self:GetForward() * 500  )
			particle:SetAirResistance( 600 ) 
			particle:SetDieTime( math.Rand(0.5,2) )
			particle:SetStartAlpha( 80 )
			particle:SetStartSize( (math.Rand(6,16) / 20) * self:GetSize() )
			particle:SetEndSize( (math.Rand(20,40) / 20) * self:GetSize() )
			particle:SetRoll( math.Rand( -45, 45 ) )
			particle:SetColor( 120,120,120 )
			particle:SetCollide( false )
		end
	
		local particle = self.emitter:Add( mat, pos )
		if particle then
			particle:SetVelocity( -self:GetForward() * 300 + self:GetVelocity())
			particle:SetDieTime( 0.1 )
			particle:SetAirResistance( 0 ) 
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( self:GetSize() )
			particle:SetEndSize( 0 )
			particle:SetRoll( math.Rand(-1,1) )
			particle:SetColor( 255,255,255 )
			particle:SetGravity( Vector( 0, 0, 0 ) )
			particle:SetCollide( false )
		end
	end
end

function ENT:OnRemove()
	local effectdata = EffectData()
		effectdata:SetOrigin( self:GetPos() )
	util.Effect( self:GetBlastEffect(), effectdata )
	
	if self.emitter then
		self.emitter:Finish()
	end
end

function ENT:Explosion( pos )
	if not self.emitter then return end
	local dlight = DynamicLight( math.random(0,9999) )
	if dlight then
		dlight.pos = pos
		dlight.r = 255
		dlight.g = 180
		dlight.b = 100
		dlight.brightness = 8
		dlight.Decay = 2000
		dlight.Size = 200
		dlight.DieTime = CurTime() + 0.1
	end
end
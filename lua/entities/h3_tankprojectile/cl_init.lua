include("shared.lua")

function ENT:Initialize()	
	self.PixVis = util.GetPixelVisibleHandle()
	
	self.Materials = {
		"effects/halo3/fire_large",
		"effects/halo3/fire_small",
		"effects/halo3/muzzle_flash_round_fiery",
		"effects/halo3/flash_large",
		"effects/halo3/muzzle_flash_round_gaseous",
		"effects/halo3/explosive_burst",
		"effects/hce/plasma_noise",
		"effects/hce/spark2",
		"effects/hce/spark3",
		"effects/hce/spark4",
		"effects/halo_reach/plasma_mask",
		"effects/halo_reach/pulse",
	}

	self.OldPos = self:GetPos()
	
	self.emitter = ParticleEmitter(self.OldPos, false )
end

local mat = Material( "effects/halo3/fire_large" )
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
	
		local particle = self.emitter:Add( self.Materials[math.random(1,12)], pos )
		if particle then
			particle:SetGravity( Vector(0,0,0) + VectorRand() * 150 ) 
			particle:SetVelocity( -self:GetForward() * 500  )
			particle:SetAirResistance( 200 ) 
			particle:SetDieTime( math.Rand(0.1,0.3) )
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( (math.Rand(6,12) / 20) * self:GetSize() )
			particle:SetEndSize( (math.Rand(20,30) / 20) * self:GetSize() )
			particle:SetRoll( math.Rand( -1, 1 ) )
			particle:SetColor( 255,170,100 )
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
	
	for i = 0,60 do
		local particle = self.emitter:Add( self.Materials[math.random(1,table.Count( self.Materials ))], pos )
		
		if particle then
			particle:SetVelocity(  VectorRand() * 600 )
			particle:SetDieTime( math.Rand(4,6) )
			particle:SetAirResistance( math.Rand(200,600) ) 
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( math.Rand(10,30) )
			particle:SetEndSize( math.Rand(80,120) )
			particle:SetRoll( math.Rand(-1,1) )
			particle:SetColor( 100,100,100 )
			particle:SetGravity( Vector( 0, 0, 100 ) )
			particle:SetCollide( false )
		end
	end
	
	for i = 0, 40 do
		local particle = self.emitter:Add( "sprites/flamelet"..math.random(1,5), pos )
		
		if particle then
			particle:SetVelocity( VectorRand() * 500 )
			particle:SetDieTime( 0.14 )
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( 10 )
			particle:SetEndSize( math.Rand(30,60) )
			particle:SetEndAlpha( 100 )
			particle:SetRoll( math.Rand( -1, 1 ) )
			particle:SetColor( 200,150,150 )
			particle:SetCollide( false )
		end
	end
	
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
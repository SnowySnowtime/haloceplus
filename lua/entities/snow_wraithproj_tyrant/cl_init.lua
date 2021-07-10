include("shared.lua")

function ENT:Initialize()	
	self.PixVis = util.GetPixelVisibleHandle()
	
	self.Materials = {
		"effects/halo3/fire_large",
		"effects/halo3/fire_small"
	}
	
	self.OldPos = self:GetPos()
	self:EmitSound("wraith_loop", 74)
	self.emitter = ParticleEmitter(self.OldPos, false )
	self:doFX( pos, self.OldPos )
end

local mat = Material( "effects/halo3/electric_arcs" )
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
		
		local particle = self.emitter:Add( "effects/halo3/8pt_ringed_star_flare", pos )
		if particle then
			particle:SetGravity( Vector(0,0,0) + VectorRand() * 50 ) 
			particle:SetVelocity( -self:GetForward() * 1  )
			particle:SetAirResistance( 600 ) 
			particle:SetDieTime( math.Rand(0.1,0.5) )
			particle:SetStartAlpha( 150 )
			particle:SetStartSize( (math.Rand(6,12) / 3) * self:GetSize() )
			particle:SetEndSize( (math.Rand(20,30) / 3) * self:GetSize() )
			particle:SetRoll( math.Rand( -50, 50 ) )
			particle:SetColor( 0,172,255 )
			particle:SetCollide( false )
		end
		
		local particle = self.emitter:Add( "effects/halo3/8pt_ringed_star_flare", pos )
		if particle then
			particle:SetGravity( Vector(0,0,0) + VectorRand() * 50 ) 
			particle:SetVelocity( -self:GetForward() * 1  )
			particle:SetAirResistance( 600 ) 
			particle:SetDieTime( 1 )
			particle:SetStartAlpha( 10 )
			particle:SetStartSize( (math.Rand(25,30) / 1.4) * self:GetSize() )
			particle:SetEndSize( (math.Rand(0,0) / 1.4) * self:GetSize() )
			particle:SetRoll( math.Rand( -50, 50 ) )
			particle:SetColor( 0,172,255 )
			particle:SetCollide( false )
		end
		
		local particle = self.emitter:Add( self.Materials[math.random(1, table.Count(self.Materials) )], pos )
		if particle then
			particle:SetGravity( Vector(0,0,0) + VectorRand() * 50 ) 
			particle:SetVelocity( -self:GetForward() * 1  )
			particle:SetAirResistance( 600 ) 
			particle:SetDieTime( math.Rand(0.1,0.5) )
			particle:SetStartAlpha( 75 )
			particle:SetStartSize( (math.Rand(5,5) / 5) * self:GetSize() )
			particle:SetEndSize( (math.Rand(30,30) / 5) * self:GetSize() )
			particle:SetRoll( math.Rand( -50, 50 ) )
			particle:SetColor( 0,172,255 )
			particle:SetCollide( false )
		end
		
		local particle = self.emitter:Add( "effects/halo3/8pt_ringed_star_flare", pos )
		if particle then
			particle:SetGravity( Vector(0,0,0) + VectorRand() * 50 ) 
			particle:SetVelocity( -self:GetForward() * 1  )
			particle:SetAirResistance( 600 ) 
			particle:SetDieTime( math.Rand(0.1,0.5) )
			particle:SetStartAlpha( 100 )
			particle:SetStartSize( (math.Rand(25,25) / 5) * self:GetSize() )
			particle:SetEndSize( (math.Rand(5,5) / 5) * self:GetSize() )
			particle:SetRoll( math.Rand( -50, 50 ) )
			particle:SetColor( 195,255,255 )
			particle:SetCollide( false )
		end

		local particle = self.emitter:Add( self.Materials[math.random(1, table.Count(self.Materials) )], pos )
		if particle then
			particle:SetGravity( Vector(0,0,0) + VectorRand() * 50 ) 
			particle:SetVelocity( -self:GetForward() * 1  )
			particle:SetAirResistance( 600 ) 
			particle:SetDieTime( math.Rand(0.1,0.5) )
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( (math.Rand(35,40) / 5) * self:GetSize() )
			particle:SetEndSize( (math.Rand(5,5) / 5) * self:GetSize() )
			particle:SetRoll( math.Rand( -50, 50 ) )
			particle:SetColor( 0,172,255 )
			particle:SetCollide( false )
		end
		
		local particle = self.emitter:Add( self.Materials[math.random(1, table.Count(self.Materials) )], pos )
		if particle then
			particle:SetGravity( Vector(0,0,0) + VectorRand() * 50 ) 
			particle:SetVelocity( -self:GetForward() * 1  )
			particle:SetAirResistance( 600 ) 
			particle:SetDieTime( math.Rand(0.1,0.5) )
			particle:SetStartAlpha( 50 )
			particle:SetStartSize( (math.Rand(35,40) / 5) * self:GetSize() )
			particle:SetEndSize( (math.Rand(5,5) / 5) * self:GetSize() )
			particle:SetRoll( math.Rand( -50, 50 ) )
			particle:SetColor( 0,172,255 )
			particle:SetCollide( false )
		end
		
		local particle = self.emitter:Add( self.Materials[math.random(1, table.Count(self.Materials) )], pos )
		if particle then
			particle:SetGravity( Vector(0,0,0) + VectorRand() * 50 ) 
			particle:SetVelocity( -self:GetForward() * 1  )
			particle:SetAirResistance( 600 ) 
			particle:SetDieTime( math.Rand(0.1,0.5) )
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( (math.Rand(35,40) / 6) * self:GetSize() )
			particle:SetEndSize( (math.Rand(5,5) / 6) * self:GetSize() )
			particle:SetRoll( math.Rand( -50, 50 ) )
			particle:SetColor( 0,172,255 )
			particle:SetCollide( false )
		end
	
		local particle = self.emitter:Add( mat, pos )
		if particle then
			particle:SetVelocity( -self:GetForward() * 1)
			particle:SetDieTime( 0.7 )
			particle:SetAirResistance( 0 ) 
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( (math.Rand(50,100) / 1) )
			particle:SetEndSize( 0 )
			particle:SetRoll( math.Rand(-5,30) )
			particle:SetColor( 0,172,255 )
			particle:SetGravity( Vector( 0, 0, 0 ) )
			particle:SetCollide( false )
		end
		
		local particle = self.emitter:Add( mat, pos )
		if particle then
			particle:SetVelocity( -self:GetForward() * 1)
			particle:SetDieTime( 0.45 )
			particle:SetAirResistance( 0 ) 
			particle:SetStartAlpha( 200 )
			particle:SetStartSize( (math.Rand(75,75) / 1) )
			particle:SetEndSize( 0 )
			particle:SetRoll( math.Rand(-5,30) )
			particle:SetColor( 195,255,255 )
			particle:SetGravity( Vector( 0, 0, 0 ) )
			particle:SetCollide( false )
		end
		
		local particle = self.emitter:Add( mat, pos )
		if particle then
			particle:SetVelocity( -self:GetForward() * 1)
			particle:SetDieTime( 0.8 )
			particle:SetAirResistance( 0 ) 
			particle:SetStartAlpha( 25 )
			particle:SetStartSize( (math.Rand(125,200) / 1) )
			particle:SetEndSize( 50 )
			particle:SetRoll( math.Rand(-45,75) )
			particle:SetColor( 0,172,255 )
			particle:SetGravity( Vector( 0, 0, 0 ) )
			particle:SetCollide( false )
		end
	end
end

function ENT:OnRemove()
	local effectdata = EffectData()
		effectdata:SetOrigin( self:GetPos() )
	util.Effect( self:GetBlastEffect(), effectdata )
	self:StopSound("wraith_loop")
	
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
			particle:SetColor( 50,50,50 )
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
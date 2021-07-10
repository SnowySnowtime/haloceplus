function EFFECT:Init( data )
	local Pos = data:GetOrigin()
	
	self.Position = data:GetStart()
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	self.DataNormal = data:GetNormal()
	
	self.StartPos = self:GetTracerShootPos( self.Position, self.WeaponEnt, self.Attachment )
	self.EndPos = data:GetOrigin()
	self.Entity:SetRenderBoundsWS(self.StartPos, self.EndPos)
	
	local sub = self.EndPos - self.StartPos
	self.Normal = sub:GetNormal()
	
	local emitter = ParticleEmitter( Pos )
	
	for i = 1,7 do

		local particle = emitter:Add( "effects/draconic_halo/flash_large", Pos + Vector( math.random(0,0),math.random(0,0),math.random(0,0))) 
		 
		if particle == nil then particle = emitter:Add( "effects/draconic_halo/flash_large", Pos + Vector(   math.random(0,0),math.random(0,0),math.random(0,0) ) ) end
		
		if (particle) then
			particle:SetVelocity(Vector(0, 0, 0))
			particle:SetLifeTime(0) 
			particle:SetDieTime(.2) 
			particle:SetStartAlpha(255)
			particle:SetEndAlpha(0)
			particle:SetStartSize(30.5870467639842) 
			particle:SetEndSize(20.012735977598182)
			particle:SetAngleVelocity( Angle(15) ) 
			particle:SetRoll(math.Rand( 0, 360 ))
			particle:SetColor(255, 90, 175)
			particle:SetGravity( Vector(0,0,0) ) 
			particle:SetAirResistance(-68.167394537726 )  
			particle:SetCollide(true)
			particle:SetBounce(0.1419790559388)
		end
		
		local particle = emitter:Add( "effects/halo_spv3/energy/sharp_plasma", Pos + Vector( math.random(0,0),math.random(0,0),math.random(0,0))) 
		 
		if particle == nil then particle = emitter:Add( "effects/halo_spv3/energy/sharp_plasma", Pos + Vector(   math.random(0,0),math.random(0,0),math.random(0,0) ) ) end
		
		if (particle) then
			particle:SetVelocity(Vector(0, 0, 0))
			particle:SetLifeTime(0) 
			particle:SetDieTime(.8) 
			particle:SetStartAlpha(255)
			particle:SetEndAlpha(0)
			particle:SetStartSize(30.5870467639842) 
			particle:SetEndSize(0)
			particle:SetAngleVelocity( Angle(0) ) 
			particle:SetRoll(math.Rand( 0, 360 ))
			particle:SetColor(75, 10, 75)
			particle:SetGravity( Vector(0,0,0) ) 
			particle:SetAirResistance(-68.167394537726 )  
			particle:SetCollide(true)
			particle:SetBounce(0.1419790559388)
		end
	end
	
	local emitter2 = ParticleEmitter( Pos )
	
	for i = 1,3 do

		local particle2 = emitter2:Add( "effects/halo3/electric_bolts", Pos + Vector( math.random(-6,6),math.random(-6,6),math.random(0,0))) 
		 
		if particle2 == nil then particle2 = emitter2:Add( "effects/halo3/electric_bolts", Pos + Vector(   math.random(-6,6),math.random(-6,6),math.random(0,0) ) ) end
		
		if (particle2) then
			particle2:SetVelocity((-self.Normal+VectorRand() * 1):GetNormal() * math.Rand(35, 225));
			particle2:SetLifeTime(math.Rand(0.05, 0.5)) 
			particle2:SetDieTime(1.5) 
			particle2:SetStartAlpha(255)
			particle2:SetEndAlpha(0)
			particle2:SetStartSize(2) 
			particle2:SetEndSize(0)
			particle2:SetAngleVelocity( Angle(4.2934407040912,14.149586106307,0.18606363772742) ) 
			particle2:SetRoll(math.Rand( 0, 360 ))
			particle2:SetColor(255, 75, 190)
			particle2:SetGravity( Vector(0,0,-30) ) 
			particle2:SetAirResistance(0)  
			particle2:SetCollide(true)
			particle2:SetBounce(0)
		end
		
		local particle2 = emitter2:Add( "effects/halo_spv3/energy/sharp_plasma", Pos + Vector( math.random(-6,6),math.random(-6,6),math.random(0,0))) 
		 
		if particle2 == nil then particle2 = emitter2:Add( "effects/halo_spv3/energy/sharp_plasma", Pos + Vector(   math.random(-6,6),math.random(-6,6),math.random(0,0) ) ) end
		
		if (particle2) then
			particle2:SetVelocity((-self.Normal+VectorRand() * 1):GetNormal() * math.Rand(35, 225));
			particle2:SetLifeTime(math.Rand(0.05, 0.5)) 
			particle2:SetDieTime(4) 
			particle2:SetStartAlpha(255)
			particle2:SetEndAlpha(255)
			particle2:SetStartSize(2) 
			particle2:SetEndSize(0)
			particle2:SetAngleVelocity( Angle(4.2934407040912,14.149586106307,0.18606363772742) ) 
			particle2:SetRoll(math.Rand( 0, 360 ))
			particle2:SetColor(255, 75, 190)
			particle2:SetGravity( Vector(0,0,-1000) ) 
			particle2:SetAirResistance(0)  
			particle2:SetCollide(true)
			particle2:SetBounce(0)
		end
		
		local particle2 = emitter2:Add( "effects/halo_spv3/energy/gooey", Pos + Vector( math.random(-6,6),math.random(-6,6),math.random(0,0))) 
		 
		if particle2 == nil then particle2 = emitter2:Add( "effects/halo_spv3/energy/gooey", Pos + Vector(   math.random(-6,6),math.random(-6,6),math.random(0,0) ) ) end
		
		if (particle2) then
			particle2:SetVelocity((-self.Normal+VectorRand() * 1):GetNormal() * math.Rand(35, 225));
			particle2:SetLifeTime(math.Rand(0.05, 0.5)) 
			particle2:SetDieTime(4) 
			particle2:SetStartAlpha(255)
			particle2:SetEndAlpha(0)
			particle2:SetStartSize(2) 
			particle2:SetEndSize(0)
			particle2:SetAngleVelocity( Angle(4.2934407040912,14.149586106307,0.18606363772742) ) 
			particle2:SetRoll(math.Rand( 0, 360 ))
			particle2:SetColor(255, 75, 190)
			particle2:SetGravity( Vector(0,0,-1000) ) 
			particle2:SetAirResistance(0)  
			particle2:SetCollide(true)
			particle2:SetBounce(0)
		end
		
		local particle2 = emitter2:Add( "effects/halo3/electric_arcs", Pos + Vector( math.random(6,-6),math.random(6,-6),math.random(0,0))) 
		 
		if particle2 == nil then particle2 = emitter2:Add( "effects/halo3/electric_arcs", Pos + Vector(   math.random(6,-6),math.random(6,-6),math.random(0,0) ) ) end
		
		if (particle2) then
			particle2:SetVelocity((-self.Normal+VectorRand() * 1):GetNormal() * math.Rand(35, 225));
			particle2:SetLifeTime(math.Rand(0.05, 0.5)) 
			particle2:SetDieTime(1.5) 
			particle2:SetStartAlpha(255)
			particle2:SetEndAlpha(255)
			particle2:SetStartSize(2) 
			particle2:SetEndSize(0)
			particle2:SetAngleVelocity( Angle(4.2934407040912,14.149586106307,0.18606363772742) ) 
			particle2:SetRoll(math.Rand( 0, 360 ))
			particle2:SetColor(255, 75, 190)
			particle2:SetGravity( Vector(0,0,-30) ) 
			particle2:SetAirResistance(0)  
			particle2:SetCollide(true)
			particle2:SetBounce(0)
		end
	end

	emitter:Finish()
		
end

function EFFECT:Think()		
	return false
end

function EFFECT:Render()
end


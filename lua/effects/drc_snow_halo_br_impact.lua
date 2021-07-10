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

		local particle = emitter:Add( "effects/halo3/spark_long_vertical", Pos + Vector( math.random(0,0),math.random(0,0),math.random(0,0))) 
		 
		if particle == nil then particle = emitter:Add( "effects/halo3/spark_long_vertical", Pos + Vector(   math.random(0,0),math.random(0,0),math.random(0,0) ) ) end
		
		if (particle) then
			particle:SetVelocity((-self.Normal+VectorRand() * 1):GetNormal() * math.Rand(35, 225));
			particle:SetLifeTime(math.Rand(0.05, 0.05)) 
			particle:SetDieTime(6) 
			particle:SetStartAlpha(255)
			particle:SetEndAlpha(0)
			particle:SetStartSize(1) 
			particle:SetEndSize(0)
			particle:SetAngleVelocity( Angle(4.2934407040912,14.149586106307,0.18606363772742) ) 
			particle:SetRoll(math.Rand( 0, 360 ))
			particle:SetColor(0, 255, 0)
			particle:SetGravity( Vector(0,0,-400) ) 
			particle:SetAirResistance(0)  
			particle:SetCollide(true)
			particle:SetBounce(0)
		end
	end
	emitter:Finish()
		
end

function EFFECT:Think()		
	return false
end

function EFFECT:Render()
end


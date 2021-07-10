function EFFECT:Init( data )
	local Pos = data:GetOrigin()
	
	self.Position = data:GetStart()
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	
	self.LifeTime = .025
	self.DieTime	= 0.025
	
	local emitter = ParticleEmitter( Pos )
	local emitter2 = ParticleEmitter( Pos )
	
	for i = 1,7 do
		local particle = emitter:Add( "effects/draconic_halo/flash_soft", Pos + Vector( math.random(0,0),math.random(0,0),math.random(0,0) ) ) 
		if particle == nil then particle = emitter:Add( "effects/draconic_halo/flash_soft", Pos + Vector(   math.random(0,0),math.random(0,0),math.random(0,0) ) ) end
		if (particle) then
			particle:SetVelocity(Vector(math.random(-4,4),math.random(-4,4),math.random(0,0)))
			particle:SetLifeTime(0) 
			particle:SetDieTime(0.1) 
			particle:SetStartAlpha(255)
			particle:SetEndAlpha(0)
			particle:SetStartSize(math.Rand(6.5, 18.5)) 
			particle:SetEndSize(math.Rand(0.5, 1))
			particle:SetAngles( Angle(21.424716258016,3.5762036133102,5.6347174018494) )
			particle:SetAngleVelocity( Angle(15) ) 
			particle:SetRoll(math.Rand( 0, 360 ))
			particle:SetColor(0, math.Rand(30,40), math.Rand(30,220))
			particle:SetGravity( Vector(0,0,0) ) 
			particle:SetAirResistance(-68.167394537726 )  
			particle:SetCollide(true)
			particle:SetBounce(0)
		end
	end
	
	for i = 1,7 do
		local particle2 = emitter2:Add( "effects/draconic_halo/flash_large", Pos + Vector( math.random(0,0),math.random(0,0),math.random(0,0) ) ) 
		if particle2 == nil then particle = emitter2:Add( "effects/draconic_halo/flash_large", Pos + Vector(   math.random(0,0),math.random(0,0),math.random(0,0) ) ) end
		if (particle2) then
			particle2:SetVelocity(Vector(math.random(-4,4),math.random(-4,4),math.random(0,0)))
			particle2:SetLifeTime(0) 
			particle2:SetDieTime(0.1) 
			particle2:SetStartAlpha(math.Rand(10,50))
			particle2:SetEndAlpha(0)
			particle2:SetStartSize(math.Rand(6.5, 22.5)) 
			particle2:SetEndSize(math.Rand(0.5, 1))
			particle2:SetAngles( Angle(21.424716258016,3.5762036133102,5.6347174018494) )
			particle2:SetAngleVelocity( Angle(15) ) 
			particle2:SetRoll(math.Rand( 0, 360 ))
			particle2:SetColor(math.Rand(200,250), 0, math.Rand(100,220))
			particle2:SetGravity( Vector(0,0,0) ) 
			particle2:SetAirResistance(-68.167394537726 )  
			particle2:SetCollide(true)
			particle2:SetBounce(0)
		end
	end

	emitter:Finish()
	emitter2:Finish()
		
end

function EFFECT:Think()	
	return false
end

function EFFECT:Render()
end


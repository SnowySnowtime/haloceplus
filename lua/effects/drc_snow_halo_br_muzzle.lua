function EFFECT:Init( data )
	local Pos = data:GetOrigin()
	
	self.Position = data:GetStart()
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	
	local emitter = ParticleEmitter( Pos )
	
	for i = 1,1 do

		local particle = emitter:Add( "effects/halo3/muzzle_br", Pos + Vector( math.random(0,0),math.random(0,0),math.random(0,0) ) ) 
		 
		if particle == nil then particle = emitter:Add( "effects/halo3/muzzle_br", Pos + Vector(   math.random(0,0),math.random(0,0),math.random(0,0) ) ) end
		
		if (particle) then
			particle:SetVelocity(Vector(math.random(0,0),math.random(0,0),math.random(0,0)))
			particle:SetLifeTime(0) 
			particle:SetDieTime(0.03) 
			particle:SetStartAlpha(255)
			particle:SetEndAlpha(255)
			particle:SetStartSize(math.Rand(9, 9)) 
			particle:SetEndSize(math.Rand(9, 9))
			particle:SetAngles( Angle(0,0,0) )
			particle:SetAngleVelocity( Angle(0) ) 
			particle:SetRoll(math.Rand( -0.15, 0.15 ))
			particle:SetColor(255, 235, 140)
			particle:SetGravity( Vector(0,0,0) ) 
			particle:SetAirResistance(0 )  
			particle:SetCollide(true)
			particle:SetBounce(0.1419790559388)
		end
	end
	
	for i = 1,1 do

		local particle = emitter:Add( "effects/halo3/muzzle_br", Pos + Vector( math.random(0,0),math.random(0,0),math.random(0,0) ) ) 
		 
		if particle == nil then particle = emitter:Add( "effects/halo3/muzzle_br", Pos + Vector(   math.random(0,0),math.random(0,0),math.random(0,0) ) ) end
		
		if (particle) then
			particle:SetVelocity(Vector(math.random(0,0),math.random(0,0),math.random(0,0)))
			particle:SetLifeTime(0) 
			particle:SetDieTime(0.03) 
			particle:SetStartAlpha(255)
			particle:SetEndAlpha(0)
			particle:SetStartSize(math.Rand(9, 9)) 
			particle:SetEndSize(math.Rand(9, 9))
			particle:SetAngles( Angle(0,0,0) )
			particle:SetAngleVelocity( Angle(0) ) 
			particle:SetRoll(math.Rand( -0.15, 0.15 ))
			particle:SetColor(255, 225, 0)
			particle:SetGravity( Vector(0,0,0) ) 
			particle:SetAirResistance(0 )  
			particle:SetCollide(true)
			particle:SetBounce(0.1419790559388)
		end
	end
	
	for i = 1,1 do

		local particle = emitter:Add( "effects/halo3/muzzle_flash_round_gaseous", Pos + Vector( math.random(0,0),math.random(0,0),math.random(0,0) ) ) 
		 
		if particle == nil then particle = emitter:Add( "effects/halo3/muzzle_flash_round_gaseous", Pos + Vector(   math.random(0,0),math.random(0,0),math.random(0,0) ) ) end
		
		if (particle) then
			particle:SetVelocity(Vector(math.random(0,0),math.random(0,0),math.random(0,0)))
			particle:SetLifeTime(0) 
			particle:SetDieTime(0.05) 
			particle:SetStartAlpha(255)
			particle:SetEndAlpha(0)
			particle:SetStartSize(math.Rand(7, 7)) 
			particle:SetEndSize(math.Rand(7, 7))
			particle:SetAngles( Angle(0,0,0) )
			particle:SetAngleVelocity( Angle(0) ) 
			particle:SetRoll(math.Rand( 0, 360 ))
			particle:SetColor(255, 240, 100)
			particle:SetGravity( Vector(0,0,0) ) 
			particle:SetAirResistance(0 )  
			particle:SetCollide(true)
			particle:SetBounce(0.1419790559388)
		end
	end
	
	for i = 1,1 do

		local particle = emitter:Add( "effects/halo3/fire_large", Pos + Vector( math.random(0,0),math.random(0,0),math.random(0,0) ) ) 
		 
		if particle == nil then particle = emitter:Add( "effects/halo3/fire_large", Pos + Vector(   math.random(0,0),math.random(0,0),math.random(0,0) ) ) end
		
		if (particle) then
			particle:SetVelocity(Vector(math.random(0,0),math.random(0,0),math.random(0,0)))
			particle:SetLifeTime(0) 
			particle:SetDieTime(0.05) 
			particle:SetStartAlpha(255)
			particle:SetEndAlpha(255)
			particle:SetStartSize(math.Rand(11, 11)) 
			particle:SetEndSize(math.Rand(6, 6))
			particle:SetAngles( Angle(0,0,0) )
			particle:SetAngleVelocity( Angle(0) ) 
			particle:SetRoll(math.Rand( -360, 360 ))
			particle:SetColor(255, 170, 0)
			particle:SetGravity( Vector(0,0,0) ) 
			particle:SetAirResistance(0 )  
			particle:SetCollide(true)
			particle:SetBounce(0.1419790559388)
		end
	end
	
	for i = 1,2 do

		local particle = emitter:Add( "effects/halo3/smoke_soft", Pos + Vector( math.random(0,0),math.random(0,0),math.random(0,0) ) ) 
		 
		if particle == nil then particle = emitter:Add( "effects/halo3/smoke_soft", Pos + Vector(   math.random(0,0),math.random(0,0),math.random(0,0) ) ) end
		
		if (particle) then
			particle:SetVelocity(Vector(math.random(0,0),math.random(0,0),math.random(0,0)))
			particle:SetLifeTime(0) 
			particle:SetDieTime(0.05) 
			particle:SetStartAlpha(100)
			particle:SetEndAlpha(100)
			particle:SetStartSize(math.Rand(17, 17)) 
			particle:SetEndSize(math.Rand(17, 17))
			particle:SetAngles( Angle(0,0,0) )
			particle:SetAngleVelocity( Angle(0) ) 
			particle:SetRoll(math.Rand( -360, 360 ))
			particle:SetColor(255, 170, 0)
			particle:SetGravity( Vector(0,0,0) ) 
			particle:SetAirResistance(0 )  
			particle:SetCollide(true)
			particle:SetBounce(0.1419790559388)
		end
	end
	

	emitter:Finish()
		
end

function EFFECT:Think()	
	return false
end

function EFFECT:Render()
end


function EFFECT:Init( data )
	local Pos = data:GetOrigin()
	
	self:Explosion( Pos )
	
	local random = math.random(1,3)
	
	if random == 1 then
		sound.Play( "customedition/scorp_expl1.wav", Pos, 95, 100, 1 )
	elseif random == 2 then
		sound.Play( "customedition/scorp_expl2.wav", Pos, 95, 140, 1 )
	else
		sound.Play( "customedition/scorp_expl3.wav", Pos, 95, 100, 1 )
	end
end

function EFFECT:Explosion( pos )
	local emitter = ParticleEmitter( pos, false )
	
	for i= 0,5 do
	    local particle = emitter:Add("effects/halo3/explosive_burst", pos)
		if particle then
			particle:SetVelocity( 25 * VectorRand() )
			particle:SetDieTime( 0.2 )
			particle:SetStartAlpha( 255 )
			particle:SetEndAlpha( 0 )
			particle:SetStartSize( math.Rand(5,15) )
			particle:SetEndSize( math.Rand(150,300) )
			particle:SetRoll( math.Rand(0,360) )
			particle:SetRollDelta( math.Rand(0,0) )
			particle:SetColor( 225, 215, 255 )
			particle:SetAirResistance( 55 )
			particle:SetLighting( false )
			particle:SetCollide( false )
		end
	end
	
    for i= 0,5 do
		local particle = emitter:Add( "effects/halo3/flare1" , pos )
		if particle then
			 particle:SetVelocity( 1 * VectorRand() )
			particle:SetDieTime( math.Rand(0.1, 0.15) )
			particle:SetStartAlpha( 200 )
			particle:SetEndAlpha( 0 )
			particle:SetStartSize( math.Rand(10,15) )
			particle:SetEndSize( math.Rand(175,200) )
			particle:SetRoll( math.Rand(0,360) )
			particle:SetRollDelta( math.Rand(-1,1) )
			particle:SetColor( 100,135,255 )
			particle:SetAirResistance( 200 )
			particle:SetGravity( Vector( 0, 0, math.Rand(10,40) ) )
			particle:SetLighting( false )
			particle:SetCollide( true )
			particle:SetBounce( 0.5 )
		end
	end

	for i= 0,5 do
        local particle = emitter:Add( "effects/halo3/flare1" , pos )
		if particle then
			particle:SetVelocity( 1 * VectorRand() )
			particle:SetDieTime( math.Rand(0.1, 0.15) )
			particle:SetStartAlpha( 200 )
			particle:SetEndAlpha( 0 )
			particle:SetStartSize( math.Rand(10,15) )
			particle:SetEndSize( math.Rand(175,200) )
			particle:SetRoll( math.Rand(0,360) )
			particle:SetRollDelta( math.Rand(-1,1) )
			particle:SetColor( 255,255,200 )
			particle:SetAirResistance( 200 )
			particle:SetGravity( Vector( 0, 0, math.Rand(10,40) ) )
			particle:SetLighting( false )
			particle:SetCollide( true )
			particle:SetBounce( 0.5 )
		end
	end
	
    for i = 0,5 do
        local particle = emitter:Add( "effects/halo3/electric_arcs", pos )
		if particle then
			 particle:SetVelocity( 1 * VectorRand() )
			particle:SetDieTime( math.Rand(0.25, 0.3) )
			particle:SetStartAlpha( 225 )
			particle:SetEndAlpha( 0 )
			particle:SetStartSize( math.Rand(20,35) )
			particle:SetEndSize( math.Rand(150,175) )
			particle:SetRoll( math.Rand(0,360) )
			particle:SetRollDelta( math.Rand(-1,1) )
			particle:SetColor( 175,185,255 )
			particle:SetAirResistance( 200 )
			particle:SetGravity( Vector( 0, 0, math.Rand(10,40) ) )
			particle:SetLighting( false )
			particle:SetCollide( true )
			particle:SetBounce( 0.5 )
		end
	end

    emitter:Finish()
	
	local dlight = DynamicLight( math.random(0,9999) )
	if dlight then
		dlight.pos = pos
		dlight.r = 155
		dlight.g = 200
		dlight.b = 200
		dlight.brightness = 8
		dlight.Decay = 2000
		dlight.Size = 300
		dlight.DieTime = CurTime() + 0.1
	end
end

function EFFECT:Think()
	return false
end

function EFFECT:Render()
end

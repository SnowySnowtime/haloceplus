function EFFECT:Init( data )
	local Pos = data:GetOrigin()
	
	self:Explosion( Pos )
	
	local random = math.random(1,3)
	
	if random == 1 then
		sound.Play( "vehicles/scorpion/scorp_expl1.wav", Pos, 95, 100, 1 )
	elseif random == 2 then
		sound.Play( "vehicles/scorpion/scorp_expl2.wav", Pos, 95, 140, 1 )
	else
		sound.Play( "vehicles/scorpion/scorp_expl3.wav", Pos, 95, 100, 1 )
	end
end

function EFFECT:Explosion( pos )
	local emitter = ParticleEmitter( pos, false )
	
	for i= 0,5 do
	    local particle = emitter:Add("effects/halo3/8pt_ringed_star_flare", pos)
		if particle then
			particle:SetVelocity( 25 * VectorRand() )
			particle:SetDieTime( 0.2 )
			particle:SetStartAlpha( 255 )
			particle:SetEndAlpha( 0 )
			particle:SetStartSize( math.Rand(5,15) )
			particle:SetEndSize( math.Rand(150,300) )
			particle:SetRoll( math.Rand(0,360) )
			particle:SetRollDelta( math.Rand(0,0) )
			particle:SetColor( 255, 255, 255 )
			particle:SetAirResistance( 55 )
			particle:SetLighting( false )
			particle:SetCollide( false )
		end
	end
	
    for i= 0,5 do
		local particle = emitter:Add("effects/halo3/smoke_dark", pos)
		if particle then
			particle:SetVelocity( Vector(math.Rand(-100, 100),math.Rand(-100, 100),math.Rand(250, 400)) )
			particle:SetDieTime( math.Rand(2,3) )
			particle:SetStartAlpha( 25 )
			particle:SetEndAlpha( 100 )
			particle:SetStartSize( math.Rand(95,100) )
			particle:SetEndSize( math.Rand(125,135) )
			particle:SetRoll( math.Rand(0,360) )
			particle:SetRollDelta( math.Rand(-0.5,0.5) )
			particle:SetColor( 155, 155, 155 )
			particle:SetAirResistance( 55 )
			particle:SetGravity( Vector( 0, 0, math.Rand(-325,-425) ) )
			particle:SetLighting( true )
			particle:SetCollide( false )
		end
	end

	for i= 0,5 do
        local particle = emitter:Add( "effects/halo3/explosion" .. math.random(2,4) , pos )
		if particle then
			particle:SetVelocity( 7 * Vector(math.Rand(-50, 50),math.Rand(-50, 50),math.Rand(20, 50)) )
			particle:SetDieTime( math.Rand(0.5, 0.7) )
			particle:SetStartAlpha( 255 )
			particle:SetEndAlpha( 0 )
			particle:SetStartSize( math.Rand(50,75) )
			particle:SetEndSize( math.Rand(125,150) )
			particle:SetRoll( math.Rand(0,360) )
			particle:SetRollDelta( math.Rand(-1,1) )
			particle:SetColor( 255,math.Rand( 200, 225 ),math.Rand( 175, 200 ) )
			particle:SetAirResistance( 200 )
			particle:SetGravity( Vector( 0, 0, math.Rand(10,25) ) )
			particle:SetLighting( false )
			particle:SetCollide( true )
			particle:SetBounce( 0.5 )
		end
	end
	
    for i = 0,5 do
        local particle = emitter:Add( "effects/halo3/explosion1" , pos )
		if particle then
				particle:SetVelocity( 1 * VectorRand() )
				particle:SetDieTime( math.Rand(0.2, 0.3) )
				particle:SetStartAlpha( 255 )
				particle:SetEndAlpha( 0 )
				particle:SetStartSize( math.Rand(20,35) )
				particle:SetEndSize( math.Rand(175,225) )
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
	for i= 0,5 do
		local particle = emitter:Add( "effects/halo3/explosive_burst", pos )
		if particle then
				particle:SetVelocity( 1 * VectorRand() )
				particle:SetDieTime( math.Rand(0.25, 0.3) )
				particle:SetStartAlpha( 200 )
				particle:SetEndAlpha( 0 )
				particle:SetStartSize( math.Rand(20,35) )
				particle:SetEndSize( math.Rand(225,550) )
				particle:SetRoll( math.Rand(0,360) )
				particle:SetRollDelta( math.Rand(-1,1) )
				particle:SetColor( 255,200,50 )
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
		dlight.r = 255
		dlight.g = 180
		dlight.b = 100
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

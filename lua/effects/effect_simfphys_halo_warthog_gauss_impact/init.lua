
function EFFECT:Init(data)
    self.Origin = data:GetOrigin()
    local emitter = ParticleEmitter( self.Origin + Vector( 0, 0, 16 ) )
    local particle = emitter:Add("effects/halo3/explosive_burst", self.Origin)

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
	

    for i = 0,5 do
        particle = emitter:Add( "effects/halo3/flare1" , self.Origin )

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

    for i = 0,5 do
        particle = emitter:Add( "effects/halo3/flare1" , self.Origin )

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

    particle = emitter:Add( "effects/halo3/electric_arcs", self.Origin )
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

    emitter:Finish()

end

function EFFECT:Think()
    return false
end

function EFFECT:Render()
end
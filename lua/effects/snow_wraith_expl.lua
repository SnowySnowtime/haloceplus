
local Materials = {
	"effects/halo3/fire_large",
	"effects/halo3/fire_small",
	"effects/halo3/muzzle_flash_round_gaseous"



}

local Effects = {
	"effects/halo3/electric_bolts",
	"effects/halo3/electric_arcs"



}

local Smoke = {
	"effects/halo3/muzzle_flash_round_fiery",
	"effects/halo3/muzzle_flash_round_gaseous",
	"effects/halo3/flash_large",
	"effects/halo3/wispy_smoke_large"



}

function EFFECT:Init( data )
	local Pos = data:GetOrigin()
	
	self:Explosion( Pos )
	
	sound.Play( "wraith_expl", Pos, 50, 100, 1 )
end

function EFFECT:Explosion( pos )
	local emitter = ParticleEmitter( pos, false )
	
	for i = 0, 40 do
		local particle = emitter:Add( "effects/halo3/explosive_burst", pos )
		
		if particle then
			particle:SetVelocity( VectorRand() * 1 )
			particle:SetDieTime( 0.45 )
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( 150 )
			particle:SetEndSize( math.Rand(400,400) )
			particle:SetEndAlpha( 0 )
			particle:SetRoll( math.Rand( -1, 1 ) )
			particle:SetColor( 45,175,255 )
			particle:SetCollide( false )
		end
		
		local particle = emitter:Add( Materials[math.random(1,table.Count( Materials ))], pos )
		
		if particle then
			particle:SetVelocity( VectorRand() * 1200 )
			particle:SetDieTime( math.Rand(1,2) )
			particle:SetAirResistance( math.Rand(200,600) ) 
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( math.Rand(100,200) )
			particle:SetEndSize( math.Rand(200,300) )
			particle:SetRoll( math.Rand(-30,30) )
			particle:SetColor( 0,192,255 )
			particle:SetGravity( Vector( 0, 0, 100 ) )
			particle:SetCollide( false )
		end
		
		local particle = emitter:Add( Materials[math.random(1,table.Count( Materials ))], pos )
		
		if particle then
			particle:SetVelocity( VectorRand() * 300 )
			particle:SetDieTime( math.Rand(1,1) )
			particle:SetAirResistance( math.Rand(200,600) ) 
			particle:SetStartAlpha( 100 )
			particle:SetStartSize( math.Rand(50,100) )
			particle:SetEndSize( math.Rand(150,200) )
			particle:SetRoll( math.Rand(-30,30) )
			particle:SetColor( 152,192,255 )
			particle:SetGravity( Vector( 0, 0, 100 ) )
			particle:SetCollide( false )
		end
		
		local particle = emitter:Add( Effects[math.random(1,table.Count( Effects ))], pos )
		
		if particle then
			particle:SetVelocity( VectorRand() * 1300 )
			particle:SetDieTime( math.Rand(1,2) )
			particle:SetAirResistance( math.Rand(200,600) ) 
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( math.Rand(50,50) )
			particle:SetEndSize( math.Rand(50,50) )
			particle:SetRoll( math.Rand(-30,30) )
			particle:SetColor( 0,192,255 )
			particle:SetGravity( Vector( 0, 0, 100 ) )
			particle:SetCollide( false )
		end
		
		local particle = emitter:Add( Smoke[math.random(1,table.Count( Smoke ))], pos )
		
		if particle then
			particle:SetVelocity( VectorRand() * 1500 )
			particle:SetDieTime( math.Rand(1,2) )
			particle:SetAirResistance( math.Rand(200,600) ) 
			particle:SetStartAlpha( 15 )
			particle:SetStartSize( math.Rand(50,50) )
			particle:SetEndSize( math.Rand(50,50) )
			particle:SetRoll( math.Rand(-30,30) )
			particle:SetColor( 255,255,255 )
			particle:SetGravity( Vector( 0, 0, 500 ) )
			particle:SetCollide( false )
		end
		
		local particle = emitter:Add( "effects/halo3/wispy_smoke_large", pos )
		
		if particle then
			particle:SetVelocity( VectorRand() * 1500 )
			particle:SetDieTime( math.Rand(5,8) )
			particle:SetAirResistance( math.Rand(200,600) ) 
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( math.Rand(100,200) )
			particle:SetEndSize( math.Rand(200,300) )
			particle:SetRoll( math.Rand(-30,30) )
			particle:SetColor( 255,255,255 )
			particle:SetGravity( Vector( 0, 0, 500 ) )
			particle:SetCollide( false )
		end

	end
	
	emitter:Finish()
	
	local dlight = DynamicLight( math.random(0,9999) )
	if dlight then
		dlight.pos = pos
		dlight.r = 180
		dlight.g = 180
		dlight.b = 255
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

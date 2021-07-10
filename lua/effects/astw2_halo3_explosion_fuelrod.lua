EFFECT.mat = Material( "sprites/light_glow02_add" )
EFFECT.Materials = {
	"effects/halo3/soft_smoke_small",
	"effects/halo3/thin_smoke_large",
	"effects/halo3/smoke_soft",
	"effects/halo3/soft_smoke_large",
	"effects/halo3/soft_dust_large",
	"effects/halo_spv3/energy/gooey",
	"effects/halo_spv3/energy/noisy_glow",
	"effects/halo3/soft_smoke_small",
	"effects/halo3/fire_large",
	"effects/halo_spv3/energy/sharp_plasma",
	"effects/halo3/electric_arcs",
	"effects/halo3/soft_dust_large"
}

function EFFECT:Init( data )
	self.Pos = data:GetOrigin()
	self.LifeTime = 0.35
	self.DieTime = CurTime() + self.LifeTime

	local emitter = ParticleEmitter( self.Pos, false )

	for i = 0,50 do
		local particle = emitter:Add( self.Materials[math.random(1,table.Count( self.Materials ))], self.Pos )
		
		if particle then
			particle:SetVelocity( VectorRand(-1,1) * 1200 )
			particle:SetDieTime( math.Rand(0.5,2.5) )
			particle:SetAirResistance( math.Rand(200,600) ) 
			particle:SetStartAlpha( 200 )
			particle:SetStartSize( math.Rand(60,90) )
			particle:SetEndSize( math.Rand(125,200) )
			particle:SetRoll( math.Rand(-1,1) )
			particle:SetColor( 50,200,50 )
			particle:SetGravity( Vector( 0, 0, 100 ) )
			particle:SetCollide( false )
		end
	end

	for i = 0, 30 do
		local particle = emitter:Add( "effects/halo_spv3/energy/sharp_plasma", self.Pos )
		
		if particle then
			particle:SetVelocity( VectorRand(-1,1) * 500 )
			particle:SetDieTime( math.Rand(0.15,0.3) )
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( 25 )
			particle:SetEndSize( math.Rand(70,100) )
			particle:SetEndAlpha( 100 )
			particle:SetRoll( math.Rand( -1, 1 ) )
			particle:SetColor( 20,255,20 )
			particle:SetCollide( false )
		end
	end
	
	for i = 0, 30 do
		local particle = emitter:Add( "effects/halo_spv3/energy/noisy_glow", self.Pos )
		
		if particle then
			particle:SetVelocity( VectorRand(-1,1) * 500 )
			particle:SetDieTime( math.Rand(0.15,0.3) )
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( 25 )
			particle:SetEndSize( math.Rand(70,100) )
			particle:SetEndAlpha( 100 )
			particle:SetRoll( math.Rand( -1, 1 ) )
			particle:SetColor( 20,255,20 )
			particle:SetCollide( false )
		end
	end
	
	for i = 0, 30 do
		local particle = emitter:Add( "effects/halo_spv3/energy/sparky_fade", self.Pos )
		
		if particle then
			particle:SetVelocity( VectorRand(-1,1) * 500 )
			particle:SetDieTime( math.Rand(0.15,0.3) )
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( 25 )
			particle:SetEndSize( math.Rand(70,100) )
			particle:SetEndAlpha( 100 )
			particle:SetRoll( math.Rand( -1, 1 ) )
			particle:SetColor( 20,255,20 )
			particle:SetCollide( false )
		end
	end
	
	for i = 0, 30 do
		local particle = emitter:Add( "effects/halo3/electric_arcs", self.Pos )
		
		if particle then
			particle:SetVelocity( VectorRand(-1,1) * 500 )
			particle:SetDieTime( math.Rand(0.15,0.3) )
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( 25 )
			particle:SetEndSize( math.Rand(70,100) )
			particle:SetEndAlpha( 100 )
			particle:SetRoll( math.Rand( -1, 1 ) )
			particle:SetColor( 20,255,20 )
			particle:SetCollide( false )
		end
	end

	for i = 0, 20 do
		local particle = emitter:Add( "effects/halo3/flash_large", self.Pos )
		
		local vel = VectorRand() * 800
		
		if particle then
			particle:SetVelocity( vel )
			particle:SetAngles( vel:Angle() + Angle(0,90,0) )
			particle:SetDieTime( math.Rand(0.2,0.4) )
			particle:SetStartAlpha( 255 )
			particle:SetEndAlpha( 0 )
			particle:SetStartSize( math.Rand(20,40) )
			particle:SetEndSize( 0 )
			particle:SetRoll( math.Rand(-100,100) )
			particle:SetRollDelta( 0 )
			particle:SetColor( 40, 255, 40 )

			particle:SetAirResistance( 0 )
		end
	end

	emitter:Finish()

	sound.Play( "fuelrod_expl_h3", self.Pos, 95, 140, 1 )
end

function EFFECT:Think()
	if self.DieTime < CurTime() then return false end

	return true
end

function EFFECT:Render()
	local Scale = (self.DieTime - CurTime()) / self.LifeTime
	render.SetMaterial( self.mat )
	render.DrawSprite( self.Pos, 2000 * Scale, 2000 * Scale, Color( 20, 200, 20, 255) )
end
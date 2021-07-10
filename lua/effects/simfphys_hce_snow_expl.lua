
local Materials = {
	"effects/hce/plasma_noise",
	"effects/hce/plasma_noise",
	"particle/smokesprites_0003",
	"particle/smokesprites_0004",
	"particle/smokesprites_0005",
	"particle/smokesprites_0006",
	"effects/hce/plasma_noise",
	"effects/hce/plasma_noise",
	"effects/hce/plasma_noise",
	"particle/smokesprites_0010",
	"particle/smokesprites_0011",
	"particle/smokesprites_0012",
	"effects/hce/plasma_noise",
	"effects/hce/plasma_noise",
	"effects/hce/plasma_noise",
	"particle/smokesprites_0016",
	"effects/hce/plasma_noise",
	"effects/hce/plasma_noise",
	"effects/hce/plasma_noise",
	"effects/hce/plasma_noise"
}
function EFFECT:Init( data )
	local Pos = data:GetOrigin()
	
	self:Explosion( Pos )
	
	local random = math.random(1,3)
	
	if random == 1 then
		sound.Play( "vehicles/hceshared/grenade_expl_2.wav", Pos, 95, 100, 1 )
	elseif random == 2 then
		sound.Play( "vehicles/hceshared/grenade_expl_2.wav", Pos, 95, 140, 1 )
	else
		sound.Play( "vehicles/hceshared/grenade_expl_1.wav", Pos, 95, 100, 1 )
	end
end

function EFFECT:Explosion( pos )
	local emitter = ParticleEmitter( pos, false )
	
	for i = 0,60 do
		local particle = emitter:Add( Materials[math.random(1,table.Count( Materials ))], pos )
		
		if particle then
			particle:SetVelocity( VectorRand() * 1000 )
			particle:SetDieTime( math.Rand(1.2,4) )
			particle:SetAirResistance( math.Rand(200,500) ) 
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( math.Rand(20,90) )
			particle:SetEndSize( math.Rand(100,480) )
			particle:SetRoll( math.Rand(-1,1) )
			particle:SetColor( 80,80,80 )
			particle:SetGravity( Vector( 0, 0, 100 ) )
			particle:SetCollide( false )
		end
	end
	
	for i = 0, 40 do
		local particle = emitter:Add( "effects/hce/halo_explosion", pos )
		
		if particle then
			particle:SetVelocity( VectorRand() * 100 )
			particle:SetDieTime( 0.5 )
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( 10 )
			particle:SetEndSize( math.Rand(80,350) )
			particle:SetEndAlpha( 0 )
			particle:SetRoll( math.Rand( -2, 2 ) )
			particle:SetColor( 200,150,0 )
			particle:SetCollide( false )
		end
	end
	
	for i = 0, 40 do
		local particle = emitter:Add( "effects/hce/halo_explosion", pos )
		
		if particle then
			particle:SetVelocity( VectorRand() * 100 )
			particle:SetDieTime( 0.25 )
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( 10 )
			particle:SetEndSize( math.Rand(80,150) )
			particle:SetEndAlpha( 0 )
			particle:SetRoll( math.Rand( -2, 2 ) )
			particle:SetColor( 200,180,180 )
			particle:SetCollide( false )
		end
	end
	
	for i = 0, 40 do
		local particle = emitter:Add( "effects/hce/explosion_smaller", pos )
		
		if particle then
			particle:SetVelocity( VectorRand() * 100 )
			particle:SetDieTime( 1 )
			particle:SetStartAlpha( 100 )
			particle:SetStartSize( 10 )
			particle:SetEndSize( math.Rand(80,480) )
			particle:SetEndAlpha( 0 )
			particle:SetRoll( math.Rand( -2, 2 ) )
			particle:SetColor( 200,150,50 )
			particle:SetCollide( false )
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

EFFECT.Offset = Vector(-8,0,0)
EFFECT.mat = Material( "sprites/light_glow02_add" )
EFFECT.Materials = {
	"effects/hce/halo_explosion",
	"effects/halo3/fire_large",
	"effects/halo3/fire_small",
	"effects/halo3/explosive_burst",
	"effects/halo3/flash_large",
	"effects/halo_spv3/energy/gooey",
	"effects/halo_spv3/energy/noisy_glow",
	"effects/halo3/muzzle_flash_round_gaseous",
	"effects/halo3/soft_smoke_large",
	"effects/halo3/thin_smoke_small",
	"effects/halo3/electric_arcs",
	"effects/halo3/soft_dust_large"
}

function EFFECT:Init( data )
	self.Entity = data:GetEntity()

	if IsValid( self.Entity ) then
		self.OldPos = self.Entity:LocalToWorld( self.Offset )

		self.Emitter = ParticleEmitter( self.Entity:LocalToWorld( self.OldPos ), false )
	end
end

function EFFECT:doFX( pos )
	if not IsValid( self.Entity ) then return end

	if self.Emitter then
		local emitter = self.Emitter

		if self.Entity:GetDirtyMissile() then
			local particle = emitter:Add( self.Materials[math.random(1, table.Count(self.Materials) )], pos )
			if particle then
				particle:SetGravity( Vector(0,0,100) + VectorRand() * 50 ) 
				particle:SetVelocity( -self.Entity:GetForward() * 500  )
				particle:SetAirResistance( 600 ) 
				particle:SetDieTime( math.Rand(1,2) )
				particle:SetStartAlpha( 200 )
				particle:SetStartSize( math.Rand(10,13) )
				particle:SetEndSize( math.Rand(25,60) )
				particle:SetRoll( math.Rand( -1, 1 ) )
				particle:SetColor( 255,170,50 )
				particle:SetCollide( false )
			end

			local particle = emitter:Add( "effects/halo_spv3/energy/gooey", pos )
			if particle then
				particle:SetVelocity( -self.Entity:GetForward() * math.Rand(500,1600) + self.Entity:GetVelocity())
				particle:SetDieTime( math.Rand(0.2,0.4) )
				particle:SetAirResistance( 0 ) 
				particle:SetStartAlpha( 255 )
				particle:SetStartSize( math.Rand(20,30) )
				particle:SetEndSize( 10 )
				particle:SetRoll( math.Rand(-1,1) )
				particle:SetColor( 255,170,50 )
				particle:SetGravity( Vector( 0, 0, 0 ) )
				particle:SetCollide( false )
			end
			
			local particle = emitter:Add( "particle/smokesprites_000"..math.random(1,9), self.Entity:GetPos() )
				if particle then
					particle:SetVelocity( -self.Entity:GetForward() * 500 + VectorRand() * 50 )
					particle:SetDieTime( 1 )
					particle:SetAirResistance( 600 ) 
					particle:SetStartAlpha( 255 )
					particle:SetStartSize( math.Rand(1,3) )
					particle:SetEndSize( math.Rand(60,70) )
					particle:SetRoll( math.Rand(-1,1) )
					particle:SetColor( 30,30,30 )
					particle:SetGravity( Vector( 0, 0, 0 ) )
					particle:SetCollide( false )
				end
		else
			if not self.Entity:GetCleanMissile() then
				local particle = emitter:Add( self.Materials[math.random(1, table.Count(self.Materials) )], pos )
				
				if particle then
					particle:SetGravity( Vector(0,0,100) + VectorRand() * 50 ) 
					particle:SetVelocity( -self.Entity:GetForward() * 500  )
					particle:SetAirResistance( 600 ) 
					particle:SetDieTime( math.Rand(0.1,0.2) )
					particle:SetStartAlpha( 150 )
					particle:SetStartSize( math.Rand(6,12) )
					particle:SetEndSize( math.Rand(40,90) )
					particle:SetRoll( math.Rand( -1, 1 ) )
					particle:SetColor( 255,170,50 )
					particle:SetCollide( false )
				end

				local particle = emitter:Add( "effects/halo_spv3/energy/gooey", pos )
				if particle then
					particle:SetVelocity( -self.Entity:GetForward() * math.Rand(500,1600) + self.Entity:GetVelocity())
					particle:SetDieTime( math.Rand(0.1,0.2) )
					particle:SetAirResistance( 0 ) 
					particle:SetStartAlpha( 255 )
					particle:SetStartSize( math.Rand(20,30) )
					particle:SetEndSize( 10 )
					particle:SetRoll( math.Rand(-1,1) )
					particle:SetColor( 255,170,50 )
					particle:SetGravity( Vector( 0, 0, 0 ) )
					particle:SetCollide( false )
				end
				local particle = emitter:Add( "particle/smokesprites_000"..math.random(1,9), self.Entity:GetPos() )
				if particle then
					particle:SetVelocity( -self.Entity:GetForward() * 500 + VectorRand() * 50 )
					particle:SetDieTime( 1 )
					particle:SetAirResistance( 600 ) 
					particle:SetStartAlpha( 255 )
					particle:SetStartSize( math.Rand(1,3) )
					particle:SetEndSize( math.Rand(60,70) )
					particle:SetRoll( math.Rand(-1,1) )
					particle:SetColor( 30,30,30 )
					particle:SetGravity( Vector( 0, 0, 0 ) )
					particle:SetCollide( false )
				end
			end
		end
	end
end


function EFFECT:doFXbroken( pos )
	if not IsValid( self.Entity ) then return end

	if self.Emitter then
		local emitter = self.Emitter

		local particle = emitter:Add( self.Materials[math.random(1, table.Count(self.Materials) )], pos )
		if particle then
			particle:SetGravity( Vector(0,0,100) + VectorRand() * 50 ) 
			particle:SetVelocity( -self.Entity:GetForward() * 500  )
			particle:SetAirResistance( 600 ) 
			particle:SetDieTime( math.Rand(2,3) )
			particle:SetStartAlpha( 150 )
			particle:SetStartSize( math.Rand(6,12) )
			particle:SetEndSize( math.Rand(40,90) )
			particle:SetRoll( math.Rand( -1, 1 ) )
			particle:SetColor( 255,170,50 )
			particle:SetCollide( false )
		end

		local particle = emitter:Add( "particles/flamelet"..math.random(1,5), pos )
		if particle then
			particle:SetVelocity( -self.Entity:GetForward() * 500 + VectorRand() * 50 )
			particle:SetDieTime( 0.25 )
			particle:SetAirResistance( 600 ) 
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( math.Rand(25,40) )
			particle:SetEndSize( math.Rand(10,15) )
			particle:SetRoll( math.Rand(-1,1) )
			particle:SetColor( 255,255,255 )
			particle:SetGravity( Vector( 0, 0, 0 ) )
			particle:SetCollide( false )
		end
	end
end

function EFFECT:Think()
	if IsValid( self.Entity ) then
		self.nextDFX = self.nextDFX or 0
		
		if self.nextDFX < CurTime() then
			self.nextDFX = CurTime() + 0.02

			self.Disabled = self.Entity:GetDisabled()

			local oldpos = self.OldPos
			local newpos = self.Entity:LocalToWorld( self.Offset )
			self:SetPos( newpos )

			local Sub = (newpos - oldpos)
			local Dir = Sub:GetNormalized()
			local Len = Sub:Length()

			self.OldPos = newpos

			for i = 0, Len, 45 do
				local pos = oldpos + Dir * i

				if self.Disabled then
					self:doFXbroken( pos )
				else
					self:doFX( pos )
				end
			end
		end

		return true
	end

	if self.Emitter then
		self.Emitter:Finish()
	end

	return false
end

function EFFECT:Render()
	if self.Disabled then return end

	local ent = self.Entity
	local pos = ent:LocalToWorld( self.Offset )

	local r = 255
	local g = 100
	local b = 0

	render.SetMaterial( self.mat )

	if ent:GetCleanMissile() then
		r = 0
		g = 127
		b = 255
		
		for i =0,10 do
			local Size = (10 - i) * 25.6
			render.DrawSprite( pos - ent:GetForward() * i * 5, Size, Size, Color( r, g, b, 255 ) )
		end
		
	elseif ent:GetDirtyMissile() then
		r = 225
		g = 40
		b = 100
	end

	render.DrawSprite( pos, 256, 256, Color( 255, 170, 20, 255 ) )
end
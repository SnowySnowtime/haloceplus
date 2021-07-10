include("shared.lua")

function ENT:Initialize()	
	self.PixVis = util.GetPixelVisibleHandle()
	
	self.Materials = {
		"effects/halo_spv3/energy/noisy_glow",
		"effects/halo_spv3/energy/sharp_plasma",
		"effects/halo_spv3/energy/gooey",
		"effects/halo_spv3/energy/sparky_fade",
		"effects/halo_spv3/energy/noisy_glow",
		"effects/halo_spv3/energy/plasma_electric arcs_animated"
	}
end

function ENT:CalcEngineSound()
	local CurDist = (LocalPlayer():GetViewEntity() :GetPos() - self:GetPos()):Length()
	self.PitchOffset = self.PitchOffset and self.PitchOffset + (math.Clamp((CurDist - self.OldDist) * FrameTime() * 300,-40,40) - self.PitchOffset) * FrameTime() * 5 or 0
	local Doppler = -self.PitchOffset
	self.OldDist = CurDist
	
	local RPM = self:GetRPM()
	local Pitch = (RPM - self.IdleRPM) / (self.LimitRPM - self.IdleRPM)
	
	if self.ENG then
		self.ENG:ChangePitch(  math.Clamp(math.Clamp(  60 + Pitch * 70, 60,120) + Doppler,0,255) )
		self.ENG:ChangeVolume( math.Clamp( -1 + Pitch * 6, 0.5,5) )
	end
	
	if self.DIST then
		self.DIST:ChangePitch(  math.Clamp(math.Clamp(  Pitch * 100, 50,255) + Doppler * 1.25,0,255) )
		self.DIST:ChangeVolume( math.Clamp( -1.5 + Pitch * 6, 0.5,1) )
	end
end

function ENT:ExhaustFX()
	if not self:GetEngineActive() then return end
	
	self.nextEFX = self.nextEFX or 0
	
	local THR = (self:GetRPM() - self.IdleRPM) / (self.LimitRPM - self.IdleRPM)
	
	local Driver = self:GetDriver()
	if IsValid( Driver ) then
		local W = Driver:KeyPressed( IN_FORWARD )
		if W ~= self.oldW then
			self.oldW = W
			if W then
				self.BoostAdd = 300
			end
		end
	end
	
	self.BoostAdd = self.BoostAdd and (self.BoostAdd - self.BoostAdd * FrameTime()) or 0
	
	if self.nextEFX < CurTime() then
		self.nextEFX = CurTime() + 0.01
		
		local emitter = ParticleEmitter( self:GetPos(), false )
		
		if emitter then
			local Mirror = false
			for i = 0,1 do
				local Sub = Mirror and 1 or -1
				local vOffset = self:LocalToWorld( Vector(0,121 * Sub,12.5) )
				local vNormal = -self:GetForward()

				vOffset = vOffset + vNormal * 20

				local particle = emitter:Add( self.Materials[math.random(1, table.Count(self.Materials) )], vOffset )
				if not particle then return end

				particle:SetVelocity( vNormal / 600 + self:GetVelocity() / 3 )
				particle:SetAirResistance( 1 ) 
				particle:SetLifeTime( 0 )
				particle:SetDieTime( math.Rand(0.5,1.5) )
				particle:SetStartAlpha( 255 )
				particle:SetEndAlpha( 30 )
				particle:SetStartSize( (math.Rand(5,15) ) )
				particle:SetEndSize( (math.Rand(30,50) ) )
				particle:SetAngles( vNormal:Angle() )
				particle:SetRoll( math.Rand( -50, 50 ) )
				particle:SetColor( 172,150,255 )
				particle:SetCollide( false )
			
				Mirror = true
			end
			local Mirror = false
			for i = 0,1 do
				local Sub = Mirror and 1 or -1
				local vOffset = self:LocalToWorld( Vector(0,121 * Sub,12.5) )
				local vNormal = -self:GetForward()

				vOffset = vOffset + vNormal * 20

				local particle = emitter:Add( "effects/halo_spv3/energy/emp_cloud", vOffset )
				if not particle then return end

				particle:SetVelocity( vNormal / 600 + self:GetVelocity() / 2.75 )
				particle:SetAirResistance( 1 ) 
				particle:SetLifeTime( 0 )
				particle:SetDieTime( math.Rand(2,2) )
				particle:SetStartAlpha( 100 )
				particle:SetEndAlpha( 0 )
				particle:SetStartSize( (math.Rand(5,5) ) )
				particle:SetEndSize( (math.Rand(30,30) ) )
				particle:SetAngles( vNormal:Angle() )
				particle:SetRoll( math.Rand( -50, 50 ) )
				particle:SetColor( 150,172,255 )
				particle:SetCollide( false )
			
				Mirror = true
			end
			local Mirror = false
			for i = 0,1 do
				local Sub = Mirror and 1 or -1
				local vOffset = self:LocalToWorld( Vector(-45,25 * Sub,71) )
				local vNormal = -self:GetForward()

				vOffset = vOffset + vNormal * 20

				local particle = emitter:Add( "effects/halo_spv3/energy/emp_cloud", vOffset )
				if not particle then return end

				particle:SetVelocity( vNormal / 600 + self:GetVelocity() / 3 )
				particle:SetAirResistance( 1000 ) 
				particle:SetLifeTime( 0 )
				particle:SetDieTime( math.Rand(0.1,0.1) )
				particle:SetStartAlpha( 255 )
				particle:SetEndAlpha( 0 )
				particle:SetStartSize( (math.Rand(5,5) ) )
				particle:SetEndSize( (math.Rand(30,30) ) )
				particle:SetAngles( vNormal:Angle() )
				particle:SetRoll( math.Rand( -50, 50 ) )
				particle:SetColor( 150,172,255 )
				particle:SetCollide( false )
			
				Mirror = true
			end
			local Mirror = false
			for i = 0,1 do
				local Sub = Mirror and 1 or -1
				local vOffset = self:LocalToWorld( Vector(-45,25 * Sub,71) )
				local vNormal = -self:GetForward()

				vOffset = vOffset + vNormal * 20

				local particle = emitter:Add( self.Materials[math.random(1, table.Count(self.Materials) )], vOffset )
				if not particle then return end

				particle:SetVelocity( vNormal / 600 + self:GetVelocity() / 3 )
				particle:SetAirResistance( 600 ) 
				particle:SetLifeTime( 0 )
				particle:SetDieTime( math.Rand(0.1,0.1) )
				particle:SetStartAlpha( 255 )
				particle:SetEndAlpha( 30 )
				particle:SetStartSize( (math.Rand(5,15) ) )
				particle:SetEndSize( (math.Rand(30,50) ) )
				particle:SetAngles( vNormal:Angle() )
				particle:SetRoll( math.Rand( -50, 50 ) )
				particle:SetColor( 172,150,255 )
				particle:SetCollide( false )
			
				Mirror = true
			end
			local Mirror = false
			for i = 0,1 do
				local Sub = Mirror and 1 or -1
				local vOffset = self:LocalToWorld( Vector(-45,25 * Sub,71) )
				local vNormal = -self:GetForward()

				vOffset = vOffset + vNormal * 20

				local particle = emitter:Add( "effects/halo_spv3/energy/emp_cloud", vOffset )
				if not particle then return end

				particle:SetVelocity( vNormal / 600 + self:GetVelocity() / 3 )
				particle:SetAirResistance( 1000 ) 
				particle:SetLifeTime( 0 )
				particle:SetDieTime( math.Rand(0.1,0.1) )
				particle:SetStartAlpha( 255 )
				particle:SetEndAlpha( 0 )
				particle:SetStartSize( (math.Rand(3,3) ) )
				particle:SetEndSize( (math.Rand(15,15) ) )
				particle:SetAngles( vNormal:Angle() )
				particle:SetRoll( math.Rand( -50, 50 ) )
				particle:SetColor( 150,172,255 )
				particle:SetCollide( false )
			
				Mirror = true
			end
			
			
			
			--cooler
			
			local Mirror = false
			for i = 0,1 do
				local Sub = Mirror and 1 or -1
				local vOffset = self:LocalToWorld( Vector(8,121 * Sub,12.5) )
				local vNormal = -self:GetForward()

				vOffset = vOffset + vNormal * 20

				local particle = emitter:Add( "effects/halo3/8pt_ringed_star_flare", vOffset )
				if not particle then return end

				particle:SetVelocity( vNormal / 600 + self:GetVelocity() / 3 )
				particle:SetAirResistance( 1000 ) 
				particle:SetLifeTime( 0 )
				particle:SetDieTime( math.Rand(0.05,0.05) )
				particle:SetStartAlpha( 255 )
				particle:SetEndAlpha( 255 )
				particle:SetStartSize( (math.Rand(13,20) ) )
				particle:SetEndSize( (math.Rand(13,20) ) )
				particle:SetAngles( vNormal:Angle() )
				particle:SetRoll( math.Rand( -50, 50 ) )
				particle:SetColor( 150,172,255 )
				particle:SetCollide( false )
			
				Mirror = true
			end
			local Mirror = false
			for i = 0,1 do
				local Sub = Mirror and 1 or -1
				local vOffset = self:LocalToWorld( Vector(8,121 * Sub,12.5) )
				local vNormal = -self:GetForward()

				vOffset = vOffset + vNormal * 20

				local particle = emitter:Add( "effects/halo3/8pt_ringed_star_flare", vOffset )
				if not particle then return end

				particle:SetVelocity( vNormal / 600 + self:GetVelocity() / 3 )
				particle:SetAirResistance( 1000 ) 
				particle:SetLifeTime( 0 )
				particle:SetDieTime( math.Rand(0.05,0.05) )
				particle:SetStartAlpha( 255 )
				particle:SetEndAlpha( 255 )
				particle:SetStartSize( (math.Rand(13,20) ) )
				particle:SetEndSize( (math.Rand(13,20) ) )
				particle:SetAngles( vNormal:Angle() )
				particle:SetRoll( math.Rand( -50, 50 ) )
				particle:SetColor( 172,150,255 )
				particle:SetCollide( false )
			
				Mirror = true
			end
			
			emitter:Finish()
		end
	end
end

function ENT:EngineActiveChanged( bActive )
	if bActive then
		self.ENG = CreateSound( self, "h3_banshee_snow" )
		self.ENG:PlayEx(0,0)
		self.DIST = CreateSound( self, "h3_banshee_snow_lod" )
		self.DIST:PlayEx(0,0)
	else
		self:SoundStop()
	end
end

function ENT:OnRemove()
	self:SoundStop()
end

function ENT:SoundStop()
	if self.DIST then
		self.DIST:Stop()
	end
	
	if self.ENG then
		self.ENG:Stop()
	end
end

function ENT:AnimRotor()

end

function ENT:AnimCabin()
end

function ENT:AnimLandingGear()

end

function ENT:AnimFins()
	local FT = FrameTime() * 10
	local Pitch = self:GetRotPitch()
	local Yaw = self:GetRotYaw()
	local Roll = -self:GetRotRoll()
	self.smPitch = self.smPitch and self.smPitch + (Pitch - self.smPitch) * FT or 0
	self.smYaw = self.smYaw and self.smYaw + (Yaw - self.smYaw) * FT or 0
	self.smRoll = self.smRoll and self.smRoll + (Roll - self.smRoll) * FT or 0
	
	self:ManipulateBoneAngles( 4, Angle( 0,self.smYaw / 1.5,0) )
	self:ManipulateBoneAngles( 5, Angle( 0,self.smYaw / 1.5,0) )
	self:ManipulateBoneAngles( 7, Angle( 0,self.smYaw / 1.5,0) )
	self:ManipulateBoneAngles( 8, Angle( 0,self.smYaw / 1.5,0) )
	
end
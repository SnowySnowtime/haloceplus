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

function ENT:LFSCalcViewFirstPerson( view )
	local ply = LocalPlayer( pod )
	local Pod = ply:GetVehicle( pod )
	
	if not IsValid( Pod ) then return view end
	
	local radius = 200
	
	local TargetOrigin = self:LocalToWorld( Vector(0,0,50) ) - view.angles:Forward() * radius  + view.angles:Up() * radius * 0.2
	local WallOffset = 4

	return view
end

function ENT:LFSCalcViewThirdPerson( view )
	return self:LFSCalcViewFirstPerson( view )
end

function ENT:CalcEngineSound()
	local CurDist = (LocalPlayer():GetViewEntity() :GetPos() - self:GetPos()):Length()
	self.PitchOffset = self.PitchOffset and self.PitchOffset + (math.Clamp((CurDist - self.OldDist) * FrameTime() * 300,-40,40) - self.PitchOffset) * FrameTime() * 5 or 0
	local Doppler = -self.PitchOffset
	self.OldDist = CurDist
	
	local RPM = self:GetRPM()
	local Pitch = (RPM - self.IdleRPM) / (self.LimitRPM - self.IdleRPM)
	
	if self.ENG then
		self.ENG:ChangePitch(  math.Clamp(math.Clamp(  60 + Pitch * 30, 60,120) + Doppler,0,255) )
		self.ENG:ChangeVolume( math.Clamp( -1 + Pitch * 6, 0.5,5) )
	end
	
	if self.DIST then
		self.DIST:ChangePitch(  math.Clamp(math.Clamp(  Pitch * 100, 50,255) + Doppler * 1.25,0,255) )
		self.DIST:ChangeVolume( math.Clamp( -1.5 + Pitch * 6, 0.5,1) )
	end
end

function ENT:EngineActiveChanged( bActive )
	if bActive then
		self.ENG = CreateSound( self, "h3_hornet_eng" )
		self.ENG:PlayEx(0,0)
		
		self.DIST = CreateSound( self, "h3_hornet_lod" )
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

function ENT:AnimFins()
	local FT = FrameTime() * 10
	local Pitch = self:GetRotPitch()
	local Yaw = self:GetRotYaw()
	local Roll = -self:GetRotRoll()
	self.smPitch = self.smPitch and self.smPitch + (Pitch - self.smPitch) * FT or 0
	self.smYaw = self.smYaw and self.smYaw + (Yaw - self.smYaw) * FT or 0
	self.smRoll = self.smRoll and self.smRoll + (Roll - self.smRoll) * FT or 0
	
end

function ENT:AnimRotor()
	local RotorBlown = self:GetRotorDestroyed()
	
	if not RotorBlown then
		local RPM = self:GetRPM()
		local PhysRot = RPM < 1900
		self.RPM = self.RPM and (self.RPM + RPM * FrameTime() * (PhysRot and 3 or 0.5)) or 0
		
		self:SetBodygroup( 1, PhysRot and 0 or 1 ) 
		self:SetBodygroup( 2, PhysRot and 0 or 1 ) 
		
		self:SetPoseParameter("rotor_spin", self.RPM * 3 )
		self:InvalidateBoneCache()
	end
end

function ENT:AnimCabin()
end

function ENT:AnimLandingGear()
end

function ENT:ExhaustFX()
	if not self:GetEngineActive() then return end
	
	self.nextEFX = self.nextEFX or 0
	
	if self.nextEFX < CurTime() then
		self.nextEFX = CurTime() + 0.01
		
		local emitter = ParticleEmitter( self:GetPos(), false )
		
		if emitter then
			local Mirror = false
			for i = 0,1 do
				local Sub = Mirror and 1 or -1
				local vOffset = self:LocalToWorld( Vector(0, 0 * Sub,0) )
				local vNormal = -self:GetForward()

				vOffset = vOffset + vNormal * 20

				local particle = emitter:Add( "effects/halo_spv3/energy/emp_cloud", vOffset )
				if not particle then return end

				particle:SetGravity( Vector(10,10,10) * math.random(5,10) ) 
				particle:SetVelocity( -self:GetUp() * math.random(100,1000)  )
				particle:SetAirResistance( 3800 ) 
				particle:SetLifeTime( 0 )
				particle:SetDieTime( math.Rand(0.09,0.12) )
				particle:SetStartAlpha( 255 )
				particle:SetEndAlpha( 0 )
				particle:SetStartSize( (math.Rand(25,32) ) )
				particle:SetEndSize( (math.Rand(10,8) ) )
				particle:SetAngles( vNormal:Angle() )
				particle:SetRoll( math.Rand( -50, 50 ) )
				particle:SetColor( 255,140,130 )
				particle:SetCollide( false )
				Mirror = true
			end
			local Mirror = false
			for i = 0,1 do
				local Sub = Mirror and 1 or -1
				local vOffset = self:LocalToWorld( Vector(20,128.5 * Sub,115) )
				local vNormal = -self:GetForward()

				vOffset = vOffset + vNormal * 20

				local particle = emitter:Add( "effects/muzzleflash2", vOffset )
				if not particle then return end
				
				particle:SetGravity( Vector(10,10,10) * math.random(5,10) ) 
				particle:SetVelocity( -self:GetUp() * math.random(100,1000)  )
				particle:SetAirResistance( 1000 ) 
				particle:SetLifeTime( 0 )
				particle:SetDieTime( math.Rand(0.125,0.19) )
				particle:SetStartAlpha( 255 )
				particle:SetEndAlpha( 0 )
				particle:SetStartSize( (math.Rand(25,32) ) )
				particle:SetEndSize( (math.Rand(10,8) ) )
				particle:SetAngles( vNormal:Angle() )
				particle:SetRoll( math.Rand( -50, 50 ) )
				particle:SetColor( 255,225,205 )
				particle:SetCollide( false )
				Mirror = true
			end
			local Mirror = false
			for i = 0,1 do
				local Sub = Mirror and 1 or -1
				local vOffset = self:LocalToWorld( Vector(20,128.5 * Sub,115) )
				local vNormal = -self:GetForward()

				vOffset = vOffset + vNormal * 20

				local particle = emitter:Add( self.Materials[math.random(1, table.Count(self.Materials) )], vOffset )
				if not particle then return end

				particle:SetGravity( Vector(10,10,10) * math.random(5,10) ) 
				particle:SetVelocity( -self:GetUp() * math.random(100,1000)  )
				particle:SetAirResistance( 1000 ) 
				particle:SetLifeTime( 0 )
				particle:SetDieTime( math.Rand(0.125,0.19) )
				particle:SetStartAlpha( 255 )
				particle:SetEndAlpha( 0 )
				particle:SetStartSize( (math.Rand(25,32) ) )
				particle:SetEndSize( (math.Rand(10,8) ) )
				particle:SetAngles( vNormal:Angle() )
				particle:SetRoll( math.Rand( -50, 50 ) )
				particle:SetColor( 255,160,130 )
				particle:SetCollide( false )
				Mirror = true
			end
			
			emitter:Finish()
		end
	end
end
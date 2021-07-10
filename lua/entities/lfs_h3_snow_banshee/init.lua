AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")

function ENT:SpawnFunction( ply, tr, ClassName ) -- called by garry
	if not tr.Hit then return end

	local ent = ents.Create( ClassName )
	ent.dOwnerEntLFS = ply  -- this is important
	ent:SetPos( tr.HitPos + tr.HitNormal * 20 ) -- spawn 20 units above ground
	ent:Spawn()
	ent:Activate()

	return ent
end

function ENT:RunOnSpawn()
	if not self:GetEngineActive() then
		self:PlayAnimation( "landing" )
		self:EmitSound( "h3_veh_open_cab" )
	end
end

function ENT:PrimaryAttack()
	if not self:CanPrimaryAttack() or not self:GetEngineActive() then return end

	self:EmitSound( "h3_veh_plas_fire" )
	self:EmitSound( "hce_veh_plas_fire_dist" )
	
	self:SetNextPrimary( 0.08 )
	
	local fP = { Vector(0,32,0), Vector(0,0,0), Vector(0,32,0),Vector(0,0,0) }

	self.NumPrim = self.NumPrim and self.NumPrim + 1 or 1
	if self.NumPrim > 2 then self.NumPrim = 1 end
	
	local startpos =  self:GetRotorPos()
	local TracePlane = util.TraceHull( {
		start = startpos,
		endpos = (startpos + self:GetForward() * 50000),
		mins = Vector( -10, -10, -10 ),
		maxs = Vector( 10, 10, 10 ),
		filter = function( e )
			local collide = e ~= self
			return collide
		end
	} )
	
	local bullet = {}
	bullet.Num 	= 1
	bullet.Src 	= self:LocalToWorld( fP[self.NumPrim] )
	bullet.Dir 	= (TracePlane.HitPos - bullet.Src):GetNormalized()
	bullet.Spread 	= Vector( 0.02, 0.02, 0.02 )
	bullet.Tracer	= 1
	bullet.TracerName	= "effect_lfs_halo3_tracer_plasmarifle"
	bullet.Force	= 100
	bullet.HullSize 	= 5
	bullet.Damage	= 10
	bullet.Attacker 	= self:GetDriver()
	bullet.AmmoType = "Pistol"
	bullet.Callback = function(att, tr, dmginfo)
		dmginfo:SetDamageType(DMG_PLASMA)
	end
	self:FireBullets( bullet )
	
	self:TakePrimaryAmmo()
end

function ENT:SecondaryAttack()
if not self:GetEngineActive() then return end
if self:GetAI() then return end
	
	if not self:CanSecondaryAttack() then return end
	
	self:SetNextSecondary( 6 )
	
	self:EmitSound( "fuelrod_fire_h3" )

	
	self.MirrorPrimary = not self.MirrorPrimary
	
	local Mirror = self.MirrorPrimary and -1 or 1
	
	local startpos =  self:GetRotorPos()
	local tr = util.TraceHull( {
		start = startpos,
		endpos = (startpos + self:GetForward() * 50000),
		mins = Vector( -40, -40, -40 ),
		maxs = Vector( 40, 40, 40 ),
		filter = function( e )
			local collide = e ~= self
			return collide
		end
	} )
	
	local ent = ents.Create( "lfs_missile_halorocket_forked" )
	local Pos = self:LocalToWorld( Vector(110, 0, 0) )
	ent:SetPos( Pos )
	ent:SetAngles( (tr.HitPos - Pos):Angle() )
	ent:Spawn()
	ent:Activate()
	ent:SetAttacker( self:GetDriver() )
	ent:SetInflictor( self )
	ent:SetStartVelocity( self:GetVelocity():Length() )

	
	if tr.Hit then
		local Target = tr.Entity
		if IsValid( Target ) then
			if Target:GetClass():lower() ~= "lfs_missile_halorocket_forked" then
				ent:SetLockOn( Target )
				ent:SetStartVelocity( 0 )
			end
		end
	end
	
	constraint.NoCollide( ent, self, 0, 0 ) 
	
	self:TakeSecondaryAmmo()
end



function ENT:HandleActive()
	local Pod = self:GetDriverSeat()
	
	if not IsValid( Pod ) then
		self:SetActive( false )
		return
	end
	
	local Driver = Pod:GetDriver()
	
	if Driver ~= self:GetDriver() then
		if IsValid( self:GetDriver() ) then
			self:GetDriver():SetNoDraw( false )
		end
		if IsValid( Driver ) then
			Driver:SetNoDraw( true )
		end
		
		self:SetDriver( Driver )
		self:SetActive( IsValid( Driver ) )
		
		if self:GetActive() then
			self:EmitSound( "vehicles/atv_ammo_close.wav" )
		else
			self:EmitSound( "vehicles/atv_ammo_open.wav" )
		end
	end
end

function ENT:CreateAI()
end

function ENT:RemoveAI()
end

function ENT:InitWheels()
	local PObj = self:GetPhysicsObject()
	
	if IsValid( PObj ) then 
		PObj:EnableMotion( true )
	end
end

function ENT:ToggleLandingGear()
end

function ENT:RaiseLandingGear()
end

function ENT:HandleWeapons(Fire1, Fire2)
	local Driver = self:GetDriver()
	
	if IsValid( Driver ) then
		if self:GetAmmoPrimary() > 0 then
			Fire1 = Driver:KeyDown( IN_ATTACK )
		end
		
		if self:GetAmmoSecondary() > 0 then
			Fire2 = Driver:KeyDown( IN_ATTACK2 )
		end
	end
	
	if Fire1 then
		self:PrimaryAttack()
	end
	
		if self.OldFire2 ~= Fire2 then
		if Fire2 then
			self:SecondaryAttack()
		end
		self.OldFire2 = Fire2
	end
	
end

function ENT:OnEngineStarted()
	self:PlayAnimation( "takeoff" )
	self:EmitSound( "h3_veh_in_ban" )
	self:EmitSound( "h3_veh_close_cab" )
end

function ENT:OnEngineStopped()
	if not self:IsDestroyed() then
		self:PlayAnimation( "landing" )
		self:EmitSound( "h3_veh_out_ban" )
		self:EmitSound( "h3_veh_open_cab" )
		self:StopSound( "banshee_snow_boost" )
	end
end

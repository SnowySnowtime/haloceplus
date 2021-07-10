--DO NOT EDIT OR REUPLOAD THIS FILE

AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")

function ENT:SpawnFunction( ply, tr, ClassName )
	if not tr.Hit then return end

	local ent = ents.Create( ClassName )
	ent.dOwnerEntLFS = ply  -- this is important
	ent:SetPos( tr.HitPos + tr.HitNormal * 50 )
	ent:Spawn()
	ent:Activate()

	return ent
end

function ENT:OnTick()
end

function ENT:RunOnSpawn()
self:AddPassengerSeat( Vector(58,-32,29), Angle(0,180,10) )
self:AddPassengerSeat( Vector(58,32,29), Angle(0,-10,10) )

end

function ENT:PrimaryAttack()
	if not self:CanPrimaryAttack() then return end

	
	self:SetNextPrimary( 0.13 )
	
	self:EmitSound( "h3_hornet_fire_snow" )
	
	local fP = {
		Vector(53.83,32,100.4),
		Vector(53.83,-32,100.4),

	}

	self.NumPrim = self.NumPrim and self.NumPrim + 1 or 1
	if self.NumPrim > 2 then self.NumPrim = 1 end
	
	local bullet = {}
	bullet.Num 	= 3
	bullet.Src 	= self:LocalToWorld( fP[self.NumPrim] )
	bullet.Dir 	= self:LocalToWorldAngles( Angle(0,(fP[self.NumPrim].y > 0 and 0 or 0),0) ):Forward()
	bullet.Spread 	= Vector( 0.01,  0.01, 0 )
	bullet.Tracer	= 1
	bullet.TracerName	= "effect_simfphys_halo_warthog_chaingun_tracer"
	bullet.Force	= 0
	bullet.HullSize 	= 2
	bullet.Damage	= 28
	bullet.Attacker 	= self:GetDriver()
	bullet.AmmoType = "Pistol"
	bullet.Callback = function(att, tr, dmginfo)
		dmginfo:SetDamageType(DMG_AIRBOAT)
	end
		self:FireBullets( bullet )
		
		self:TakePrimaryAmmo()
end

function ENT:SecondaryAttack()
if not self:GetEngineActive() then return end
if self:GetAI() then return end
	
	if not self:CanSecondaryAttack() then return end
	
	self:SetNextSecondary( 0.1 )
	
	self:EmitSound( "hornet_rocket_fire_h3" )

	
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
	
	local ent = ents.Create( "lfs_missile_halorocketh3_forked" )
	local Pos = self:LocalToWorld( Vector(90.12,40.89 * Mirror,10) )
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
			if Target:GetClass():lower() ~= "lfs_missile_halorocketh3_forked" then
				ent:SetLockOn( Target )
				ent:SetStartVelocity( 0 )
			end
		end
	end
	
	constraint.NoCollide( ent, self, 0, 0 ) 
	
	self:TakeSecondaryAmmo()
end

function ENT:CreateAI()
end

function ENT:RemoveAI()
end

function ENT:HandleWeapons(Fire1, Fire2)
	local Driver = self:GetDriver()
	
	if IsValid( Driver ) then
	if self:GetAmmoPrimary() > 0 then
		Fire1 = Driver:KeyDown( IN_ATTACK )
		
		if self:GetAmmoSecondary() > 0 then
			Fire2 = Driver:KeyDown( IN_ATTACK2 )
		end
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
	self:EmitSound( "h3_veh_in_horn" )
end

function ENT:OnEngineStopped()
	self:EmitSound( "h3_veh_out_horn" )
end

--[[
function ENT:OnRotorCollide( Pos, Dir )
	local effectdata = EffectData()
		effectdata:SetOrigin( Pos )
		effectdata:SetNormal( Dir )
	util.Effect( "manhacksparks", effectdata, true, true )

	self:EmitSound( "ambient/materials/roust_crash"..math.random(1,2)..".wav" )
end
]]

function ENT:OnRotorDestroyed()
	self:EmitSound( "physics/metal/metal_box_break2.wav" )
	
	self:SetBodygroup( 1, 2 )
	self:SetBodygroup( 2, 2 ) 
	
	self:SetHP(1)
	
	timer.Simple(2, function()
		if not IsValid( self ) then return end
		self:Destroy()
	end)
end

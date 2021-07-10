SWEP.Base			= "draconic_gun_base"

SWEP.HoldType			= "pistol"
SWEP.Category			= "Draconic: Halo Extras"
SWEP.PrintName			= "Type-33 GML-B"
SWEP.WepSelectIcon 		= "vgui/entities/drchalo_needler"
SWEP.Author				= "Snowy Snowtime"
SWEP.Contact			= "Steam: Snowy Snowtime\nDiscord: Snowy Snowtime#6018"

SWEP.Manufacturer		= "Sacred Promissory"
SWEP.InfoName			= "Needler"
SWEP.InfoDescription	= "The T-33 GML is a Covenant weapon which hurls razor-sharp crystals at a target which\n detonate shortly after impact.."

SWEP.CrosshairColor		= Color(127, 220, 255, 255)
SWEP.CrosshairShadow	= true
SWEP.CrosshairStatic	= "models/vuthakral/halo/HUD/reticles/ret_ne.vmt"
SWEP.CrosshairSizeMul	= 3
SWEP.CrosshairNoIronFade = true

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= false

SWEP.Slot				= 2
SWEP.SlotPos			= 0

SWEP.ViewModelFOV		= 70
SWEP.ViewModelFlip		= false

SWEP.UseHands			= true
SWEP.ViewModel 			= "models/snowysnowtime/drc/c_spv3needler.mdl"
SWEP.WorldModel			= "models/snowysnowtime/drc/w_spv3needler.mdl"
SWEP.VMPos 				= Vector(0, 0, 0)
SWEP.VMAng 				= Vector(0, 0, 0)
SWEP.VMPosCrouch		= Vector(0.3, -2, 0.3)
SWEP.VMAngCrouch		= Vector(0, 0, 0)
SWEP.IronSightsPos 		= Vector(-6.5, 2, -2)
SWEP.IronSightsAng 		= Vector(0, 0, 0)
SWEP.PassivePos 		= Vector(2, 3, 0)
SWEP.PassiveAng 		= Vector(-15, 25, 0)
SWEP.DoesPassiveSprint = true
SWEP.SS = 1
SWEP.BS = 1

SWEP.Primary.NumShots 		= 1
SWEP.Primary.Spread			= 6
SWEP.Primary.SpreadDiv		= 200
SWEP.Primary.Kick			= 0.21
SWEP.Primary.RecoilUp		= 0.15
SWEP.Primary.RecoilDown		= 0.05
SWEP.Primary.RecoilHoriz	= 25
SWEP.Primary.Force			= 0.2
SWEP.Primary.Damage			= 12
SWEP.Primary.Ammo			= "AR2"
SWEP.Primary.Automatic		= true
SWEP.Primary.RPM			= 710
SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.APS			= 1
SWEP.Primary.Tracer			= 0 -- https://wiki.garrysmod.com/page/Enums/TRACER
SWEP.Primary.ReloadHoldType	= "ar2"
SWEP.Primary.EmptySound		= Sound("drc.halo_mag_empty")
SWEP.Primary.Sound 			= Sound("needler_hcea_fire")
SWEP.Primary.SoundDistance 	= 1500
SWEP.Primary.TracerEffect	= "effect_astw2_halo_ce_tracer_ne"
if GetConVar("drc_snow_halo_projectiletype"):GetInt() == 0 then -- Hitscan
	
elseif GetConVar("drc_snow_halo_projectiletype"):GetInt() == 1 then -- halo purist
	SWEP.Primary.Projectile		= "drc_needler_needle"
end

SWEP.FireModes_CanAuto	= true
SWEP.FireModes_CanBurst = false
SWEP.FireModes_CanSemi	= false
SWEP.FireModes_BurstShots = 0

SWEP.Primary.CanMelee		= true
SWEP.Primary.MeleeSwingSound	= Sound( "" )
SWEP.Primary.MeleeHitSoundWorld = Sound( "weapon.ImpactSoft" )
SWEP.Primary.MeleeHitSoundFlesh = Sound( "flesh.ImpactSoft" )
SWEP.Primary.MeleeHitSoundEnt 	= Sound( "weapon.ImpactHard" )
SWEP.Primary.MeleeImpactDecal 	= ""
SWEP.Primary.MeleeDamage		= 5
SWEP.Primary.MeleeDamageType	= DMG_CLUB
SWEP.Primary.MeleeRange			= 16.5
SWEP.Primary.MeleeForce			= 13
SWEP.Primary.MeleeDelayMiss		= 1.5
SWEP.Primary.MeleeDelayHit 		= 1.5
SWEP.Primary.MeleeMissActivity	= ACT_VM_HITCENTER 

SWEP.Secondary.Disabled		= true
SWEP.Secondary.Ironsights	= true
SWEP.Secondary.IronFOV		= 80

SWEP.Primary.LightColor 		= Color(255, 2, 255)
SWEP.Primary.LightBrightness	= 1
SWEP.Primary.LightSize			= 150
SWEP.Primary.LightDecayTime		= 1000

function SWEP:DoCustomReloadEndEvents()
	if !game.IsDedicated() && self:IsValid() then self:EmitSound("spv3.needler_reload_fin") end
end

function SWEP:DoCustomReloadStartEvents()
	self.Weapon:SetClip1("0")
end

function SWEP:DoCustomMeleeImpact(att)
	local ply = self:GetOwner()
	local epos = ply:EyePos() - Vector(0, 0, 15) + ply:GetAimVector() * Vector(55, 55, 55)
	local epower = 25
	local erad = 40
	local epress = 50
	local funny
	funny = self.Weapon:Clip1()

	if funny < 20 then return end
	self:EmitSound("drc.Needler_supercombine")
	
	for f, v in pairs(ents.FindInSphere(epos, erad)) do
	
	local dmg2 = DamageInfo()
	dmg2:SetDamage(self.Primary.Damage * 3.25)
	dmg2:SetInflictor(self)
	dmg2:SetDamageForce(self:EyeAngles():Forward())
	dmg2:SetDamagePosition(epos)
	dmg2:SetDamageType(DMG_BLAST)
	dmg2:SetAttacker(ply)
	
		if IsValid(v:GetPhysicsObject()) and !(v:IsPlayer() or v:IsNPC()) then
			v:GetPhysicsObject():SetVelocity((v:GetPos()-epos)*epress/(v:GetPos()):Distance(epos) * 2)
		elseif v:IsPlayer() or v:IsNPC() then
			if v == ply && !v:IsNPC() then v:SetVelocity((v:GetPos()-epos)*epress/(v:GetPos()):Distance(epos) * 2)
			self.Weapon:SetClip1("0")
			elseif v:IsPlayer() then v:SetVelocity((v:GetPos()-epos)*epress/(v:GetPos()):Distance(epos) * 2)
			elseif v:IsNPC() then v:SetVelocity((v:GetPos()-epos)*epress/(v:GetPos()):Distance(epos) * 2) end
		end
		if v != ply then v:TakeDamageInfo(dmg2) else end
	end

	util.ScreenShake( Vector( self:GetPos() ), 100, 100, 0.5, 50 )
	
	local ed69 = EffectData()
	ed69:SetOrigin(epos)
	util.Effect("drc_halo_ne_sc", ed69)
end
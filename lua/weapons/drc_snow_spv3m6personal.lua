SWEP.Base			= "draconic_gun_base"
SWEP.Gun			= "drc_snow_spv3m6personal"

SWEP.HoldType			= "revolver"
SWEP.Category			= "Draconic: Halo Extras"
SWEP.PrintName			= "M6C/Personal Defense"
SWEP.WepSelectIcon 		= "vgui/entities/drchalo_m6s"

SWEP.Manufacturer		= "Misriah Armory"
SWEP.InfoName			= "Magnum - SPV3 M6C"
SWEP.InfoDescription	= "Commonly-issued variant of the magnum used commonly by ground forces of the UNSC."

SWEP.CrosshairColor		= Color(127, 220, 255, 255)
SWEP.CrosshairShadow	= true
SWEP.CrosshairStatic	= "models/vuthakral/halo/HUD/reticles/ret_m6.vmt"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= false

SWEP.Slot				= 1
SWEP.SlotPos			= 0

SWEP.ViewModelFOV		= 70
SWEP.ViewModelFlip		= false

SWEP.UseHands			= true
SWEP.ViewModel 			= "models/snowysnowtime/drc/pistols/c_spv3_m6_personal.mdl"
SWEP.WorldModel			= "models/snowysnowtime/drc/pistols/w_spv3alt_pistol.mdl"
SWEP.VMPos 				= Vector(-1, 1, 0)
SWEP.VMAng 				= Vector(0, 0, 0)
SWEP.VMPosCrouch		= Vector(0, -3, -2)
SWEP.VMAngCrouch		= Vector(0, 0, -10)
SWEP.IronSightsPos 		= Vector(3, -5, 1)
SWEP.IronSightsAng 		= Vector(0, 0, 0)
SWEP.DoesPassiveSprint = true
SWEP.SS = 1
SWEP.BS = 1

SWEP.Primary.NumShots 		= 1
SWEP.Primary.Spread			= 6.5
SWEP.Primary.SpreadDiv		= 180
SWEP.Primary.Kick			= 0.36
SWEP.Primary.RecoilUp		= 0.1
SWEP.Primary.RecoilDown		= 0.3
SWEP.Primary.RecoilHoriz	= 5
SWEP.Primary.Force			= 0.2
SWEP.Primary.Damage			= 9
SWEP.Primary.Automatic		= false
SWEP.Primary.RPM			= 360
SWEP.Primary.ClipSize		= 12
SWEP.Primary.DefaultClip	= 12
SWEP.Primary.ReloadTimeEmpty= 1
SWEP.Primary.APS			= 1
SWEP.Primary.Tracer			= 0 -- https://wiki.garrysmod.com/page/Enums/TRACER
SWEP.Primary.TracerEffect	= "drc_halo_pistol_bullet"
SWEP.Primary.ReloadHoldType	= "pistol"
SWEP.Primary.EmptySound		= Sound("drc.halo_mag_empty")
SWEP.Primary.Sound 			= Sound("m6d_hcea_fire")
SWEP.Primary.DistSound 		= Sound("drc.magnum_fire_dist")
SWEP.Primary.SoundDistance 	= 1500

SWEP.FireModes_CanAuto	= false
SWEP.FireModes_CanBurst = false
SWEP.FireModes_CanSemi	= true
SWEP.FireModes_BurstShots = 0

SWEP.Primary.CanMelee		= true
SWEP.Primary.MeleeSwingSound	= Sound( "" )
SWEP.Primary.MeleeHitSoundWorld = Sound( "weapon.ImpactSoft" )
SWEP.Primary.MeleeHitSoundFlesh = Sound( "flesh.ImpactSoft" )
SWEP.Primary.MeleeHitSoundEnt 	= Sound( "weapon.ImpactHard" )
SWEP.Primary.MeleeImpactDecal 	= ""
SWEP.Primary.MeleeDamage		= 25
SWEP.Primary.MeleeDamageType	= DMG_CLUB
SWEP.Primary.MeleeRange			= 16.5
SWEP.Primary.MeleeForce			= 13
SWEP.Primary.MeleeDelayMiss		= 1
SWEP.Primary.MeleeDelayHit 		= 1
SWEP.Primary.MeleeMissActivity	= ACT_VM_HITCENTER 

SWEP.Secondary.Ironsights	= true
SWEP.Secondary.IronInFP		= "vuthakral/halo/weapons/br55hb/zoom_in.wav"
SWEP.Secondary.IronOutFP	= "vuthakral/halo/weapons/br55hb/zoom_out.wav"
SWEP.Secondary.Scoped		= true
SWEP.Secondary.ScopeMat		= "models/vuthakral/halo/HUD/scope_br"
SWEP.Secondary.ScopeBlur 	= true
SWEP.Secondary.ScopeBGCol 	= Color(0, 0, 0, 200)
SWEP.Secondary.IronFOV		= 38
SWEP.Secondary.ScopeScale	= 0.65

SWEP.AttachmentTable = {
	AmmunitionTypes = {"drc_att_bprofile_halomagnum"}
}
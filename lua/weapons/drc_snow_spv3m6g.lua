SWEP.Base			= "draconic_gun_base"
SWEP.Gun			= "drc_snow_spv3m6g"

SWEP.HoldType			= "revolver"
SWEP.Category			= "Draconic: Halo Extras"
SWEP.PrintName			= "M6G PDWS"
SWEP.WepSelectIcon 		= "vgui/entities/drchalo_magnum"

SWEP.Manufacturer		= "Misriah Armory"
SWEP.InfoName			= "Magnum - SPV3"
SWEP.InfoDescription	= "The 2552 modification package of the M6G is the latest revision of the M6-series.\n The M6G is a heavy pistol which fires a hefty 12.7x40mm SAP-HE round."

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
SWEP.ViewModel 			= "models/snowysnowtime/drc/pistols/c_spv3_m6d.mdl"
SWEP.WorldModel			= "models/snowysnowtime/drc/pistols/w_spv3_pistol.mdl"
SWEP.VMPos 				= Vector(-1, 1, 0)
SWEP.VMAng 				= Vector(0, 0, 0)
SWEP.VMPosCrouch		= Vector(0, -3, -2)
SWEP.VMAngCrouch		= Vector(0, 0, -10)
SWEP.IronSightsPos 		= Vector(-4.05, -5, -0.5)
SWEP.IronSightsAng 		= Vector(0, 0, 0)
SWEP.DoesPassiveSprint = true
SWEP.SS = 1
SWEP.BS = 1

SWEP.Primary.NumShots 		= 1
SWEP.Primary.Spread			= 6.5
SWEP.Primary.SpreadDiv		= 180
SWEP.Primary.Kick			= 0.36
SWEP.Primary.RecoilUp		= 0.5
SWEP.Primary.RecoilDown		= 0.3
SWEP.Primary.RecoilHoriz	= 25
SWEP.Primary.Force			= 0.2
SWEP.Primary.Damage			= 17
SWEP.Primary.Automatic		= false
SWEP.Primary.RPM			= 130
SWEP.Primary.ClipSize		= 8
SWEP.Primary.DefaultClip	= 8
SWEP.Primary.ReloadTime		= 1.1
SWEP.Primary.APS			= 1
SWEP.Primary.Tracer			= 1 -- https://wiki.garrysmod.com/page/Enums/TRACER
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

SWEP.Secondary.Disabled		= true
SWEP.Secondary.Ironsights	= true
SWEP.Secondary.SightsSuppressAnim = false
SWEP.Secondary.ScopeMat		= "overlays/drc_halo_m6d"
SWEP.Secondary.IronFOV		= 75

SWEP.AttachmentTable = {
	AmmunitionTypes = {"drc_att_bprofile_halomagnum"}
}
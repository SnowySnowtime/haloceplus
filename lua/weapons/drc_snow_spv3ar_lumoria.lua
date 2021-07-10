SWEP.Base			= "draconic_gun_base"
SWEP.Gun			= "drc_snow_spv3ar_lumoria"

SWEP.HoldType			= "ar2"
SWEP.Category			= "Draconic: Halo Extras"
SWEP.PrintName			= "MA4E"
SWEP.WepSelectIcon 		= "vgui/entities/drchalo_ma5d"

SWEP.Manufacturer		= "Misriah Armory"
SWEP.InfoName			= "Assault Rifle - Project Lumoria"
SWEP.InfoDescription	= "The MA4E Assault Rifle is the predecessor of the MA5E Assault Rifle.\nAlthough externally similar in appearances, the MA4E comes with an extended magazine, allowing it to carry as much as 60 rounds of ammunition."

SWEP.CrosshairColor		= Color(127, 220, 255, 255)
SWEP.CrosshairShadow	= true
SWEP.CrosshairStatic	= "models/vuthakral/halo/HUD/reticles/ret_ma5c.vmt"
SWEP.CrosshairDynamic	= "models/vuthakral/halo/HUD/reticles/ret_ma5c_dyn.vmt"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= false

SWEP.Slot				= 2
SWEP.SlotPos			= 0

SWEP.ViewModelFOV		= 70
SWEP.ViewModelFlip		= false

SWEP.UseHands			= true
SWEP.ViewModel 			= "models/snowysnowtime/drc/c_fp_cmtar_lumoria.mdl"
SWEP.WorldModel			= "models/snowysnowtime/drc/w_fp_cmtar_lumoria.mdl"
SWEP.VMPos 				= Vector(0, 0, 0)
SWEP.VMAng 				= Vector(1, 0, 0)
SWEP.VMPosCrouch		= Vector(0, -3, 0.5)
SWEP.VMAngCrouch		= Vector(0, 0, 0)
SWEP.IronSightsPos 		= Vector(-3.75, 0, -1.02)
SWEP.IronSightsAng 		= Vector(1, 0, 0)
SWEP.PassivePos 		= Vector(2, 3, 0)
SWEP.PassiveAng 		= Vector(-15, 25, 0)
SWEP.DoesPassiveSprint = true
SWEP.SS = 1
SWEP.BS = 0.23

SWEP.FireModes_CanAuto	= true
SWEP.FireModes_CanBurst = false
SWEP.FireModes_CanSemi	= false
SWEP.FireModes_BurstShots = 3

SWEP.Primary.NumShots 		= 1
SWEP.Primary.Spread			= 4.36
SWEP.Primary.SpreadDiv		= 60
SWEP.Primary.Kick			= 0.16
SWEP.Primary.RecoilUp		= 0.12
SWEP.Primary.RecoilDown		= 5
SWEP.Primary.RecoilHoriz	= 25
SWEP.Primary.Force			= 0.2
SWEP.Primary.Damage			= 10
SWEP.Primary.Automatic		= true
SWEP.Primary.RPM			= 600
SWEP.Primary.ClipSize		= 60
SWEP.Primary.DefaultClip	= 60
SWEP.Primary.APS			= 1
SWEP.Primary.Tracer			= 0 -- https://wiki.garrysmod.com/page/Enums/TRACER
SWEP.Primary.TracerEffect	= "drc_halo_ar_bullet" -- https://wiki.garrysmod.com/page/Enums/TRACER
SWEP.Primary.ReloadHoldType	= "ar2"
SWEP.Primary.EmptySound		= Sound("drc.halo_mag_empty")
SWEP.Primary.Sound 			= Sound("drc.ma37_fire")
SWEP.Primary.DistSound 		= Sound("drc.ma5c_fire_dist")
SWEP.Primary.SoundDistance 	= 1500

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
SWEP.Primary.MeleeDamage		= 25
SWEP.Primary.MeleeDamageType	= DMG_CLUB
SWEP.Primary.MeleeRange			= 16.5
SWEP.Primary.MeleeForce			= 13
SWEP.Primary.MeleeDelayMiss		= 1
SWEP.Primary.MeleeDelayHit 		= 1
SWEP.Primary.MeleeMissActivity	= ACT_VM_HITCENTER 

SWEP.Secondary.Disabled		= true
SWEP.Secondary.Ironsights	= true
SWEP.Secondary.Scoped		= false
SWEP.Secondary.ScopeMat		= "overlays/draconic_scope"
SWEP.Secondary.IronFOV		= 90

SWEP.AttachmentTable = {
	AmmunitionTypes = {"drc_att_bprofile_haloar"}
}

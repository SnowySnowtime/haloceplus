SWEP.Base			= "draconic_gun_base"

SWEP.HoldType			= "ar2"
SWEP.Category			= "Draconic: Halo Extras"
SWEP.PrintName			= "SRS99B"
SWEP.WepSelectIcon 		= "vgui/entities/drchalo_sniper"

SWEP.Manufacturer		= "Misriah Armory"
SWEP.InfoName			= "Bullpup Sniper Rifle"
SWEP.InfoDescription	= "Semi-auto, gas-operated, bullpupped, long-range general purpose sniper rifle."

SWEP.CrosshairColor		= Color(127, 220, 255, 255)
SWEP.CrosshairShadow	= true
SWEP.CrosshairStatic	= "models/vuthakral/halo/HUD/reticles/ret_sr.vmt"
SWEP.CrosshairSizeMul	= 5

SWEP.Spawnable			= false
SWEP.AdminSpawnable		= false

SWEP.Slot				= 3
SWEP.SlotPos			= 0

SWEP.ViewModelFOV		= 70
SWEP.ViewModelFlip		= false

SWEP.UseHands			= true
SWEP.ViewModel = 		"models/snowysnowtime/dsb/c_mifl_normal_bullpup_srs99.mdl"
SWEP.WorldModel			= "models/snowysnowtime/dsb/w_mifl_normal_bullpup_srs99.mdl"
SWEP.VMPos 				= Vector(-1, -1, -1.5)
SWEP.VMAng 				= Vector(0, -0.2, 0)
SWEP.VMPosCrouch		= Vector(0, -2, 0.4)
SWEP.VMAngCrouch		= Vector(0, 0, 0)
SWEP.IronSightsPos 		= Vector(0, -10.32, -1.395)
SWEP.IronSightsAng 		= Vector(0, 0, 0)
SWEP.DoesPassiveSprint = true
SWEP.SS = 1
SWEP.BS = 1

SWEP.FireModes_CanAuto	= false
SWEP.FireModes_CanBurst = false
SWEP.FireModes_CanSemi	= true
SWEP.FireModes_BurstShots = 3

SWEP.Primary.NumShots 		= 1
SWEP.Primary.Spread			= 1
SWEP.Primary.SpreadDiv		= 300
SWEP.Primary.Kick			= 3
SWEP.Primary.KickHoriz			= 3
SWEP.Primary.RecoilUp		= 0.5
SWEP.Primary.RecoilDown		= 0.3
SWEP.Primary.RecoilHoriz	= 25
SWEP.Primary.Force			= 0.2
SWEP.Primary.Damage			= 75
SWEP.Primary.Automatic		= false
SWEP.Primary.RPM			= 100
SWEP.Primary.ClipSize		= 4
SWEP.Primary.DefaultClip	= 4
SWEP.Primary.APS			= 1
SWEP.Primary.Tracer			= 0 -- https://wiki.garrysmod.com/page/Enums/TRACER
SWEP.Primary.TracerEffect	= "drc_halo_sniper_bullet"
SWEP.Primary.ReloadHoldType	= "ar2"
SWEP.Primary.EmptySound		= Sound("drc.halo_mag_empty")
SWEP.Primary.Sound 			= Sound("hce_sr_fire")
SWEP.Primary.DistSound 		= Sound("drc.srs99c_fire_dist")
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
SWEP.Secondary.IronInFP		= "vuthakral/halo/weapons/srs99c/zoom_in.wav"
SWEP.Secondary.IronOutFP	= "vuthakral/halo/weapons/srs99c/zoom_out.wav"
SWEP.Secondary.Scoped		= true
SWEP.Secondary.ScopeMat		= "models/vuthakral/halo/HUD/scope_sniper"
SWEP.Secondary.ScopeBlur 	= true
SWEP.Secondary.ScopeBGCol 	= Color(0, 0, 0, 200)
SWEP.Secondary.IronFOV		= 10
SWEP.Secondary.ScopeScale	= 0.65
SWEP.Secondary.ScopeWidth	= 1.75
SWEP.Secondary.ScopeHeight	= 1

SWEP.AttachmentTable = {
	AmmunitionTypes = {"drc_att_bprofile_halosniper_sabot"}
}
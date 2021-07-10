SWEP.Base			= "draconic_battery_base"

SWEP.HoldType			= "ar2"
SWEP.Category			= "Draconic: Halo Extras"
SWEP.PrintName			= "T-52 Particle Carbine"
SWEP.WepSelectIcon 		= "vgui/entities/drchalo_carbine"
SWEP.Author				= "Snowy Snowtime"
SWEP.Contact			= "Steam: Snowy Snowtime\nDiscord: Snowy Snowtime#6018"

SWEP.Manufacturer		= "Iruiru Armory"
SWEP.InfoName			= "Carbine - SPV3"
SWEP.InfoDescription	= "The Particle Carbine is a battery-powered, directed energy weapon that served--\n as a successor to the Type-51 Carbine near the end of the Human-Covenant War. "

SWEP.CrosshairColor		= Color(127, 220, 255, 255)
SWEP.CrosshairShadow	= true
SWEP.CrosshairStatic	= "models/vuthakral/halo/HUD/reticles/ret_cb.vmt"
SWEP.CrosshairDynamic	= "models/vuthakral/halo/HUD/reticles/ret_cb_dyn.vmt"
SWEP.CrosshairSizeMul	= 3

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= false
SWEP.AutoSwitchTo		= false
SWEP.Weight				= 1
SWEP.DeploySpeed		= 1

SWEP.Slot				= 2
SWEP.SlotPos			= 0

SWEP.ViewModelFOV		= 70
SWEP.ViewModelFlip		= false

SWEP.UseHands			= true
SWEP.ViewModel			= "models/snowysnowtime/dsb/spv3/c_carbine.mdl"
SWEP.WorldModel			= "models/snowysnowtime/dsb/spv3/w_carbine.mdl"
SWEP.VMPos 				= Vector(0, -2.5, -0.5)
SWEP.VMAng 				= Vector(0, 0, 0)
SWEP.VMPosCrouch		= Vector(0, -3, 1)
SWEP.VMAngCrouch		= Vector(0, 0, 0)
SWEP.IronSightsPos 		= Vector(0, 0, 0)
SWEP.IronSightsAng 		= Vector(-10, 0, 0)
SWEP.IronSightViewAng	= Vector(0, 0, 0)
SWEP.PassivePos 		= Vector(7, 3, 0.5)
SWEP.PassiveAng 		= Vector(-15, 35, 0)
SWEP.DoesPassiveSprint = true
SWEP.SS = 1
SWEP.BS = 1

SWEP.DisperseHeatPassively = true
SWEP.CanOverheat			= true
SWEP.CanVent				= false
SWEP.LowerRPMWithHeat		= false
SWEP.OverheatHoldType		= "knife"
SWEP.VentingHoldType		= "slam"
SWEP.HPS					= 11
SWEP.HeatLossInterval		= 0.01
SWEP.HeatLossPerInterval	= 0.35
SWEP.OverheatStrength		= 1
SWEP.OverHeatFinishPercent	= 0.9
SWEP.VentingStrength		= 1
SWEP.HeatRPMmin				= 210
SWEP.BatteryConsumPerShot	= 0.25

SWEP.BatteryToVec2 = Vector(255, 20, 20)
SWEP.BatteryFromVec2 = Vector(20, 150, 255)

SWEP.OverheatSound			= Sound("spv3oh_start")
SWEP.VentingSound			= Sound("")
SWEP.VentingStartSound		= Sound("")
SWEP.VentingStopSound		= Sound("spv3oh_exit")

SWEP.FireModes_CanAuto	= false
SWEP.FireModes_CanBurst = false
SWEP.FireModes_CanSemi	= true
SWEP.FireModes_BurstShots = 3

SWEP.Primary.NumShots 		= 1
SWEP.Primary.Spread			= 1.62
SWEP.Primary.SpreadDiv		= 90
SWEP.Primary.Kick			= 0.4
SWEP.Primary.KickHoriz		= 0.1
SWEP.Primary.RecoilUp		= 0.1
SWEP.Primary.RecoilDown		= 0.1
SWEP.Primary.RecoilHoriz	= 25
SWEP.Primary.Force			= 4
SWEP.Primary.Damage			= 10
SWEP.Primary.Automatic		= false
SWEP.Primary.RPM			= 700
SWEP.Primary.Tracer			= 0 -- https://wiki.garrysmod.com/page/Enums/TRACER
SWEP.Primary.TracerEffect	= "drc_halo_partc_beam" -- https://wiki.garrysmod.com/page/Enums/TRACER
SWEP.Primary.ReloadHoldType	= "smg"
SWEP.Primary.EmptySound		= Sound("drc.plasma_empty")
SWEP.Primary.Sound 			= Sound("spvcarb_fire")
SWEP.Primary.DistSound 		= Sound("drc.t51_fire_dist")
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
SWEP.Primary.MeleeHitDelay		= 0.2

SWEP.Secondary.Ironsights	= true
SWEP.Secondary.IronInFP		= "vuthakral/halo/weapons/t51c/carbine_zoom_in.wav"
SWEP.Secondary.IronOutFP	= "vuthakral/halo/weapons/t51c/carbine_zoom_out.wav"
SWEP.Secondary.Scoped		= true
SWEP.Secondary.ScopeMat		= "models/vuthakral/halo/HUD/scope_carbine"
SWEP.Secondary.ScopeBlur 	= true
SWEP.Secondary.ScopeBGCol 	= Color(0, 0, 0, 200)
SWEP.Secondary.IronFOV		= 50
SWEP.Secondary.ScopeScale	= 0.75
SWEP.Secondary.ScopeWidth	= 1.5
SWEP.Secondary.ScopeHeight	= 1

SWEP.Primary.LightColor 		= Color(40, 40, 200)
SWEP.Primary.LightBrightness	= 1
SWEP.Primary.LightSize			= 150
SWEP.Primary.LightDecayTime		= 1000

SWEP.AttachmentTable = {
	AmmunitionTypes = {"drc_att_bprofile_haloplasma"}
}
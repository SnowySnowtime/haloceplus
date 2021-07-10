SWEP.Base				= "draconic_melee_base"

SWEP.HoldType			= "knife" -- https://wiki.garrysmod.com/page/Hold_Types
SWEP.CrouchHoldType		= "knife"
SWEP.Category			= "Draconic: Swords"
SWEP.PrintName			= "Type-1 EW/S"
SWEP.WepSelectIcon 		= "vgui/entities/drchalo_sword"
SWEP.Author				= "Snowy Snowtime"
SWEP.Contact			= "Steam: Snowy Snowtime\nDiscord: Snowy Snowtime#6018"

SWEP.Manufacturer		= "Assembly Forges"
SWEP.InfoDescription	= "The Type-1 Energy Weapon/Sword (T-1 EW/S) is a traditional Sangheili close-quarters weapon.\n The energy sword is intended to express its owner's personal skill, clerical honor, and combat viability."

SWEP.RenderGroup = RENDERGROUP_TRANSLUCENT

SWEP.CrosshairColor		= Color(127, 220, 255, 255)
SWEP.CrosshairShadow	= true
SWEP.CrosshairStatic	= "models/vuthakral/halo/HUD/reticles/ret_es.vmt"
SWEP.CrosshairSizeMul	= 1

SWEP.AdminSpawnable = true
SWEP.AutoSwitchTo   = false
SWEP.Spawnable      = true
SWEP.AutoSwitchFrom = false
SWEP.FiresUnderwater= false
SWEP.Weight         = 5
SWEP.DrawCrosshair  = true
SWEP.Slot           = 0
SWEP.SlotPos        = 1
SWEP.DrawAmmo		= false

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/snowysnowtime/dsb/c_energysword.mdl"
SWEP.WorldModel 	= "models/snowysnowtime/dsb/w_energysword.mdl"
SWEP.ViewModelFOV   = 60
SWEP.VMPos 			= Vector(-1, 0, -1)
SWEP.VMAng 			= Vector(7, 0, 0)
SWEP.DoesPassiveSprint = false
SWEP.SS 			= 1
SWEP.BS 			= 1

SWEP.ViewModelFlip  = false
SWEP.ShowWorldModel = true

SWEP.Glow = true
SWEP.GlowColor		= Color(200, 170, 255)
SWEP.GlowBrightness	= 1
SWEP.GlowDecay		= 1000
SWEP.GlowSize		= 150
SWEP.GlowStyle		= 5

SWEP.Primary.SwingSound		= Sound( "h2a.eslunge" )
SWEP.Primary.HitSoundWorld 	= Sound( "D_HaloES.HitWorld" )
SWEP.Primary.HitSoundFlesh 	= Sound( "D_HaloES.HitFlesh" )
SWEP.Primary.HitSoundEnt	= Sound( "D_HaloES.HitWorld" )
SWEP.Primary.HoldType		= "melee"
SWEP.Primary.HoldTypeCrouch	= "melee"
SWEP.Primary.ImpactDecal 	= "ManhackCut"
SWEP.Primary.Automatic		= false
SWEP.Primary.Damage			= 28
SWEP.Primary.DamageType		= DMG_SLASH
SWEP.Primary.Range			= 16.5
SWEP.Primary.Force			= 15
SWEP.Primary.DelayMiss		= 0.52
SWEP.Primary.DelayHit 		= 0.44
SWEP.Primary.CanAttackCrouched = true
SWEP.Primary.MissActivity	= ACT_VM_PRIMARYATTACK 
SWEP.Primary.CrouchMissActivity	= ACT_VM_PRIMARYATTACK 
SWEP.Primary.HitDelay		= 0.2
SWEP.Primary.StartX			= 30
SWEP.Primary.EndX			= -30
SWEP.Primary.StartY			= 35
SWEP.Primary.EndY			= -35

SWEP.Primary.CanLunge			= true
SWEP.Primary.LungeAutomatic		= true
SWEP.Primary.LungeVelocity		= 1000
SWEP.Primary.LungeMaxDist		= 270
SWEP.Primary.LungeSwingSound	= Sound( "h2a.eslunge" )
SWEP.Primary.LungeHitSoundWorld = Sound( "D_HaloES.HitWorld" )
SWEP.Primary.LungeHitSoundFlesh = Sound( "D_HaloES.HitFlesh" )
SWEP.Primary.LungeHitSoundEnt	= Sound( "D_HaloES.HitWorld" )
SWEP.LungeHoldType		= "melee"
SWEP.LungeHoldTypeCrouch		= "melee"
SWEP.Primary.LungeImpactDecal 	= "ManhackCut"
SWEP.Primary.LungeMissAct		= ACT_VM_MISSCENTER
SWEP.Primary.LungeDelayMiss		= 1.3
SWEP.Primary.LungeDelayHit		= 0.7
SWEP.Primary.LungeHitDelay		= 0.26
SWEP.Primary.LungeDamage		= 72
SWEP.Primary.LungeDamageType	= DMG_SLASH
SWEP.Primary.LungeRange			= 25
SWEP.Primary.LungeForce			= 20
SWEP.Primary.LungeStartX		= 30
SWEP.Primary.LungeEndX			= -30
SWEP.Primary.LungeStartY		= -2.5
SWEP.Primary.LungeEndY			= 2.5

SWEP.Secondary.SwingSound 	 = Sound( "h2a.eslunge" )
SWEP.Secondary.HitSoundWorld 	= Sound( "D_HaloES.HitWorld" )
SWEP.Secondary.HitSoundFlesh 	= Sound( "D_HaloES.HitFlesh" )
SWEP.Secondary.HitSoundEnt	= Sound( "D_HaloES.HitWorld" )
SWEP.Secondary.HoldType		 = "melee2"
SWEP.Secondary.HoldTypeCrouch= "melee2"
SWEP.Secondary.ImpactDecal 	 = "ManhackCut"
SWEP.Secondary.Automatic 	 = false
SWEP.Secondary.Damage 	  	 = 28
SWEP.Secondary.DamageType	 = DMG_SLASH
SWEP.Secondary.Range       	 = 25
SWEP.Secondary.Force	   	 = 15
SWEP.Secondary.DelayMiss   	 = 0.52
SWEP.Secondary.DelayHit	   	 = 0.44
SWEP.Secondary.CanAttackCrouched = true
SWEP.Secondary.MissActivity	= ACT_VM_HITRIGHT
SWEP.Secondary.CrouchMissActivity	= ACT_VM_HITRIGHT
SWEP.Secondary.HitDelay		= 0.23
SWEP.Secondary.CanLunge		= false
SWEP.Secondary.Velocity		= Vector(0, 0, 0)
SWEP.Secondary.StartX		= 30
SWEP.Secondary.EndX			= -30
SWEP.Secondary.StartY		= -2
SWEP.Secondary.EndY			= -3
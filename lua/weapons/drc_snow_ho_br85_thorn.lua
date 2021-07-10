SWEP.Base			= "draconic_gun_base"
SWEP.Gun			= "drc_snow_ho_br85_thorn"

if ( CLIENT ) then
	SWEP.WepSelectIcon = surface.GetTextureID( "vgui/entities/drchalo_br" )
end

SWEP.HoldType			= "ar2"
SWEP.Category			= "Draconic: Halo Extras"
SWEP.PrintName			= "M395-D33 THORN"
SWEP.InfoName			= "Battle Rifle"
SWEP.Auhtor				= "Snowy Snowtime"
SWEP.Contact			= "SnowySnowtime#6018"
SWEP.Purpose			= ""
SWEP.Instructions		= ""

SWEP.CrosshairColor		= Color(127, 220, 255, 255)
SWEP.CrosshairShadow	= true
SWEP.CrosshairStatic	= "models/vuthakral/halo/HUD/reticles/ret_br.vmt"
SWEP.CrosshairDynamic	= "models/vuthakral/halo/HUD/reticles/ret_br_dyn.vmt"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= false

SWEP.Slot				= 2
SWEP.SlotPos			= 0

SWEP.ViewModelFOV		= 70
SWEP.ViewModelFlip		= false

SWEP.UseHands			= true
SWEP.ViewModel = 		"models/snowysnowtime/drc/ho/c_br_dmg.mdl"
SWEP.WorldModel			= "models/snowysnowtime/drc/ho/w_br_dmg.mdl"
SWEP.VMPos 				= Vector(0, 0, -1.3)
SWEP.VMAng 				= Vector(0, 0, 0)
SWEP.VMPosCrouch		= Vector(0.5, -1, 0)
SWEP.VMAngCrouch		= Vector(0, 0, -5)
SWEP.IronSightsPos 		= Vector(-3.31, -9.676, -0.95)
SWEP.IronSightsAng 		= Vector(-1.308, 0.615, 0.758)
SWEP.PassivePos 		= Vector(2, 3, 0)
SWEP.PassiveAng 		= Vector(-15, 25, 0)
SWEP.DoesPassiveSprint = true
SWEP.SS = 1
SWEP.BS = 0.64

SWEP.Primary.NumShots 		= 1
SWEP.Primary.Spread			= 6
SWEP.Primary.SpreadDiv		= 82
SWEP.Primary.Kick			= 1
SWEP.Primary.RecoilUp		= 0.5
SWEP.Primary.RecoilDown		= 0.3
SWEP.Primary.RecoilHoriz	= 25
SWEP.Primary.Force			= 0.2
SWEP.Primary.Damage			= 20
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic		= false
SWEP.Primary.RPM			= 400
SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.APS			= 1
SWEP.Primary.Tracer			= 1 -- https://wiki.garrysmod.com/page/Enums/TRACER
SWEP.Primary.TracerEffect	= "drc_snow_halo_br_tracer"
SWEP.Primary.ReloadHoldType	= "ar2"
SWEP.Primary.EmptySound		= Sound("drc.halo_mag_empty")
SWEP.Primary.Sound 			= Sound("drc.HaloOnline_BR_Damage")
SWEP.Primary.DistSound 		= Sound("drc.br55hb_fire_dist")
SWEP.Primary.SoundDistance 	= 1500

SWEP.FireModes_CanAuto	= false
SWEP.FireModes_CanBurst = true
SWEP.FireModes_CanSemi	= true
SWEP.FireModes_BurstShots = 3

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
SWEP.Secondary.Scoped		= false
SWEP.Secondary.ScopeMat		= "models/vuthakral/halo/HUD/scope_br"
SWEP.Secondary.IronFOV		= 80

SWEP.NPCBurstShots = 3

SWEP.VElements = {
	["ammo_counter"] = { type = "Quad", bone = "b_gun", rel = "", pos = Vector(1.48, -.23, 6.2), angle = Angle(0, -90, 45), size = 0.011, draw_func = nil},
	["ammo_counter_00"] = { type = "Quad", bone = "b_gun", rel = "", pos = Vector(1.493, -.35, 6), angle = Angle(0, -90, 45), size = 0.011, draw_func = nil}
}

function SWEP:DoCustomInitialize()
	local ply = self:GetOwner()
	
	if CLIENT then
		self.VElements["ammo_counter"].draw_func = function( weapon )
			if self:Clip1() < 10 then
				draw.SimpleText("0".. self:Clip1() .."", "343_ammocounter", 0, 8.5, Color(200,0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM)
			else
				draw.SimpleText(self:Clip1(), "343_ammocounter", 0, 8.5, Color(200,0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM)
			end
		end
		
		self.VElements["ammo_counter_00"].draw_func = function( weapon )
			draw.SimpleTextOutlined("00", "343_ammocounter", 0, 8.5, Color(200,0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM, 2, Color(115, 186, 214,150))
		end
	end
end
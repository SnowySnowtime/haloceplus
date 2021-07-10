SWEP.Base			= "draconic_gun_base"
SWEP.Gun			= "drc_snow_ho_br85_vault"

if ( CLIENT ) then
	SWEP.WepSelectIcon = surface.GetTextureID( "vgui/entities/drchalo_br" )
end

SWEP.HoldType			= "ar2"
SWEP.Category			= "Draconic: Halo Extras"
SWEP.PrintName			= "BR85-C89 Vault"
SWEP.InfoName			= "Battle Rifle - MAG"
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
SWEP.ViewModel = 		"models/snowysnowtime/drc/ho/c_br_ammo.mdl"
SWEP.WorldModel			= "models/snowysnowtime/drc/ho/w_br_mag.mdl"
SWEP.VMPos 				= Vector(0, 0, -1.3)
SWEP.VMAng 				= Vector(0, 0, 0)
SWEP.VMPosCrouch		= Vector(0.5, -1, 0)
SWEP.VMAngCrouch		= Vector(0, 0, -5)
SWEP.IronSightsPos 		= Vector(-3.15, -50, -1.76)
SWEP.IronSightsAng 		= Vector(0, 0.25, 1)
SWEP.PassivePos 		= Vector(2, 3, 0)
SWEP.PassiveAng 		= Vector(-15, 25, 0)
SWEP.DoesPassiveSprint = true
SWEP.SS = 1
SWEP.BS = 0.64

SWEP.Primary.NumShots 		= 1
SWEP.Primary.Spread			= 3
SWEP.Primary.SpreadDiv		= 82
SWEP.Primary.Kick			= 0.26
SWEP.Primary.RecoilUp		= 0.5
SWEP.Primary.RecoilDown		= 0.3
SWEP.Primary.RecoilHoriz	= 25
SWEP.Primary.Force			= 0.2
SWEP.Primary.Damage			= 10
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic		= false
SWEP.Primary.RPM			= 700
SWEP.Primary.ClipSize		= 40
SWEP.Primary.DefaultClip	= 40
SWEP.Primary.APS			= 1
SWEP.Primary.Tracer			= 1 -- https://wiki.garrysmod.com/page/Enums/TRACER
SWEP.Primary.TracerEffect	= "drc_snow_halo_br_tracer"
SWEP.Primary.ReloadHoldType	= "ar2"
SWEP.Primary.EmptySound		= Sound("drc.halo_mag_empty")
SWEP.Primary.Sound 			= Sound("drc.HaloOnline_BR_Mag")
SWEP.Primary.DistSound 		= Sound("drc.br55hb_fire_dist")
SWEP.Primary.SoundDistance 	= 1500

SWEP.FireModes_CanAuto	= false
SWEP.FireModes_CanBurst = true
SWEP.FireModes_CanSemi	= true
SWEP.FireModes_BurstShots = 5

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
SWEP.Secondary.ScopeBlur	= true
SWEP.Secondary.ScopeBGCol 	= Color(0, 0, 0, 200)
SWEP.Secondary.IronFOV		= 50
SWEP.Secondary.ScopeScale	= 0.65
SWEP.NPCBurstShots = 1

function SWEP:DrawCustom2DScopeElements()
	local w = ScrW()
	local h = ScrH()
	
	local ratio = w/h
	
	local ss = 4 * self.Secondary.ScopeScale
	local sw = self.Secondary.ScopeWidth
	local sh = self.Secondary.ScopeHeight
	
	local wi = w / 10 * ss
	local hi = h / 10 * ss
	
	surface.SetDrawColor(Color(0, 0, 0, 255))
	surface.SetMaterial(Material("models/vuthakral/halo/HUD/scope_elements/br_e1"))
	surface.DrawTexturedRectUV( wi * 1.4, h/2 * 1.1, hi * sw, hi / 2, 0, 0, 1, 1 )
	
	surface.SetMaterial(Material("models/vuthakral/halo/HUD/scope_elements/br_e2"))
	surface.DrawTexturedRectUV( w/2 - hi / 2 * 1.65, h/2 - (hi / 2 * 0.2), hi * sw, hi / 2 * 0.4, 0, 0, 1, 1 )
	surface.DrawTexturedRectUV( w/2 - hi / 6, h/2 - (hi / 2 * 0.2), hi * sw, hi / 2 * 0.4, 1, 0, 0, 1 )
	
	surface.SetMaterial(Material("models/vuthakral/halo/HUD/scope_elements/br_e3"))
	surface.DrawTexturedRectUV( w/2 - hi / 16, hi * 1.775, wi / 14, hi, 0, 1, 1, 0 )
	surface.DrawTexturedRectUV( w/2 - hi / 17, hi * 1.1, wi / 14, hi, 1, 0, 0, 1 )
end

SWEP.VElements = {
	["ammo_counter"] = { type = "Quad", bone = "b_gun", rel = "", pos = Vector(1.463, -.23, 6.2), angle = Angle(0, -90, 45), size = 0.011, draw_func = nil},
	["ammo_counter_00"] = { type = "Quad", bone = "b_gun", rel = "", pos = Vector(1.6, -.23, 6.2), angle = Angle(0, -90, 45), size = 0.011, draw_func = nil}
}

function SWEP:DoCustomInitialize()
	local ply = self:GetOwner()
	
	if CLIENT then
		self.VElements["ammo_counter"].draw_func = function( weapon )
			if self:Clip1() < 10 then
				draw.SimpleText("0".. self:Clip1() .."", "343_ammocounter", 0, 8.5, Color(0,0,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM)
			else
				draw.SimpleText(self:Clip1(), "343_ammocounter", 0, 8.5, Color(0,0,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM)
			end
		end
		
		self.VElements["ammo_counter_00"].draw_func = function( weapon )
			draw.SimpleTextOutlined("00", "343_ammocounter", 0, 8.5, Color(0,0,0,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM, 2, Color(115, 186, 214,150))
		end
	end
end
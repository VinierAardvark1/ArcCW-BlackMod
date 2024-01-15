SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - BlackMod" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "L'alibi dell'italiano"
SWEP.TrueName = "Beretta Mx4 Storm"
SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = [[The Beretta Mx4 Storm is the military version of the Cx4 Storm, which is a pistol-calibre semi-automatic carbine aimed at the sporting, personal defense and law enforcement markets. Unlike the Cx4, the Mx4 is capable of fully automatic fire, and features a 12-inch barrel and, most commonly, a 30-round magazine.

Both the Mx4 and Cx4 feature a Picatinny rail on the receiver for mounting modern optics, as well as a tri-rail adapter for mounting flashlights, laser sights, grips and other accessories. Both firearms also have ambidextrous features, such as being able to switch the fire selector, charging handle, ejection port and magazine release to the left side.
The Cx4 Storm was developed to be used in conjunction with Beretta semi-automatic pistols. For example, the magazines for the Beretta 92FS chambered in 9mm can be used in the Cx4 (also chambered in 9mm).



12/27/1947 - 7/22/2022.]] --Thank you, for everything you've done for us. I will never forget. I won't.
SWEP.Trivia_Manufacturer = "Beretta"
SWEP.Trivia_Calibre = "9×19mm Parabellum"
SWEP.Trivia_Mechanism = "Straight Blowback"
SWEP.Trivia_Country = "Italy"
SWEP.Trivia_Year = 2003

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/mx4_storm/c_mx4.mdl"
SWEP.WorldModel = "models/weapons/mx4_storm/w_mx4.mdl"
SWEP.WorldModelOffset = {
    pos = Vector(-12.7, 1, -4.5),
    ang = Angle(-10, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}
SWEP.ViewModelFOV = 60

SWEP.Damage = 29
SWEP.DamageMin = 18 -- damage done at maximum range
SWEP.Range = 200 -- in METRES
SWEP.Penetration = 5
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 390 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 45
SWEP.ReducedClipSize = 15

SWEP.Recoil = 0.25
SWEP.RecoilSide = 0.25
SWEP.RecoilRise = 0.5

SWEP.Delay = 60 / 1000 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 50

SWEP.AccuracyMOA = 2 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 700 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 300

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "mx4_storm" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = {"weapons/mx4_storm/fire_1.wav", "weapons/mx4_storm/fire_2.wav", "weapons/mx4_storm/fire_3.wav", "weapons/mx4_storm/fire_4.wav"}
SWEP.ShootSoundSilenced = {"weapons/mx4_storm/sil_fire_1.wav", "weapons/mx4_storm/sil_fire_2.wav", "weapons/mx4_storm/sil_fire_3.wav", "weapons/mx4_storm/sil_fire_4.wav"}
SWEP.DistantShootSound = "weapons/mx4_storm/fire_distant.wav"

SWEP.MuzzleEffect = "muzzleflash_smg"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 3 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.85
SWEP.SightTime = 0.45
SWEP.VisualRecoilMult = 1
SWEP.RecoilRise = 1

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.55, 0.25, 1),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(4, 0, 0)
SWEP.HolsterAng = Angle(-7, 30, 0)

SWEP.CrouchPos = Vector(-1.5, 0.75, -0.6)
SWEP.CrouchAng = Angle(0, 0, -15)

SWEP.CustomizePos = Vector(12, 0, -2)
SWEP.CustomizeAng = Angle(12, 40, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 30
SWEP.ExtraSightDist = 5

SWEP.ReloadInSights = false
SWEP.LockSightsInReload = false

SWEP.AttachmentElements = {
    ["special_mx4_tan"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
    ["special_mx4_inmemoria"] = {
        VMSkin = 2,
        WMSkin = 2,
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "A_Optic", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0, 0.5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 90),
            wpos = Vector(6, 1, -5.25),
            wang = Angle(-10, 0, 180),
        },
        CorrectivePos = Vector(-0.01, 0, 0),
        CorrectiveAng = Angle(0, 0, -2)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "A_Suppressor",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(270, 90, 0),
            wpos = Vector(16.5, 1, -5.5),
            wang = Angle(-10, 0, 180),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip",
        Bone = "Weapon",
        Offset = {
            vpos = Vector(-0.775, -7.25, 0),
            vang = Angle(0, 90, 90),
            wpos = Vector(13, 1, -3.2),
            wang = Angle(-10, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "A_LaserFlashlight",
        Offset = {
            vpos = Vector(0, -0.58, 0),
            vang = Angle(0, 0, 90),
            wpos = Vector(14, 0, -5.1),
            wang = Angle(-10, 0, 90),
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },
    {
        PrintName = "Stock",
        Slot = "stock",
        DefaultAttName = "Standard Stock"
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "weapon",
        Offset = {
            vpos = Vector(0.7, 5.5, 0.75),
            vang = Angle(270, 90, 5),
            wpos = Vector(0, 0, 0),
            wang = Angle(-10, 0, 180),
        },
    },
    {
        PrintName = "Skin",
        Slot = "special_mx4_skins",
        DefaultAttName = "Clean",
        FreeSlot = true
    }
}

SWEP.Animations = {
    ["idle"] = {
        Source = "base_idle",
		LHIK = false,
    },
	["idle_iron"] = {
        Source = "iron_idle",
		LHIK = false,
    },
	["idle_empty"] = {
        Source = "base_idle_empty",
		LHIK = false,
    },
    ["idle_iron_empty"] = {
        Source = "iron_idle_empty",
		LHIK = false,
    },
	["fire"] = {
        Source = "base_fire",
        ShellEjectAt = 0
    },
	["fire_iron"] = {
        Source = "iron_fire",
        ShellEjectAt = 0
    },
    ["fire_last"] = {
        Source = "base_fire_last",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
        ShellEjectAt = 0
    },
	["fire_iron_last"] = {
        Source = "iron_fire_last",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
        ShellEjectAt = 0
    },
    ["fire_empty_last"] = {
        Source = "base_fire_empty",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
        --ShellEjectAt = 0
    },
    ["fire_iron_empty"] = {
        Source = "iron_fire_empty",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
        --ShellEjectAt = 0
    },
    ["ready"] = {
        Source = "base_ready",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
		SoundTable = {
			{s = "weapons/mx4_storm/smg_slide_back.wav", t = 0.35},
            {s = "weapons/mx4_storm/smg_slide_forward.wav", t = 0.55},
		},
    },
    ["draw"] = {
        Source = "base_draw",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
        SoundTable = {
			{s = "weapons/mx4_storm/rustle_1.wav", t = 0},
		},
    },
    ["draw_empty"] = {
        Source = "base_draw_empty",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
        SoundTable = {
			{s = "weapons/mx4_storm/rustle_1.wav", t = 0},
		},
    },
    ["holster"] = {
        Source = "base_holster",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
        SoundTable = {
			{s = "weapons/mx4_storm/rustle_3.wav", t = 0},
		},
    },
	["holster_empty"] = {
        Source = "base_holster_empty",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["reload"] = {
        Source = "base_reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
		SoundTable = {
            {s = "weapons/mx4_storm/rustle_2.wav", t = 0.15},
			{s = "weapons/mx4_storm/smg_mag_out.wav", t = 0.2},
            {s = "weapons/mx4_storm/smg_mag_in.wav", t = 1},
            {s = "weapons/mx4_storm/rustle_3.wav", t = 1.3},
        },
        MinProgress = 1.23,
    },
    ["reload_empty"] = {
        Source = "base_reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
		SoundTable = {
			{s = "weapons/mx4_storm/smg_mag_out.wav", t = 0.2},
            {s = "weapons/mx4_storm/rustle_2.wav", t = 0.3},
            {s = "weapons/mx4_storm/rustle_3.wav", t = 1.05},
            {s = "weapons/mx4_storm/smg_mag_in.wav", t = 1.2},
            {s = "weapons/mx4_storm/smg_slide_forward.wav", t = 1.7},
            {s = "weapons/mx4_storm/smg_bolt_release.wav", t = 1.8},
            {s = "weapons/mx4_storm/rustle_3.wav", t = 2.2},
        },
        MinProgress = 2.2,
    },
    ["idle_sprint"] = {
        Source = "base_sprint_loop",
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 1,
    },
    ["idle_sprint"] = {
        Source = "base_sprint_loop_empty",
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 1,
    },
}
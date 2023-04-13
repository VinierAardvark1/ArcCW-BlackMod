SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - BlackMod" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Bigger Iron"
SWEP.TrueName = "S&W Model 500"
SWEP.Trivia_Class = "Revolver"
SWEP.Trivia_Desc = [[The Smith & Wesson Model 500 is a five-shot, double/single action large-caliber revolver produced by Smith & Wesson, firing the .500 S&W Magnum cartridge. It's built on the X-Frame, which was developed to handle the immense muzzle valocity and pressures generating via firing the .500 Magnum. It fires bullets weighing 350 gr or 22.7g at 1,975 fps or 602 m/s. Unlike traditional barrels, the S&W 500 uses a rifled tube inside the barrel shroud secured by front tension which leads to improved accuracy, stability, and reduced production costs. Its advanced design helps to counteract felt recoil by sheer weight, rubber grips, forward balance, and it's built-in compensator. Like most larce caliber handguns, the Model 500 is suiable for sport and hunting applications, and it's high energy rounds enable it to hunt extremely large African game successfully.]]
SWEP.Trivia_Manufacturer = "Smith and Wesson"
SWEP.Trivia_Calibre = ".500 S&W Magnum"
SWEP.Trivia_Mechanism = "Single/Double Action"
SWEP.Trivia_Country = "United States of America"
SWEP.Trivia_Year = 2002

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/s&w_500/c_ins2_revolver_sw500.mdl"
SWEP.WorldModel	= "models/weapons/s&w_500/w_ins2_revolver_sw500.mdl"
SWEP.WorldModelOffset = {
    pos = Vector(4.5, 1, -2),
    ang = Angle(-6, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}
SWEP.ViewModelFOV = 90

SWEP.Damage = 75
SWEP.DamageMin = 125 -- damage done at maximum range
SWEP.Range = 183 -- in METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET + DMG_AIRBOAT
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 602 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 5 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 5
SWEP.ReducedClipSize = 5

SWEP.Recoil = 5
SWEP.RecoilSide = 3
SWEP.MaxRecoilBlowback = 2.5

SWEP.Delay = 60 / 150 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Double Action",
    },
    {
        PrintName = "Safety",
        Mode = 0
    }
}

SWEP.NPCWeaponType = {
    "weapon_357",
}
SWEP.NPCWeight = 5

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.ShootWhileSprint = false

SWEP.Primary.Ammo = "357" -- what ammo type the gun uses
SWEP.MagID = "sw500" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "sw500.fire"
SWEP.ShootSoundSilenced = "sw500.fire"
SWEP.DistantShootSound = "sw550.fire_distant"

SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 2
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = nil -- which attachment to put the case effect on
SWEP.ProceduralViewBobAttachment = 1
SWEP.CamAttachment = 96

SWEP.SightTime = 0.75
SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.75

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false
SWEP.CaseBones = {}
SWEP.IronSightStruct = {
    Pos = Vector(-2, 5, 0.2),
    Ang = Angle(-0.5, 0, 4),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "revolver"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(5, -5, 0)
SWEP.CustomizeAng = Angle(15, 40, 20)

SWEP.HolsterPos = Vector(1, -3, -1)
SWEP.HolsterAng = Angle(-5, 25, -10)

SWEP.CrouchPos = Vector(-3, -3, -1)
SWEP.CrouchAng = Angle(0, 0, -24)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 40
SWEP.ExtraSightDist = 5

SWEP.AttachmentElements = {
    [".410bore"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    }
}

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "sw500-gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0, 1.6), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 90, 0),
            wpos = Vector(11, 1, -5.9),
            wang = Angle(-6, 0, 180),
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 180, 0)
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Standard Barrel",
        Slot = "barrel",
    },
	{
        PrintName = "Underbarrel",
        Slot = "style_pistol",
        Bone = "sw500-gun",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(0, 90, 0),
            wpos = Vector(9, 0, -4),
            wang = Angle(173, 180, 0)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "sw500-gun",
        Offset = {
            vpos = Vector(0, -2.5, 0.4),
            vang = Angle(0, 90, 4),
            wpos = Vector(12, 1, -4.5),
            wang = Angle(-7, 0, 180)
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Straight Grip"
    },
    {
        PrintName = "Stock",
        Slot = "stock",
        DefaultAttName = "Standard Stock"
    },
    {
        PrintName = "Bullet Type",
        DefaultAttName = ".500 Magnum",	
        Slot = {"special_ammo_s&w_500_410_bore"},
        DefaultAttIcon = Material("entities/att/special_ammo_s&w_500.png", "mips smooth")
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet",
        ExcludeFlags = {".410bore"},
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "sw500-gun",
        Offset = {
            vpos = Vector(-0.25, -0.5, 1),
            vang = Angle(0, 90, 0),
            wpos = Vector(10.5, 1.25, -5.2),
            wang = Angle(-11, 0, 180)
        },
    },
}

SWEP.ReloadInSights = false
SWEP.LockSightsInReload = false

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
		LHIK = false,
    },
    ["ready"] = {
        Source = "base_ready",
		LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
    },
    ["draw"] = {
        Source = "base_draw",
		LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
    },
    ["reload"] = {
        Source = "base_reload_speed",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_REVOLVER,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
    },
    ["idle_sprint"] = {
        Source = "base_sprint",
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 1,
    },
    ["fire"] = {
        Source = "base_fire",
		LHIK = false,
    },
    ["iron_fire"] = {
        Source = "iron_fire",
		LHIK = false,
    },
    ["holster"] = {
        Source = "base_holster",
		LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
    },
}
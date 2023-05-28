SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - BlackMod" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "VG 1-5"
SWEP.TrueName = "Gustloff Volkssturmgewehr"
SWEP.Trivia_Class = "Semi Automatic Rifle"
SWEP.Trivia_Desc = [[swaws kek]]
SWEP.Trivia_Manufacturer = "Unknown, presumably Steyr Arms GmbH"
SWEP.Trivia_Calibre = "7.92×33mm Kurz"
SWEP.Trivia_Mechanism = "Gas-delayed blowback"
SWEP.Trivia_Country = "Nazi Germany"
SWEP.Trivia_Year = 1944

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/volkssturmgewehr/v_volkssturmgewehr.mdl"
SWEP.WorldModel = "models/weapons/volkssturmgewehr/w_volkssturmgewehr.mdl"
SWEP.WorldModelOffset = {
    pos = Vector(9, 2.5, -1),
    ang = Angle(-11, -1, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}
SWEP.ViewModelFOV = 60

SWEP.Damage = 27
SWEP.DamageMin = 18 -- damage done at maximum range
SWEP.Range = 300 -- in METRES
SWEP.Penetration = 5
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 660 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 20

SWEP.Recoil = 0.9
SWEP.RecoilSide = 0.65
SWEP.RecoilRise = 1

SWEP.Delay = 60 / 300 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_smg"
SWEP.NPCWeight = 50

SWEP.AccuracyMOA = 8 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 450 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 175

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses
SWEP.MagID = "gustvolkss" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "volkssturmgewehr.fire"
SWEP.ShootSoundSilenced = "volkssturmgewehr.fire_suppressed"
SWEP.DistantShootSound = "volkssturmgewehr.fire_distant"

SWEP.MuzzleEffect = "muzzleflash_5"
SWEP.ShellModel = "models/shells/shell_762nato.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.6
SWEP.SightTime = 0.3
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
    Pos = Vector(-1.975, 0, 0.9),
    Ang = Angle(0.25, 0, 5),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(5, 0, -2)
SWEP.SprintAng = Angle(0, 45, 0)

SWEP.HolsterPos = Vector(3, 0, 1)
SWEP.HolsterAng = Angle(-7, 30, 0)

SWEP.CrouchPos = Vector(-2.5, 2, -0.6)
SWEP.CrouchAng = Angle(0, 0, -15)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 48
SWEP.ExtraSightDist = 5

SWEP.ReloadInSights = false
SWEP.LockSightsInReload = false

SWEP.AttachmentElements = {
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Bone = "volk_body",
                Scale = Vector(-1, -1, 1),
                Offset = {
                    pos = Vector(-0.05, -2.25, 1),
                    ang = Angle(-90, 0, -90)
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Scale = Vector(-1, -1, 1),
                Offset = {
                    pos = Vector(8, 2, -6.75),
                    ang = Angle(169, 1, 1)
                }
            }
        }
    }
}

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "volk_body", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.05, -2.45, 1), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 270),
            wpos = Vector(8, 2, -6.9),
            wang = Angle(-11, 0, 180),
        },
        InstalledEles = {"mount"},
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0.15, 0, 0)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "volk_barrel",
        Offset = {
            vpos = Vector(0, 0.135, 9.65),
            vang = Angle(90, 0, 270),
            wpos = Vector(26.25, 2.3, -9.295),
            wang = Angle(-11, 0, 180),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip",
        Bone = "volk_body",
        Offset = {
            vpos = Vector(0, 0.5, 7.25),
            vang = Angle(90, 2, 270),
            wpos = Vector(15.85, 2.1, -4.95),
            wang = Angle(-13, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "volk_body",
        Offset = {
            vpos = Vector(-0.1, -0.75, 14.5),
            vang = Angle(90, 0, 270),
            wpos = Vector(24.5, 1.7, -8),
            wang = Angle(-11, -1, 180),
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
        Bone = "volk_body",
        Offset = {
            vpos = Vector(0.775, -1.1, 2.5),
            vang = Angle(90, 0, 270),
            wpos = Vector(9.45, 2.9, -5.675),
            wang = Angle(-10, 0, 180),
        },
    }
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
		LHIK = false,
    },
	["idle_iron"] = {
        Source = "idle",
		LHIK = false,
        Time = 100,
    },
	["fire"] = {
        Source = "base_fire",
        ShellEjectAt = 0
    },
    ["draw"] = {
        Source = "base_draw",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "base_ready",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["bash"] = {
        Source = "bash",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["holster"] = {
        Source = "base_holster",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["reload_empty"] = {
        Source = "base_empty_reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload"] = {
        Source = "base_reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}
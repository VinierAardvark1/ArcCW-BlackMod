SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - BlackMod" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "FAAR"
SWEP.TrueName = "Fedorov Avtomat"
SWEP.Trivia_Class = "Assault/Battle Rifle"
SWEP.Trivia_Desc = [[The Fedorov Avtomat is a select-fire, short-recoil operation, lock-breech, crew-served automatic rifle and also one of the world's first operational automatic rifle. Designed by Vladimir Grigoryevich Fyodorov in 1915 and produced by both the Russian Empire and USSR. A total of 3,200 were manufactured between 1915 and 1924 in Kovrov. It is often considered the predecessor of the modern-day assault rifle. It was originally going to be classed as a "handheld light-machine-gun" like the Madsen. In contemporary Russian terminolicy, "Avtomat" denotes assault rifles, although it literally translates to "automatic" and has been used on several other weapons, most notably the Avtomat Kalashniov, or the AK weapons model. Usually, because magazines were issued to troops in threes, the gun was reloaded through the breech via then-standard 5-round Arisaka stripper clips.]]
SWEP.Trivia_Manufacturer = "Kovrov Arms Factory"
SWEP.Trivia_Calibre = "6.5×50mmSR Arisaka"
SWEP.Trivia_Mechanism = "Short recoil operation"
SWEP.Trivia_Country = "Russian Empire"
SWEP.Trivia_Year = 1913

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/fedorov_avtomat/v_fedorov_avtomat.mdl"
SWEP.WorldModel = "models/weapons/fedorov_avtomat/w_fedorov_avtomat.mdl"
SWEP.WorldModelOffset = {
    pos = Vector(10, 2, -1),
    ang = Angle(-11, -1, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}
SWEP.ViewModelFOV = 60

SWEP.Damage = 38
SWEP.DamageMin = 19 -- damage done at maximum range
SWEP.Range = 500 -- in METRES
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 654 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 25 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 35
SWEP.ReducedClipSize = 15

SWEP.Recoil = 0.6
SWEP.RecoilSide = 0.8
SWEP.RecoilRise = 1

SWEP.Delay = 60 / 400 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_smg"
SWEP.NPCWeight = 50

SWEP.AccuracyMOA = 2.5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 650 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 200

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses
SWEP.MagID = "fed_av" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "fedorov.fire"
SWEP.ShootSoundSilenced = "fedorov.fire_suppressed"
SWEP.DistantShootSound = "fedorov.fire_distant"

SWEP.MuzzleEffect = "muzzleflash_6"
SWEP.ShellModel = "models/shells/shell_762nato.mdl"
SWEP.ShellScale = 1.5
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_556_steel"

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.5
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
    Pos = Vector(-3.3, 0.25, 1),
    Ang = Angle(0.5, 4, -2),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 2, 1)
SWEP.ActiveAng = Angle(0, 2.5, 0)

SWEP.SprintPos = Vector(5, -2, -2)
SWEP.SprintAng = Angle(0, 45, 0)

SWEP.HolsterPos = Vector(3, 0, 1)
SWEP.HolsterAng = Angle(-7, 30, 0)

SWEP.CrouchPos = Vector(-2.5, 0, -0.6)
SWEP.CrouchAng = Angle(0, 3.5, -15)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 48
SWEP.ExtraSightDist = 5

SWEP.ReloadInSights = false
SWEP.LockSightsInReload = false

SWEP.AttachmentElements = {
    ["extendedmag"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["special_fedorov_avtomat_gold"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Bone = "weapon",
                Scale = Vector(-1, -1, 1),
                Offset = {
                    pos = Vector(-0.05, -2.4, -3),
                    ang = Angle(-90, 0, -90)
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Scale = Vector(-1, -1, 1),
                Offset = {
                    pos = Vector(4, 1.5, -5.45),
                    ang = Angle(169, 1, -1)
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
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.05, -2.5, -3), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 270),
            wpos = Vector(4, 1.5, -5.55),
            wang = Angle(-11, 0, 180),
        },
        InstalledEles = {"mount"},
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(-1.1, 0, 0)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "weapon",
        Offset = {
            vpos = Vector(-0.06, -1.8, 27),
            vang = Angle(90, 0, 270),
            wpos = Vector(34.4, 2.03, -10.72),
            wang = Angle(-11, 0, 180),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "weapon",
        Offset = {
            vpos = Vector(0.6, -1, 12),
            vang = Angle(90, 0, 0),
            wpos = Vector(20, 2.5, -7),
            wang = Angle(-11, -1, 270),
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
            vpos = Vector(0.6, -0.6, 1.5),
            vang = Angle(90, 0, 270),
            wpos = Vector(9, 2.4, -4.8),
            wang = Angle(10, 0, 180),
        },
    },
    {
        PrintName = "Skin",
        Slot = "special_fedorov_avtomat_gold",
        DefaultAttName = "Sheet Metal",
        FreeSlot = true,
    }
}

SWEP.Animations = {
    ["idle"] = {
        Source = "base_idle",
		LHIK = false,
		Time = 10,
    },
	["idle_iron"] = {
        Source = "base_idle",
		LHIK = false,
		Time = 100,
    },
	["idle_empty"] = {
        Source = "empty_idle",
		LHIK = false,
    },
    ["idle_iron_empty"] = {
        Source = "empty_idle",
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
    ["fire_empty"] = {
        Source = "base_fire_empty",
        ShellEjectAt = 0
    },
    ["fire_iron_empty"] = {
        Source = "iron_fire_empty",
        ShellEjectAt = 0
    },
    ["ready"] = {
        Source = "base_ready",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["draw"] = {
        Source = "base_draw",
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
	["holster_empty"] = {
        Source = "base_holster_empty",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["reload_empty"] = {
        Source = "base_reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        Time = 3,
        MinProgress = 2.2,
    },
    ["reload"] = {
        Source = "base_reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        Time = 3,
        MinProgress = 2,
    },
}
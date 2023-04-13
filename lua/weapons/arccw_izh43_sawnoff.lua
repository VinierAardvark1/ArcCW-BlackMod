SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - BlackMod" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Raider Spartan 220"
SWEP.TrueName = "IZh-43 Sawn-Off"
SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = [[A standard IZh-43 that has been sawed down for easier concealment at the cost of range.
Not much is known about this shotgun, but it was designed in the early 80s and a prototype was shown at the hunting weapons exhbition in Irkutsk in October of 1985, then later put into production in 1986.]]
SWEP.Trivia_Manufacturer = "Izhevsk Mechanical Plant"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Break-Action"
SWEP.Trivia_Country = "Soviet Union"
SWEP.Trivia_Year = 1986

SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/izh43_sawnoff/c_izh43_sawnoff.mdl"
SWEP.WorldModel = "models/weapons/izh43_sawnoff/w_izh43_sawnoff.mdl"
SWEP.ViewModelFOV = 60
SWEP.WorldModelOffset = {
    pos = Vector(2.8, 1, -1.5),
    ang = Angle(-7, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}

SWEP.Damage = 15
SWEP.DamageMin = 7 -- damage done at maximum range
SWEP.Range = 35 -- in METRES
SWEP.Penetration = 1.2
SWEP.DamageType = DMG_BUCKSHOT

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 2 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 2
SWEP.ReducedClipSize = 2

SWEP.Recoil = 4.2
SWEP.RecoilSide = 1.8
SWEP.MaxRecoilBlowback = 2

SWEP.AccuracyMOA = 75 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 125 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 125

SWEP.Delay = 60 / 800 -- 60 / RPM.
SWEP.Num = 8 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        PrintName = "Single",
        Mode = 1,
    },
    {
        PrintName = "Both",
        Mode = 1,
        Mult_AccuracyMOA = 1.25,
        Mult_HipDispersion = 0.75,
        Mult_Num = 2,
        Override_AmmoPerShot = 2,
        Mult_Damage = 2,
        Mult_DamageMin = 2,
        Mult_VisualRecoilMult = 2,
        Mult_Recoil = 2,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_annabelle", "weapon_shotgun"}
SWEP.NPCWeight = 100

SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses
SWEP.MagID = "izh43_sawnoff" -- the magazine pool this gun draws from

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "izh43.fire"
SWEP.ShootSoundSilenced = "izh43.fire"
SWEP.DistantShootSound = "izh43.fire_distant"

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1.5
SWEP.ShellRotateAngle = Angle(270, 0, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.94
SWEP.SightedSpeedMult = 0.5
SWEP.SightTime = 0.30

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-1.9, 0, 1.7),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
}

SWEP.RevolverReload = true

SWEP.BulletBones = {
    --[1] = "Weapon_Mag_Fresh_2",
    --[2] = "Weapon_Mag_Fresh"
}

SWEP.CaseBones = {
    --[1] = "Weapon_Mag_2",
    --[2] = "Weapon_Mag"
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(0, 4, 2)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3.5, 2, 1.5)
SWEP.HolsterAng = Angle(-7, 30, 0)

SWEP.CrouchPos = Vector(-1, 2, 0)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 30
SWEP.ExtraSightDist = 5

SWEP.AttachmentElements = {
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Bone = "BarrelTube",
                Scale = Vector(1, 1, 1),
                Offset = {
                    pos = Vector(0.6, -0.5, 1.45),
                    ang = Angle(0, 90, 0)
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
        Slot = {"optic_lp", "optic"}, -- what kind of attachments can fit here, can be string or table
        Bone = "BarrelTube", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.6, -1, 1.6),
            vang = Angle(0, 90, 0),
            wpos = Vector(10, 1.4, -4.7),
            wang = Angle(173, 180, 0)
        },
        InstalledEles = {"mount"},
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 180, 0)
    },
    {
        PrintName = "Choke",
        DefaultAttName = "Standard Choke",
        Slot = "choke",
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "style_pistol"},
        Bone = "BarrelTube",
        Offset = {
            vpos = Vector(0.6, -3, -0.35),
            vang = Angle(0, 90, 0),
            wpos = Vector(14, 1.4, -3),
            wang = Angle(173, 0, 0)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "BarrelTube",
        Offset = {
            vpos = Vector(1.2, -1, 0.5),
            vang = Angle(0, 90, 270),
            wpos = Vector(11, 0.4, -3.6),
            wang = Angle(-7, 0, 90)
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_shotgun"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "WeaponBASE",
        Offset = {
            vpos = Vector(-0.7, 3.7, 0.1),
            vang = Angle(0, 90, -5),
            wpos = Vector(7.2, 2.18, -2.4),
            wang = Angle(173, 180, -5)
        },
        VMScale = Vector(0.8, 0.8, 0.8),
		WMScale = Vector(0.8, 0.8, 0.8),
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["1_to_2"] = {
        Source = "base_idle_foley"
    },
    ["draw"] = {
        Source = "base_draw",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = {"base_ready", "base_ready2"},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["holster"] = {
        Source = "base_holster",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "base_fire"
    },
	["fire_empty"] = {
        Source = "base_firelast"
    },
    ["fire_iron"] = {
        Source = "iron_fire"
    },
	["fire_iron_empty"] = {
        Source = "iron_firelast"
    },
    ["reload"] = {
        Source = "base_reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        LastClip1OutTime = 0.4,
        ShellEjectAt = 1.05,
    },
    ["reload_empty"] = {
        Source = "base_reloadempty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        LastClip1OutTime = 0.4,
        ShellEjectAt = 1.05,
    },
    ["idle_sprint"] = {
        Source = "base_sprint",
        Time = 0.7,
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
    ["bash"] = {
        Source = "base_melee_bash",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 4,
    },
}
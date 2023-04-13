SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - BlackMod" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Mannlicher–Carcano"
SWEP.TrueName = "Carcano Modello 1891"
SWEP.Trivia_Class = "Sniper Rifle"
SWEP.Trivia_Desc = [[The array of Carcano rifles was outstandingly as accredited for gun enthusiasts as for people that didn't read up on weapons nor military, because John Fitzgerald Kennedy was infamously assassinated by one of these rifles.
The early Type I Carcano rifle was produced for the Japanese Empire prior to WWII, based off the Type 38 rifle and chambered in 6.5×50mm Arisaka whilst utilizing 5-round box magazines. A Carcano M38 was used to assassinate JFK in 1963, incorrectly called a"Mannlicher-Carcano." The magazine system uses en block clips originally developed by Ferdinand Mannlicher, but the design and shape of these clips are derived from Germal Model 1888 Commission Rifles, which is a very similar rifle in appearance alone.]]
SWEP.Trivia_Manufacturer = "Carcano"
SWEP.Trivia_Calibre = "6.5×52mm Carcano"
SWEP.Trivia_Mechanism = "Bolt-Action"
SWEP.Trivia_Country	= "Italy"
SWEP.Trivia_Year = 1891

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/carcano1891/v_ww2_carcano_1891.mdl"
SWEP.WorldModel = "models/weapons/carcano1891/w_ww2_carcano1891.mdl"
SWEP.WorldModelOffset = {
    pos = Vector(14.5, 0, -4.25),
    ang = Angle(-11, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}
SWEP.ViewModelFOV = 90

SWEP.Damage = 70
SWEP.DamageMin = 110 -- damage done at maximum range
SWEP.Range = 200 -- in METRES
SWEP.Penetration = 250
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 2000  -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 6 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 9
SWEP.ReducedClipSize = 3

SWEP.Recoil = 1.25
SWEP.RecoilSide = 0.9
SWEP.MaxRecoilBlowback = 5

SWEP.Delay = 60 / 250 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        PrintName = "Bolt Action",
        Mode = 1,
    },
    {
        PrintName = "Safety",
        Mode = 0
    }
}

SWEP.NPCWeaponType = {
    "weapon_ar2",
    "weapon_crossbow",
}
SWEP.NPCWeight = 1

SWEP.AccuracyMOA = 1.75 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses
SWEP.MagID = "carcano1891" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootSound = "carcano1891.fire"
SWEP.ShootSoundSilenced = "carcano1891.fire_suppressed"
SWEP.DistantShootSound = "carcano1891.fire_distant"

SWEP.MuzzleEffect = "muzzleflash_4"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 90
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.ProceduralViewBobAttachment = 1
SWEP.CamAttachment = 3

SWEP.SightTime = 0.5
SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.6

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
}
SWEP.CaseBones = { -- Unlike BulletBones, these bones are determined by the missing bullet amount when reloading
     [1] = "Bullets",
     [2] = "Bullet_1",
     [3] = "Bullet_2",
     [4] = "Bullet_3",
     [5] = "Bullet_4",
     [6] = "Bullet_5",
     [7] = "Bullet_6"
}
SWEP.StripperClipBones = {
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false
SWEP.CaseBones = {}
SWEP.IronSightStruct = {
    Pos = Vector(-2.45, 0, 2.3),
    Ang = Angle(0.4, 0, 0),
    Magnification = 1.25,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, -4, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3, -3, 0)
SWEP.HolsterAng = Angle(-10, 30, 0)

SWEP.CrouchPos = Vector(-1, -2, -0.6)
SWEP.CrouchAng = Angle(0, 0, -15)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 60
SWEP.ExtraSightDist = 5

SWEP.ManualAction = true
SWEP.NoLastCycle = true

function SWEP:GetIsManualAction()
    local manual = self:GetBuff_Override("Override_ManualAction")

    if manual != false then
        manual = manual or self.ManualAction
    end

    -- A manual action gun CAN have automatic firemode, this is intended behavior!!!
    -- It's used for slamfiring
    --[[]
    local mode = self:GetCurrentFiremode().Mode
    if mode != 0 and mode != 1 then
        return false
    end
    ]]

    return manual
end

SWEP.AttachmentElements = {
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Bone = "Weapon",
                Scale = Vector(1, 1, 1),
                Offset = {
                    pos = Vector(0, -9, -1.45),
                    ang = Angle(180, 90, 0)
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Scale = Vector(1, 1, 1),
                Offset = {
                    pos = Vector(22, 0.7, -8.9),
                    ang = Angle(169, 180, 0)
                }
            }
        }
    }
}

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_sniper", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "Weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -9, -1.65), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 90, 180),
            wpos = Vector(23, 0.7, -9.15),
            wang = Angle(-11, 0, 180)
        },
        InstalledEles = {"mount"},
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 180, 0)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "A_Muzzle",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(180, 180, 180),
            wpos = Vector(45, 0.7, -12.75),
            wang = Angle(-11, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "bipod"},
        Bone = "Weapon",
        Offset = {
            vpos = Vector(0, -8, 0.4),
            vang = Angle(0, 90, 180),
            wpos = Vector(23, 0.9, -6.8),
            wang = Angle(-11, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Weapon",
        Offset = {
            vpos = Vector(-0.5, -9, 0),
            vang = Angle(0, 90, 90),
            wpos = Vector(21, -0.1, -7.7),
            wang = Angle(-11, 0, 90)
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
        Bone = "Weapon",
        Offset = {
            vpos = Vector(0.8, 2, 0),
            vang = Angle(0, 90, 180),
            wpos = Vector(9, 1.7, -4.5),
            wang = Angle(-11, 0, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "base_idle",
		LHIK = false,
    },
	["idle_empty"] = {
        Source = "empty_idle",
		LHIK = false,
    },
    ["idle_iron_empty"] = {
        Source = "iron_idle_empty",
		LHIK = false,
    },
    ["ready"] = {
        Source = "base_ready",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.25,
    },
    ["draw"] = {
        Source = "base_draw",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.25,
    },
    ["draw_empty"] = {
        Source = "base_draw_empty",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.25,
    },
    ["holster"] = {
        Source = "base_holster",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.25,
    },
	["holster_empty"] = {
        Source = "base_holster_empty",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.25,
    },
	["draw_empty"] = {
        Source = "base_draw_empty",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.25,
    },
	["fire"] = {
        Source = "base_fire_start",
        MinProgress = 0.2,
    },
	["fire_iron"] = {
        Source = "iron_fire_start",
        MinProgress = 0.2,
    },
    ["fire_empty"] = {
        Source = "base_fire_last",
    },
    ["fire_iron_empty"] = {
        Source = "iron_fire_last",
    },
	["cycle"] = {
        Source = "base_fire_end",
        ShellEjectAt = 0.55,
    },
    ["reload_empty"] = {
        Source = "base_reload_empty_clip",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        ShellEjectAt = 0.65,
    },
    ["reload"] = {
        Source = "base_reloadfull",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["idle_sprint"] = {
        Source = "base_sprint",
        LHIK = true,
        LHIKIn = 0.25,
        LHIKOut = 0.25,
    },
	["idle_sprint_empty"] = {
        Source = "base_sprint_empty",
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
    ["bash_empty"] = {
        Source = "base_melee_bash_empty",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 4,
    },
}
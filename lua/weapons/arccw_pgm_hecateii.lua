SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - BlackMod" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Anti-Material Rifle" --AMR my beloved
SWEP.TrueName = "PGM Hécate II"
SWEP.Trivia_Class = "Anti-Materiel Rifle"
SWEP.Trivia_Desc = [[The Hécate II is the standard heavy sniper and anti-material rifle of the French Army as of 1993, and is the largest weapon manufactured by PGM Précision. It's name is derived from the Greek goddess Hécate, Goddess of ghosts, necromancy, witchcraft, boundaries, crossroads, and the Moon.
It's metallic-skeleton design is used in similar rifles manufactured by PGM, but scaled up to fit the large caliber. The barrel is manufactured by FN Herstal and is fitted with a front bipod, wood stock, and high-efficiency muzzle brake, while newer models are also fitted with an adjustable polymer stocks with a monopod instead. The brake reduces felt recoil to around what is expected of a 7.62×51mm NATO-chambered rifle. It is similar in appearence to the PGM Ultima Ratio and PGM Mini-Hécate .338, chambered in 7.62×51mm NATO and .338 Lapua Magnum respectively.]]
SWEP.Trivia_Manufacturer = "PGM Précision"
SWEP.Trivia_Calibre = "12.7×99mm NATO"
SWEP.Trivia_Mechanism = "Bolt Action"
SWEP.Trivia_Country = "France"
SWEP.Trivia_Year = 1993

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/pgm_hecateii/v_hecateii.mdl"
SWEP.WorldModel	= "models/weapons/pgm_hecateii/w_hecateii.mdl"
SWEP.WorldModelOffset = {
    pos = Vector(2, 1.5, 0),
    ang = Angle(-11, 0, 181),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}
SWEP.ViewModelFOV = 90

SWEP.Damage = 125
SWEP.DamageMin = 230 -- damage done at maximum range
SWEP.Range = 1800 -- in METRES
SWEP.Penetration = 50
SWEP.DamageType = DMG_BULLET + DMG_AIRBOAT -- See DMG enum. This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 825 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 7 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 11
SWEP.ReducedClipSize = 3

SWEP.Recoil = 1.25
SWEP.RecoilSide = 1.4
SWEP.MaxRecoilBlowback = 1.1

SWEP.Delay = 60 / 100 -- 60 / RPM.
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

SWEP.AccuracyMOA = 0.25 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 1000 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 500

SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses
SWEP.MagID = "pgm_hecateii" -- the magazine pool this gun draws from

SWEP.ShootVol = 150 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootSound = "pgmii.fire"
SWEP.ShootSoundSilenced = "pgmii.fire"
SWEP.DistantShootSound = "pgmii.fire_distant"

SWEP.MuzzleEffect = "muzzleflash_5"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 60
SWEP.ShellScale = 2
SWEP.ShellRotateAngle = Angle(0, 90, 0)
SWEP.ShellEjectPosCorrection = Vector(0, 0, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 4 -- which attachment to put the case effect on
--30.42 Pounds
SWEP.SightTime = 1
SWEP.SpeedMult = 0.675
SWEP.SightedSpeedMult = 0.725
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false
SWEP.CaseBones = {}
SWEP.IronSightStruct = {
    Pos = Vector(-3.58, -2.45, 0.1), --(-3.65, -2.5, 1) - Old Values
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, -4, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, -4, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(2, -5, 0)
SWEP.HolsterAng = Angle(-7, 30, 0)

SWEP.CrouchPos = Vector(-2, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 57
SWEP.ExtraSightDist = 5

SWEP.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    util.BlastDamage(wep, wep:GetOwner(), data.tr.HitPos, 16, wep:GetDamage(data.range))
    if ent:IsValid() and ent:GetClass() == "npc_helicopter" then
        data.dmgtype = DMG_AIRBOAT
    end
end

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

SWEP.InBipodPos = Vector(-4.5, 2, -1)
SWEP.InBipodAng = Angle(0, 0, 0)
SWEP.M_Hook_Mult_SightTime = function(wep, data) --Sets ADS speed while deployed
    if wep:InBipod() then
        data.mult = 1.1
    end
end

SWEP.AttachmentElements = {
    ["IronSights"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["Tactical"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {{ind = 2, bg = 1}},
    },
    ["Bipod_Extended"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        WMBodygroups = {{ind = 3, bg = 1}},
    },
    ["Bipod_Hide"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
        WMBodygroups = {{ind = 3, bg = 2}},
    },
    ["special_hecateii_custom"] = { --name must match attachment file
        VMSkin = 1,
        WMSkin = 1,
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_sniper", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "A_Optic", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0.65, -1.7), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 90),
            wpos = Vector(8.675, 1.415, -7.7), --(10, 1.45, -7.5)
            wang = Angle(-11, 0.01, 181) --(-11, 0, 180)
        },
        InstalledEles = {"IronSights"},
        WMScale = Vector(1.1, 1.1, 1.1),
        DefaultAttIcon = Material("entities/att/special_hecateii_irons.png", "mips smooth")
    }, 
    {
        PrintName = "Barrel",
        DefaultAttName = "Standard Barrel",
        Slot = "barrel",
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "body",
        Offset = {
            vpos = Vector(0, 0.15, 22),
            vang = Angle(90, 0, 270),
            wpos = Vector(27, 1.35, -7.475),
            wang = Angle(-11, 0, 181)
        },
        InstalledEles = {"Tactical"},
        WMScale = Vector(1.1, 1.1, 1.1),
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "special_hecateii_bipod"},
        Bone = "body",
        Offset = {
            vpos = Vector(0, 0.25, 13.5),
            vang = Angle(90, 0, 270),
            wpos = Vector(11, 1, -4.2),
            wang = Angle(-12, 0, 180)
        },
        InstalledEles = {"Bipod_Hide"},
        WMScale = Vector(1.1, 1.1, 1.1),
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
        PrintName = "Ammo Type",
        Slot = "ammo_bullet",
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "body",
        Offset = {
            vpos = Vector(1.3, -0.45, 4.65),
            vang = Angle(270, 180, 90),
            wpos = Vector(8.9, 2.9, -4.5),
            wang = Angle(-11, 0, 181)
        },
    },
    {
        PrintName = "Skin",
        DefaultAttName = "Default",
        Slot = "special_hecateii_skin",
        FreeSlot = true,
    },
}

SWEP.ReloadInSights = false
SWEP.LockSightsInReload = false

SWEP.Animations = {
    ["idle"] = {
        Source = "base_idle",
		LHIK = false,
    },
    ["ready"] = {
        Source = "base_ready",
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
    ["draw"] = {
        Source = "base_draw",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.25,
    },
	["fire"] = {
        Source = "base_fire_start",
        MinProgress = 0.36,
    },
	["fire_iron"] = {
        Source = "iron_fire_start",
        MinProgress = 0.36,
    },
    ["fire_empty"] = {
        Source = "base_fire_last",
    },
    ["fire_iron_empty"] = {
        Source = "iron_fire_last",
    },
	["cycle"] = {
        Source = "base_fire_end",
        LHIK = true,
        LHIKIn = 0.15,
        LHIKOut = 0.15,
        ShellEjectAt = 0.4
    },
	["cycle_iron"] = {
        Source = "iron_fire_end",
        LHIK = true,
        LHIKIn = 0.15,
        LHIKOut = 0.15,
        ShellEjectAt = 0.5
    },
    ["reload_empty"] = {
        Source = "base_reloadempty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        ShellEjectAt = 0.7
    },
    ["reload"] = {
        Source = "base_reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["idle_sprint"] = {
        Source = "base_sprint",
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 1,
    },
}
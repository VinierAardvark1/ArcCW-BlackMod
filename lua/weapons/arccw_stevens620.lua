SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - BlackMod" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Browning Pump Model 27"
SWEP.TrueName = "Stevens Model 620"
SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = [[The Stevens Model 620 is a pump-action shotgun developed by the legendary John Browning and manufactured by the J Stevens Arms Company, preceeded by the Stevens Model 620 made by the J Stevens Arms & Tools Company.
Internally, the Model 620 is similar to the Model 520 yet streamlined. Externally, the 620 shotgun better resembles an Ithaca shotgun, lacking the distinct "humpback" double receiver of the 520. The stock is attached by a bolt connecting the receiver and trigger tangs through the stock's grip. All models can be slam fired, as none of the models had a trigger disconnector.
The next models of Stevens shotguns, the 520A and 620A, were produced during WW2 as trench, riot, and long-barreled training guns. These newer models were label as the Model 520-30 and the Model 620 respectively. After the war, the US military both standardized and kept these new model Stevens shotguns in inventory, using them as late as the Vietnam War.]]
SWEP.Trivia_Manufacturer = "J Stevens Arms Company"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Pump Action"
SWEP.Trivia_Country	= "United States"
SWEP.Trivia_Year = 1927

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/stevens620/v_stevens620.mdl"
SWEP.WorldModel = "models/weapons/stevens620/w_stevens620.mdl"
SWEP.WorldModelOffset = {
    pos = Vector(4.5, 1.25, -3),
    ang = Angle(-11, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}
SWEP.ViewModelFOV = 54

SWEP.Damage = 16
SWEP.DamageMin = 5 -- damage done at maximum range
SWEP.Range = 75 -- in METRES
SWEP.Penetration = 1
SWEP.DamageType = DMG_BUCKSHOT
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 365  -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 5 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 7
SWEP.ReducedClipSize = 3

SWEP.Recoil = 2
SWEP.RecoilSide = 1.4
SWEP.MaxRecoilBlowback = 1

SWEP.Delay = 60 / 60 -- 60 / RPM.
SWEP.Num = 8 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        PrintName = "Pump Action",
        Mode = 1,
    },
    {
        PrintName = "Slam Fire",
        Mode = 2,
        Mult_CycleTime = 0.5,
        Mult_RPM = 0.5,
        Mult_VisualRecoilMult = 4,
        Mult_AccuracyMOA = 1.3,
        Mult_HipDispersion = 1.05,
    },
    {
        PrintName = "Lowered",
        Mode = 0
    }
}

SWEP.NPCWeaponType = {
    "weapon_shotgun",
}
SWEP.NPCWeight = 1

SWEP.AccuracyMOA = 40 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses
SWEP.MagID = "stevens620" -- the magazine pool this gun draws from

SWEP.ShootVol = 160 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootSound = "stevens620.fire"
SWEP.ShootSoundSilenced = "stevens620.fire"
SWEP.DistantShootSound = "stevens620.fire_distant"

SWEP.MuzzleEffect = "muzzleflash_4"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellPitch = 100
SWEP.ShellScale = 1.8

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 7 -- which attachment to put the case effect on
SWEP.ProceduralViewBobAttachment = 1

SWEP.SightTime = 0.5
SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.6

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false
SWEP.CaseBones = {}
SWEP.IronSightStruct = {
    Pos = Vector(-2, -2, 0.9),
    Ang = Angle(0.75, 0, 0),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, 2, 2)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3, -3, 0)
SWEP.HolsterAng = Angle(-10, 30, 0)

SWEP.CrouchPos = Vector(-2, 0, -0.25)
SWEP.CrouchAng = Angle(0, 0, -15)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 60
SWEP.ExtraSightDist = 5

SWEP.ShotgunReload = true
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

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_sniper", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "Weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "A_Muzzle",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(0, 0, 0),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "Weapon",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(0, 0, 0),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Weapon",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(0, 0, 0),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
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
        Bone = "Weapon",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(0, 0, 0),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
    },
}

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
        Source = {"base_fire_1","base_fire_2"},
        MinProgress = 0.2,
    },
	["fire_iron"] = {
        Source = {"iron_fire_1", "iron_fire_2"},
        MinProgress = 0.2,
    },
    ["fire_empty"] = {
        Source = "base_firelast",
    },
    ["fire_iron_empty"] = {
        Source = "iron_fire_last",
    },
	["cycle"] = {
        Source = "base_fire_cock_1",
        ShellEjectAt = 0.3,
    },
	["cycle_empty"] = {
        Source = "base_fire_cock_2",
    },
    ["sgreload_start_empty"] = {
        Source = "base_reload_start_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        ShellEjectAt = 0.6,
    },
	["sgreload_start"] = {
        Source = "base_reload_start",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
	["sgreload_insert"] = {
        Source = "base_reload_insert",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["sgreload_finish"] = {
        Source = "base_reload_end",
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
}
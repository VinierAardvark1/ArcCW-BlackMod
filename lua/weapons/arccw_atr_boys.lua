SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - BlackMod" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Boyes ATR"
SWEP.TrueName = "Boys Anti-Tank Rifle Mk. I"
SWEP.Trivia_Class = "Anti-Tank Rifle"
SWEP.Trivia_Desc = [[British anti-tank rifle in use during the Second World War. It was given the nickname "Elephant Gun" by users due to it's size and 0.55 inch/14mm bore. The Mark I model had a circular muzzle brake and T-Shaped monopod. There was also the Mk I*, build primarily in Toronto with a rectangular muzzle brake and a V-shaped bipod. The third model was made for airborne forces with a 30-inch barrel and no muzzle brake. Although adequate against light tanks and tankettes in the early part of the war, the Boys was ineffective against heavier armour and was phased out in favour of the PIAT hollow charge weapon mid-war.]]
SWEP.Trivia_Manufacturer = "Royal Small Arms Factory (RSAF)"
SWEP.Trivia_Calibre = "Kynoch & RG .55 Boys"
SWEP.Trivia_Mechanism = "Bolt Action"
SWEP.Trivia_Country = "United Kingdom"
SWEP.Trivia_Year = 1937

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/atr_boys/v_atr_boys.mdl"
SWEP.WorldModel	= "models/weapons/atr_boys/w_atr_boys.mdl"
SWEP.WorldModelOffset = {
    pos = Vector(-8, 5.5, -8.45),
    ang = Angle(-12, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}
SWEP.ViewModelFOV = 90

SWEP.Damage = 145
SWEP.DamageMin = 285 -- damage done at maximum range
SWEP.Range = 457 -- in METRES
SWEP.Penetration = 23.2
SWEP.DamageType = DMG_BULLET + DMG_AIRBOAT -- See DMG enum. This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 747   -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 5 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 7
SWEP.ReducedClipSize = 3

SWEP.Recoil = 2
SWEP.RecoilSide = 1
SWEP.MaxRecoilBlowback = 5

SWEP.Delay = 60 / 20 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        PrintName = "Bolt Action",
        Mode = 1,
    },
    {
        PrintName = "Lowered",
        Mode = 0
    }
}

SWEP.NPCWeaponType = {
    "weapon_ar2",
    "weapon_crossbow",
}
SWEP.NPCWeight = 1

SWEP.AccuracyMOA = 1 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 1000 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 1000

SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses
SWEP.MagID = "atrboys" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootSound = "boysatr.fire"
SWEP.ShootSoundSilenced = "boysatr.fire"
SWEP.DistantShootSound = "boysatr.fire_distant"

SWEP.MuzzleEffect = "muzzleflash_4"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 60
SWEP.ShellScale = 3

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
--35 Pounds
SWEP.SightTime = 1.15
SWEP.SpeedMult = 0.6
SWEP.SightedSpeedMult = 0.7
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false
SWEP.CaseBones = {}
SWEP.IronSightStruct = {
    Pos = Vector(-2.6, 0, 1),
    Ang = Angle(0, 0, 0),
    Magnification = 1.25,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, -4, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, -4, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0, 0, 0)
SWEP.HolsterAng = Angle(-10, 30, -10)

SWEP.CrouchPos = Vector(-2, -1, 0)
SWEP.CrouchAng = Angle(0, 0, -8)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 65
SWEP.ExtraSightDist = 5

SWEP.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    util.BlastDamage(wep, wep:GetOwner(), data.tr.HitPos, 18, wep:GetDamage(data.range))
    if ent:IsValid() and ent:GetClass() == "npc_helicopter" then
        data.dmgtype = DMG_AIRBOAT
    end
end

SWEP.ManualAction = false
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

SWEP.InBipodPos = Vector(0, 3, -1)
SWEP.InBipodAng = Angle(0, 0, 0)

SWEP.Bipod_Integral = true -- Integral bipod (ie, weapon model has one)
SWEP.BipodDispersion = 0.275 -- Bipod dispersion for Integral bipods
SWEP.BipodRecoil = 0.275 -- Bipod recoil for Integral bipods

SWEP.M_Hook_Mult_SightTime = function(wep, data) --Sets ADS speed while deployed
    if wep:InBipod() then
        data.mult = 1.25
    end
end

SWEP.Attachments = {
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
            vpos = Vector(-1.6, -15, 1.2),
            vang = Angle(0, 90, 90),
            wpos = Vector(20, -0.23, -7.5),
            wang = Angle(-12, 0, 90)
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
            vpos = Vector(1.25, -8, -0.5),
            vang = Angle(180, 90, 0),
            wpos = Vector(6, 2.1, -4),
            wang = Angle(-10, 0, 180)
        },
    },
}

--Unused
    --PrintName = "Underbarrel",
    --Slot = {"foregrip", "bipod"},
    --Bone = "body",
    --Offset = {
       --vpos = Vector(0, -11, 2.3),
        --vang = Angle(0, 90, 180),
        --wpos = Vector(11, 1, -4.2),
        --wang = Angle(-12, 0, 180)

SWEP.ReloadInSights = false
SWEP.LockSightsInReload = false

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
    ["ready"] = {
        Source = "equip",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.25,
    },
    ["draw"] = {
        Source = "draw",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.25,
    },
	["fire"] = {
        Source = "fire",
        ShellEjectAt = 1.35,
    },
	["fire_iron"] = {
        Source = "fire_aim",
        ShellEjectAt = 1.35,
    },
    ["fire_empty"] = {
        Source = "fire",
        ShellEjectAt = 1.35,
    },
    ["fire_iron_empty"] = {
        Source = "fire_aim",
        ShellEjectAt = 1.35,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["enter_sprint"] = {
        Source = "sprint",
    },
    ["idle_sprint"] = {
        Source = "sprint",
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 1,
        Time = 1.01,
    },
    ["bash"] = {
        Source = "melee",
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 1,
    },
}
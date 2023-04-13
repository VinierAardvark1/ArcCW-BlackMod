SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - BlackMod" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Uruguay"
SWEP.TrueName = "Wz. 35"
SWEP.Trivia_Class = "Anti-Tank Rifle"
SWEP.Trivia_Desc = [[The Model 35 Anti-Tank rifle (Karabin przeciwpancerny wzór 35) is a Polish 7.9 mm anti-tank rifle used by the Polish Army during the 1939 Invasion of Poland. It was designated Model 35 for its design year, 1935: It was also known by its codename "Uruguay", after the country, and by the name of its designer, Józef Maroszek.
It resembled a rifle with a longer-than-normal barrel supported by a bipod at the front of the wooden stock. Mauser style, bolt-action rifle, fed from a 4-round box magazine. The barrel had a muzzle brake to limit recoil. Recoil is comparable to a standard Mauser rifle, even though the cartridge carried more than twice the amount of propellant. It had iron sights fixed for a 300-meter range.
Unlike other anti-tank rifles at the time, it lacked a pistol grip and fired a bullet with a lead core rather than an armour-piercing round with a hard core. The FMJ bullet weighed 14.6 g (225 gr) and, due to a high muzzle velocity of 1,275 m/s (4,180 ft/s), was effective even under shallow angles, as instead of ricocheting, the bullet would "stick" to the armour and punch a hole roughly 20mm in diameter.]]
SWEP.Trivia_Manufacturer = "Państwowa Fabryka Karabinów"
SWEP.Trivia_Calibre = "7.92×107mm DS"
SWEP.Trivia_Mechanism = "Bolt-Action"
SWEP.Trivia_Country	= "Poland"
SWEP.Trivia_Year = 1939

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/wz35/c_snip_wz35.mdl"
SWEP.WorldModel = "models/weapons/wz35/w_snip_wz35.mdl"
SWEP.WorldModelOffset = {
    pos = Vector(16, 1, -5.5),
    ang = Angle(-11, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}
SWEP.ViewModelFOV = 90

SWEP.Damage = 150
SWEP.DamageMin = 550 -- damage done at maximum range
SWEP.Range = 300 -- in METRES
SWEP.Penetration = 250
SWEP.DamageType = DMG_BULLET + DMG_AIRBOAT
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1275  -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 4 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 6
SWEP.ReducedClipSize = 2

SWEP.Recoil = 4
SWEP.RecoilSide = 2
SWEP.MaxRecoilBlowback = 5

SWEP.Delay = 60 / 35 -- 60 / RPM.
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
SWEP.MagID = "wz35" -- the magazine pool this gun draws from

SWEP.ShootVol = 135 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootSound = "blast_wz35.fire"
SWEP.ShootSoundSilenced = "blast_wz35.fire"
SWEP.DistantShootSound = "blast_wz35.fire_distant"

SWEP.MuzzleEffect = "muzzleflash_4"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 90
SWEP.ShellScale = 2

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
--22 Pounds
SWEP.SightTime = 0.9
SWEP.SpeedMult = 0.7
SWEP.SightedSpeedMult = 0.75
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false
SWEP.CaseBones = {}
SWEP.IronSightStruct = {
    Pos = Vector(-2.66, 0, 0.22),
    Ang = Angle(0.4, 0, 0),
    Magnification = 1.25,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, -4, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(2.5, -5, -1)
SWEP.SprintAng = Angle(0, 45, -10)

SWEP.HolsterPos = Vector(3, -3, -1)
SWEP.HolsterAng = Angle(-7, 40, -10)

SWEP.CrouchPos = Vector(0, -4, 0)
SWEP.CrouchAng = Angle(0, 0, -6)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 80
SWEP.ExtraSightDist = 5

SWEP.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    util.BlastDamage(wep, wep:GetOwner(), data.tr.HitPos, 18, wep:GetDamage(data.range))
    if ent:IsValid() and ent:GetClass() == "npc_helicopter" then
        data.dmgtype = DMG_AIRBOAT
    end
end

SWEP.ManualAction = false
SWEP.ReloadInSights = true
SWEP.LockSightsInReload = false

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

SWEP.InBipodPos = Vector(-6, 4, -1)
SWEP.InBipodAng = Angle(0, 0, 0)

SWEP.Bipod_Integral = true -- Integral bipod (ie, weapon model has one)
SWEP.BipodDispersion = 0.25 -- Bipod dispersion for Integral bipods
SWEP.BipodRecoil = 0.25 -- Bipod recoil for Integral bipods

SWEP.M_Hook_Mult_SightTime = function(wep, data) --Sets ADS speed while deployed
    if wep:InBipod() then
        data.mult = 1.25
    end
end

SWEP.ShellRotateAngle = Angle(5, 90, 0)

SWEP.AttachmentElements = {
    ["Mount"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic", "optic_sniper", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(6.2, -3.9, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 270),
            wpos = Vector(8.5, 1, -6.25),
            wang = Angle(-11, 0, 180)
        },
        InstalledEles = {"Mount"},
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0)
    }, 
    {
        PrintName = "Barrel",
        DefaultAttName = "Standard Barrel",
        Slot = "barrel",
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "bipod"},
        Bone = "weapon",
        Offset = {
            vpos = Vector(14, -0.45, 0),
            vang = Angle(0, 5, 270),
            wpos = Vector(18, 1, -4.5),
            wang = Angle(-14, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "weapon",
        Offset = {
            vpos = Vector(21, -2, 0.75),
            vang = Angle(0, -0.38, 180),
            wpos = Vector(23, 0.3, -6.7),
            wang = Angle(-10.8, 0, 90)
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
        Bone = "weapon",
        Offset = {
            vpos = Vector(5, -1, -0.9),
            vang = Angle(0, 0, -90),
            wpos = Vector(8, 1.9, -3),
            wang = Angle(-10, 0, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
		LHIK = false,
    },
    ["ready"] = {
        Source = "draw",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.25,
    },
    ["draw"] = {
        Source = "drawz",
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.25,
    },
	["fire"] = {
        Source = "shoot",
        --ShellEjectAt = 0.8,
    },
	["fire_iron"] = {
        Source = "shoot",
        --ShellEjectAt = 0.8,
    },
    ["fire_empty"] = {
        Source = "shoot",
        --ShellEjectAt = 0.8,
    },
    ["fire_iron_empty"] = {
        Source = "shoot",
        --ShellEjectAt = 0.8,
    },
    ["reload_empty"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload"] = {
        Source = "reload_tac",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
	["dryfire"] = {
        Source = "dryfire",
        LHIK = false,
    },
    ["bash"] = {
        Source = "melee",
		Time = 30 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 4,
    },
}
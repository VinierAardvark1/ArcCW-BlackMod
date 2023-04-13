SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - BlackMod" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Fat Mac"
SWEP.TrueName = "SSK .950 JDJ"
SWEP.Trivia_Class = [["Hunting Rifle"]]
SWEP.Trivia_Desc = [[The .950 JDJ (24.1×70mm) is a powerful large caliber rifle cartridge developed by American gunsmith and weapon designer J. D. Jones of SSK Industries.
 SSK received a "Sporting Use Exception" to de-regulate the rifles; thus, in the United States, they can be owned like any other Title I rifle by an American citizen at age 18. 
 The rifles use McMillan Firearms stocks and extraordinarily thick Krieger barrels bearing an 18 lb muzzle brake. Overall, depending on options, the rifles weigh from 85 to 120 pounds and are therefore only useful for shooting from a bench rest or heavy bipod. The sheer size, weight, and power of these rifles make them rather impractical for hunting use. SSK only manufactured three of these rifles and as of 2014 no longer produces the ammunition.
 Not much is known about this weapon, but maybe it's size and firepower will make it a good choice for hunting those ghastly creatures people seem to keep finding.]]
SWEP.Trivia_Manufacturer = "SSK Industries"
SWEP.Trivia_Calibre = ".950 JDJ"
SWEP.Trivia_Mechanism = "Single Shot Bolt-Action"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 2006

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/950_jdj/c_snip_950.mdl"
SWEP.WorldModel = "models/weapons/950_jdj/w_snip_950.mdl"
SWEP.WorldModelOffset = {
    pos = Vector(-1, 1, 1.5),
    ang = Angle(-11, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1.6
}
SWEP.ViewModelFOV = 90

SWEP.Damage = 225
SWEP.DamageMin = 1500 -- damage done at maximum range
SWEP.Range = 120 -- in METRES
SWEP.Penetration = 50
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 670 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 1 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 1
SWEP.ReducedClipSize = 1

SWEP.Recoil = 10
SWEP.RecoilSide = 30
SWEP.MaxRecoilBlowback = 5

SWEP.Delay = 60 / 200 -- 60 / RPM.
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

SWEP.AccuracyMOA = 2 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 2000 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 2000 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".

SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses
SWEP.MagID = "950_jdj" -- the magazine pool this gun draws from

SWEP.ShootVol = 175 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootSound = "weapons/950_jdj/arccw_jdj_shoot.wav"
SWEP.ShootSoundSilenced = "weapons/950_jdj/arccw_jdj_shoot.wav"
SWEP.DistantShootSound = "weapons/950_jdj/arccw_jdj_shoot_distance.wav"

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 95
SWEP.ShellScale = 3.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
--55-110 Pounds(?)
SWEP.SightTime = 1.75
SWEP.SpeedMult = 0.5
SWEP.SightedSpeedMult = 0.25
SWEP.VisualRecoilMult = 5
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false
SWEP.CaseBones = {}
SWEP.IronSightStruct = {
    Pos = Vector(-4, 0, 1.45), --(-3.1, 0, 1.45)
    Ang = Angle(0, 0, 0),
    Magnification = 1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, -4, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(5, -7.5, 0)
SWEP.SprintAng = Angle(0, 60, -10)

SWEP.HolsterPos = Vector(4, -3, 1)
SWEP.HolsterAng = Angle(-20, 40, 0)

SWEP.CrouchPos = Vector(0, -3, 0)
SWEP.CrouchAng = Angle(0, 0, -4)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 60
SWEP.ExtraSightDist = 5

SWEP.InBipodPos = Vector(-6, 0, 0)
SWEP.InBipodAng = Angle(0, 0, 0)

SWEP.Bipod_Integral = true -- Integral bipod (ie, weapon model has one)
SWEP.BipodDispersion = 0.1 -- Bipod dispersion for Integral bipods
SWEP.BipodRecoil = 0.1 -- Bipod recoil for Integral bipods

SWEP.M_Hook_Mult_SightTime = function(wep, data) --Sets ADS speed while deployed
    if wep:InBipod() then
        data.mult = 1.25
    end
end

SWEP.M_Hook_Mult_ReloadTime = function(wep, data) --Sets reload speed while deployed
    if wep:InBipod() then
        data.mult = 1
    end
end

SWEP.ShellRotateAngle = Angle(5, 90, 0)

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Optic Rail",
        Slot = {"optic", "optic_sniper", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "GunPivot", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -10.5, 2.4), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 90, 0),
            wpos = Vector(6, 1.5, -3.1),
            wang = Angle(-10, 0, 181)
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
        Slot = {"foregrip", "bipod"},
        Bone = "GunPivot",
        Offset = {
            vpos = Vector(0, -9, -0.85),
            vang = Angle(0, 90, 0),
            wpos = Vector(10, 1.5, -2),
            wang = Angle(-10.216, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "GunPivot",
        Offset = {
            vpos = Vector(0, -18, -0.7),
            vang = Angle(0, 90, 0),
            wpos = Vector(13, 1.5, -2),
            wang = Angle(-11, 0, 180)
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
        Bone = "GunPivot",
        Offset = {
            vpos = Vector(-1.45, -3, 0),
            vang = Angle(0, 90, 0),
            wpos = Vector(0, 2.5, -0.25),
            wang = Angle(-10, 0, 180)
        },
    },
}

SWEP.ReloadInSights = false
SWEP.LockSightsInReload = false

SWEP.Animations = {
    ["idle"] = {
        Source = "jdj_idle",
		LHIK = false,
    },
    ["draw"] = {
        Source = "jdj_draw",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
        SoundTable = {{s = "weapons/950_jdj/arccw_jdj_deploy.wav", t = 0.1}},
    },
	["fire_iron"] = {
        Source = "jdj_fire",
    },
	["fire"] = {
        Source = "jdj_fire",
    },
    ["reload"] = {
        Source = "jdj_reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 2.5,
        LHIKOut = 1,
        Time = 5,
        SoundTable = {
                {s = "weapons/950_jdj/arccw_jdj_reload_eject.wav", t = 0.5},
                {s = "weapons/950_jdj/arccw_jdj_reload_round_deploy.wav", t = 0.85},
                {s = "weapons/950_jdj/arccw_jdj_reload_shut.wav", t = 2.2},
            },
        ShellEjectAt = 1,
    },
}

SWEP.Hook_PostFireBullets = function(wep)
    local owner = wep:GetOwner()
    if owner:IsPlayer() then
        local ang = owner:GetAngles()
        local dir = ang:Forward()
        dir.z = 0
        dir:Normalize()
        owner:SetVelocity(dir * (owner:IsOnGround() and -300 or -100))
    end
end
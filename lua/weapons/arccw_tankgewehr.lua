SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - BlackMod" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "13mm T-Gewehr"
SWEP.TrueName = "Mauser 1918 Tankgewehr"
SWEP.Trivia_Class = "Anti-Tank Rifle"
SWEP.Trivia_Desc = [[The world's first anti-tank rifle — the first rifle designed for the sole purpose of destroying armoured targets — and the only anti-tank rifle to see service in World War I. Single-shot bolt action based off a modified Mauser bolt-action system, it fires the 13.2×92mm SR, also known as Mauser 13.2mm TuF (German: Tank und Flieger; literally "tank and aircraft").
Both rifle and ammo were designed to counter early British tanks that appeared in late WWI. The round produces tremendous recoil, and because the rifle itself has no method of reducing recoil, it is designed to be fired from a static position. The makers of this rifle, Mauser, were inspired by the designs of Elephant Guns. The iron sights are composed of a front blade and tangent rear, graduated in 100-meter increments from 100 to 500 meters.
The 13.2mm bullets are armour-piercing with a hardened steel core and with a semi rimmed shell, originally designed to be fired from the Maxim MG.18 water-cooled heavy machine gun. The rounds weighed 51.5 g (795 gn) with an initial velocity of 785 m/s (2,580 ft/s).]]
SWEP.Trivia_Manufacturer = "Mauser"
SWEP.Trivia_Calibre = "13.2×92mm SR"
SWEP.Trivia_Mechanism = "Single-Shot Bolt Action"
SWEP.Trivia_Country = "German Empire"
SWEP.Trivia_Year = 1918

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/tankgewehr/v_verdun_tankgewehr1918.mdl"
SWEP.WorldModel	= "models/weapons/tankgewehr/w_verdun_tankgewehr.mdl"
SWEP.WorldModelOffset = {
    pos = Vector(-2, 0.75, 0.55),
    ang = Angle(-10, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1.2
}
SWEP.ViewModelFOV = 90

SWEP.Damage = 175
SWEP.DamageMin = 640 -- damage done at maximum range
SWEP.Range = 500 -- in METRES
SWEP.Penetration = 250
SWEP.DamageType = DMG_BULLET + DMG_AIRBOAT
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 670 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 1 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 1
SWEP.ReducedClipSize = 1

SWEP.Recoil = 10
SWEP.RecoilSide = 5
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

SWEP.AccuracyMOA = 1 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 1500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 1500

SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses
SWEP.MagID = "tankgewehr" -- the magazine pool this gun draws from

SWEP.ShootVol = 160 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootSound = "tankgewehr.fire"
SWEP.ShootSoundSilenced = "tankgewehr.fire"
SWEP.DistantShootSound = "tankgewehr.fire_distant"

SWEP.MuzzleEffect = "muzzleflash_5"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 60
SWEP.ShellScale = 3
SWEP.ShellEjectPosCorrection = Vector(0, 0, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
--41 Pounds
SWEP.SightTime = 1.3
SWEP.SpeedMult = 0.575
SWEP.SightedSpeedMult = 0.45
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false
SWEP.CaseBones = {}
SWEP.IronSightStruct = {
    Pos = Vector(-2.8, -2, 1.05),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(0, -4, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, 0, 2)
SWEP.SprintAng = Angle(0, -10, 0)

SWEP.HolsterPos = Vector(6, -3, 0)
SWEP.HolsterAng = Angle(-7, 40, 0)

SWEP.CrouchPos = Vector(-1, -3, 0)
SWEP.CrouchAng = Angle(0, 0, -2)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 75
SWEP.ExtraSightDist = 5

SWEP.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    util.BlastDamage(wep, wep:GetOwner(), data.tr.HitPos, 18, wep:GetDamage(data.range))
    if ent:IsValid() and ent:GetClass() == "npc_helicopter" then
        data.dmgtype = DMG_AIRBOAT
    end
end

SWEP.InBipodPos = Vector(-4, 0, 0)
SWEP.InBipodAng = Angle(0, 0, 0)

SWEP.Bipod_Integral = true -- Integral bipod (ie, weapon model has one)
SWEP.BipodDispersion = 0.3 -- Bipod dispersion for Integral bipods
SWEP.BipodRecoil = 0.3 -- Bipod recoil for Integral bipods

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

SWEP.AttachmentElements = {
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Bone = "A_Optic",
                Scale = Vector(-1, -1, 1),
                Offset = {
                    pos = Vector(0, -0.25, 1.65),
                    ang = Angle(270, 0, 90)
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Scale = Vector(1, 1, 1),
                Offset = {
                    pos = Vector(17, 0.9, -8.23),
                    ang = Angle(170, 180, 0)
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
        Bone = "A_Optic", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -0.075, 1.6), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 90),
            wpos = Vector(16.5, 0.9, -8.3),
            wang = Angle(-10, 0, 180)
        },
        InstalledEles = {"mount"},
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
        Bone = "A_Underbarrel",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(0, 0, 270),
            wpos = Vector(20, 0.8, -6),
            wang = Angle(-12, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "weapon",
        Offset = {
            vpos = Vector(-1, 6.4, 0.3),
            vang = Angle(0, 270, 270),
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
        Bone = "weapon",
        Offset = {
            vpos = Vector(1, -8, -0.5),
            vang = Angle(0, 270, 0),
            wpos = Vector(6, 2.1, -4),
            wang = Angle(-10, 0, 180)
        },
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
        LHIKIn = 0.3,
        LHIKOut = 0.3,
    },
    ["draw"] = {
        Source = "base_draw_t",
		LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
    },
    ["reload"] = {
        Source = "base_reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
        ShellEjectAt = 0.55,
    },
    ["idle_sprint"] = {
        Source = "base_sprint",
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 1,
        Time = 1.1,
    },
    ["fire"] = {
        Source = "base_fire_t",
		LHIK = false,
    },
    ["iron_fire"] = {
        Source = "iron_fire",
		LHIK = false,
    },
    ["holster"] = {
        Source = "base_holster_t",
		LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
    },
}
att.PrintName = "AMCAR-NG 6.5 Grendel Upper Receiver"
att.AbbrevName = "6.5 Grendel Upper"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AR-15 6.5 Grendel Upper Receiver"
end

att.SortOrder = -1
att.Icon = Material("entities/att/uc_bullets/50beowulf.png", "smooth mips")
att.Description = [[Semi-automatic receiver chambered in 6.5 Grendel, a long-range cartridge with ballistic performance closer to 7.62×39mm with half the recoil, although more closely related to .220 Russian. It can load into custom-made magazines at a slightly lower capacity than a standard AR-15 magazine.
The rifle is unable to handle the massive pressure at anything more than semi-automatic fire.]]
att.Desc_Pros = {}
att.Desc_Cons = {
    "ud.m16.50beo",
    "uc.semionly",
    "Incompatible with magazines of unusual size."
}
att.Desc_Neutrals = {
    "Due to obvious restrictions, the gun does not have its own firing sounds or a proper renaming.",
    "Not to be confused with 6.5 Creedmoor",
    "blackmod.desc",
}
att.Slot = "ud_m16_receiver"

att.AutoStats = true
att.HideIfBlocked = true

att.SortOrder = 1

-- att.Override_ClipSize = 24
att.Override_ClipSize_Priority = 0.5
-- att.BaseClipSize = 26
att.Mult_ClipSize = 0.85 --shitty but worthwhile workaround for being unable to utilize custom magazine attachments.

att.Mult_Damage = 0.8
att.Mult_DamageMin = 3.55
att.Mult_Penetration = 1.33

att.Mult_Recoil = 2.1
att.Mult_RecoilSide = 1.6
att.Mult_RPM = 0.6
att.Mult_Range = 1.23
att.Mult_ShootVol = 1.175

att.Mult_SightTime = 0.95
att.Mult_ReloadTime = 0.865
att.Mult_Sway = 0.75

att.Mult_SpeedMult = 1.05

att.Override_PhysBulletMuzzleVelocity = 760

att.Override_Ammo = "AR2"
att.Override_Trivia_Calibre = "6.5 Grendel"
att.AddSuffix = " Grendel"
att.Override_ShellModel = "models/weapons/arccw/uc_shells/762x39.mdl"
att.Override_ShellScale = 1

att.Override_Firemodes_Priority = 0.5
att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

local path = "weapons/arccw_ud/m16/"

att.Hook_GetShootSound = function(wep, sound) -- Temporary
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {
            path .. "fire-50-01.ogg",
            path .. "fire-50-02.ogg",
            path .. "fire-50-03.ogg",
            path .. "fire-50-04.ogg",
            path .. "fire-50-05.ogg",
            path .. "fire-50-06.ogg"
        }
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return { 
            path .. "fire-50-dist-01.ogg",
            path .. "fire-50-dist-02.ogg",
            path .. "fire-50-dist-03.ogg",
            path .. "fire-50-dist-04.ogg",
            path .. "fire-50-dist-05.ogg",
            path .. "fire-50-dist-06.ogg"
        }
    end
end

local slotinfo = {
    [6] = {"6.5 Grendel Lower", "6.5 Grendel Lower", Material("entities/att/acwatt_ud_m16_receiver_semi.png", "smooth mips")},
    [11] = {"24-Round Mag", "24-Round Mag", Material("entities/att/acwatt_ud_m16_mag_30.png", "smooth mips")},
}
att.Hook_GetDefaultAttName = function(wep, slot)
    if slotinfo[slot] then
        return GetConVar("arccw_truenames"):GetBool() and slotinfo[slot][2] or slotinfo[slot][1]
    end
end
att.Hook_GetDefaultAttIcon = function(wep, slot)
    if slotinfo[slot] then
        return slotinfo[slot][3]
    end
end

att.Override_Trivia_Class = "Semi-Automatic Rifle"


att.GivesFlags = {"m16_nolower"}
att.ExcludeFlags = {"patr5"}
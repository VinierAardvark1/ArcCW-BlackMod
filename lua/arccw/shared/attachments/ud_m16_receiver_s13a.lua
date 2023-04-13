att.PrintName = "AMCAR-NG S13A Receiver"
att.AbbrevName = "S13A Lower"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16A3 Custom-Built S13A Receiver"
end

att.Description = [[A custom-made fire control group that supports both burst and fully automatic fire. Comes in semi-burst-auto-safe configuration.
Because the M16 was never designed with this in mind, the weapon occasionally has trouble feeding rounds.]]

att.Icon = Material("entities/att/acwatt_ud_m16_receiver_auto.png", "smooth mips")
att.Desc_Pros = {
    "uc.auto",
    "ud.m16_altburst.1",
    --"ud.flattop"
}
att.Desc_Cons = {
    "uc.jam"
}
att.Desc_Neutrals = {
    "ud.m16_altburst.2",
    "blackmod.desc"
}
att.Slot = "ud_m16_fcg"
--att.InvAtt = "ud_m16_receiver_auto"

att.AutoStats = true
att.SortOrder = 5

att.Override_Malfunction = true

att.Mult_AccuracyMOA = 1.175
att.Mult_RPM = 0.85
att.Mult_HipDispersion = 1.1
att.Mult_ShootSpeedMult = 0.85

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = -3,
        PostBurstDelay = 0.08,
        Mult_Recoil = 0.975,
        RunawayBurst = true, -- https://en.wikipedia.org/wiki/Burst_mode_(weapons)
    },
    {
        Mode = 1,
        Mult_Recoil = 0.9,
    },
    {
        Mode = 0
    }
}

att.GivesFlags = {"m16_auto"}
att.ExcludeFlags = {"m16_noauto"}
-- att.ActivateElements = {"ud_m16_upper_flat"}

att.PrintName = "Uzi 4.6\" Modified Pistol Barrel"
att.AbbrevName = "4.6\" Pistol Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "STAP 4.6\" Pistol Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_uzi_body_micro.png", "smooth mips")
att.Description = [[Micro Uzi frame modified to turn this sub-machine gun into a civillian pistol. Without an attach point for stocks, recoil is dramatically increased. Converts weapon to closed bolt operation.
Not much reason to use this over the Micro Uzi frame, but maybe you appreciate the improved handling. I don't know. I'm sure you can find a way to get around it's restrictions.]]
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.semionly",
    "uc.nostocks"
}
att.Desc_Neutrals = {
    "Does not have an optic rail",
    "blackmod.desc"
}
att.Slot = "ud_uzi_frame"

att.AutoStats = true
att.SortOrder = 4.6

att.Mult_AccuracyMOA = 1.5
att.Mult_SightTime = 0.8
att.Mult_Recoil = 1.25
att.Mult_RecoilSide = 1.75
att.Mult_RPM = 1.5
att.Mult_Range = 0.5
att.Mult_HipDispersion = 1.25

att.Mult_DrawTime = 0.8
att.Mult_HolsterTime = 0.8

att.Add_BarrelLength = -8

att.Override_ChamberSize = 1
att.Mult_TriggerDelayTime = 0

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.LHIK = true

att.Override_HoldtypeActive = "pistol"
att.Override_HoldtypeSights = "revolver"
att.Override_Trivia_Class = "Machine Pistol"

att.Model = "models/weapons/arccw/atts/mini_lhik.mdl"

att.ActivateElements = {"ud_uzi_body_micro"}
att.GivesFlags = {"micro"}

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_micro"
end
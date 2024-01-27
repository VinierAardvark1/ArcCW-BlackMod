att.PrintName = "Official Mann Co. Certification of Mercenary Training"
att.AbbrevName = "Mercenary Certification"

att.Icon = Material("entities/att/uc_tp_realmerchours.png", "smooth mips")
att.Description = [[Hundreds of hours of training at operating firearms without sights, mid-air firing training, and moving-while-shooting maneuvers, and other such combat drills prove that you are a REAL Mercenary.
As such, we here at Mann Co. grant you the Official Mann Co. Certification of Mercenary Training. Congratulations!]]
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Cannot use iron sights. Be a MANN!",
    -- "Cannot use tacticals. Be a MANN!"
}
att.Desc_Neutrals = {
}
att.Slot = "uc_tp"

att.AutoStats = true
att.SortOrder = 6

att.Mult_HipDispersion = 0.5
att.Mult_JumpDispersion = 0
att.Mult_MoveDispersion = 0

att.Override_ShootSpeedMult = 5
att.Override_ShootWhileSprint = true

att.NotForNPCs = true

att.Hook_ShouldNotSight = function(wep)
    return true
end
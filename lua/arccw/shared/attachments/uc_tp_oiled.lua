att.PrintName = "Well Oiled"
att.Icon = Material("entities/att/arccw_uc_full_stroke.png", "smooth mips")
att.Description = [[A decent amount of extra gun oil allows you to cycle the action much faster after a shot, improving rate of fire at the cost of handling.]]
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "blackmod.desc",
}
att.Slot = "uc_tp"

att.AutoStats = true
att.SortOrder = 15

att.Mult_CycleTime = 0.75
att.Mult_SightTime = 1.1
att.Mult_Sway = 1.25

att.Hook_Compatible = function(wep)
    if !wep:GetBuff_Override("Override_ManualAction", wep.ManualAction) then
        return false
    end
end
att.PrintName = "Bandit"
-- BANDIT STYLE IS >ACTUALLY< BACK, BABY
att.Icon = nil
att.Description = [[chinese gangsters can sweep a room faster than any maid]]
att.Desc_Pros = {
    "Recoil becomes mostly horizontal",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "blackmod.desc",
}
att.Slot = "uc_tp"

att.AutoStats = true
att.SortOrder = 14

att.Mult_HipDispersion = 0.2
att.Mult_RecoilSide = 1.8
att.Mult_SightTime = 2
att.Mult_Sway = 1.9

att.LHIK = true
att.LHIKHide = true

att.Override_ActivePos = Vector(-2.5, 0, 1)
att.Override_ActiveAng = Angle(0, 0, -60)

att.Override_RecoilDirection = Angle(0.25, -2, 0)
att.Override_RecoilDirectionSide = Angle(1, 1, 0)

att.Override_AddSightRoll = -90

att.Hook_Compatible = function(wep, data)
    if wep:GetIsManualAction() and wep:GetBuff("HoldtypeActive") ~= "pistol" and wep:GetBuff("HoldtypeActive") ~= "revolver" then return false end
end
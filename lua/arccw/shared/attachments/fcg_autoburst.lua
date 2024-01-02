att.PrintName = "Auto-Burst Receiver"
att.Icon = Material("entities/att/placeholder_blackmod.png", "smooth mips")
att.Description = [[A modified receiver that allows for two alternate fire modes: a highly stable 4 round burst, and a less stable 2 round burst.]]
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "blackmod.desc",
}
att.AutoStats = true
att.Slot = {"go_perk", "fcg", "uc_fg"}

att.Hook_Compatible = function(wep)
    if wep:GetIsManualAction() or wep.TriggerDelay then return false end

    -- for i, v in pairs(wep.Firemodes) do
    --     if !v then continue end
    --     if !v.Mode then continue end
    --     if v.Mode == 2 then
    --         -- Not available if gun has automatic firemode
    --         return false
    --     -- elseif v.Mode < 0 then
    --     --     -- Use burst variant
    --     --     return false
    --     end
    -- end
end

att.Override_Firemodes = {
    {
        Mode = -4,
		RunawayBurst = true,
		AutoBurst = true,
        Mult_Recoil = 0.75,
		PostBurstDelay = 0.5,
    },
    {
        Mode = -2,
		RunawayBurst = true,
		AutoBurst = true,
        Mult_Recoil = 1.25,
		PostBurstDelay = 0.25,
    },
    
    {
        Mode = 0
    }
}

att.ExcludeFlags = {"needsmanual"}
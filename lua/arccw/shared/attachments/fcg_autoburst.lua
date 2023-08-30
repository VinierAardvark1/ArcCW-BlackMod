att.PrintName = "Auto-Burst"
att.Icon = Material("entities/att/placeholder_blackmod.png", "smooth mips")
att.Description = [[Placeholder]]
att.Desc_Pros = {
    "Placeholder",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "Placeholder",
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
        Mode = -2,
		RunawayBurst = true,
		AutoBurst = true,
		PostBurstDelay = 0.085,
    },
    {
        Mode = 0
    }
}

att.ExcludeFlags = {"needsmanual"}
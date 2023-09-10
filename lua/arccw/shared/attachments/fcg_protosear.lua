att.PrintName = "Prototype Sear Mk. II"
att.Icon = Material("entities/att/tac_synthesis_placeholder_blackmod.png")
att.Description = [["Firemode conversion designed to circumvent early machine gun regulations by making the gun fire continuously until empty."
Some psychopath looked at this old mechanism, said "I didn't like my wrists anyways," and decided to crank up the fire rate to way-too-damn-much. Apparently this was made by something the guys called a "VHS start-up..."' Why a VHS company would make anything related to firearms I don't know. Maybe I'm taking that name too literal, but either way you have a new toy to fuck with.
Have fun controlling your gun with it, but have fun, yeah? For sure.]]
att.Desc_Pros = {
    "pro.sputter",
}
att.Desc_Cons = {
    "con.sputter",
    "con.sputter2",
    "blackmod.shitcode",
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"fcg", "uc_fg"}

att.Override_Firemodes = {
    {
        Mode = -1000,
        RunawayBurst = true,
        PrintName = "PROTO-BURST"
    }
}

att.Mult_RPM = 25
att.Mult_CycleTime = -25
att.Mult_AccuracyMOA = 2
att.Mult_MalfunctionMean = 0.85

att.Override_Malfunction = true

att.Hook_Compatible = function(wep)
    if wep:GetIsManualAction() then return false end

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
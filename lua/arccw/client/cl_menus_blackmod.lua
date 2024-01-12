hook.Add( "PopulateToolMenu", "ArcCW_BlackMod_Options", function()
    spawnmenu.AddToolMenuOption( "Options", "ArcCW", "ArcCW_BlackMod_Options", "BlackMod", "", "", ArcCW_BlackMod_Options)
end )

function ArcCW_BlackMod_Options( CPanel )

    CPanel:AddControl("Header", {Description = "The configurations below are serverside and may require a restart to apply."})
    CPanel:AddControl("Header", {Description = ""})

    CPanel:AddControl("Checkbox", {Label = "Reduce attachment knockback velocity if user is midair.", Command = "arccw_blackmod_nofly" })
end
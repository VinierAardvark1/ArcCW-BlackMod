att.PrintName = "Railgun Conversion"
att.Icon = Material("entities/att/fcg_rail_convert.png")
att.Description = [[Specialty-made firing mechanism with advanced internal components allow for any sniper-class weapon to be converted into a handheld railgun cannon hundreds of years more advanced than what the Navy made. Stolen directly from a hidden military instillation and delivered right to your front door through our "delivery boys"... without the ammo, that is.
What do you mean you lost it?? I don't know, you're the one who ordered the fucking thing, not me! I'm not in charge of paying attention once it leaves the shop! I don't know where you or the delivery guys put it... Look around, damn it! That stuff is expensive. And dangerous, mind you. Oh come on, they're still sharp!]]
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"fcg"}

att.Mult_Range = 2
att.Mult_AccuracyMOA = 0.5
att.Mult_RPM = 0.5
att.Mult_SpeedMult = 0.8
att.Mult_CycleTime = 1.1
att.Mult_HipDispersion = 0.75
att.Mult_SightsDispersion = 0.75
att.Mult_ReloadTime = 1.25
att.Mult_DrawTime = 1.5
att.Mult_SightTime = 1.5

att.GivesFlags = {"fcg_rail_convert"}
att.AddSuffix = " Gau"

att.Hook_Compatible = function(wep)
    if wep.Num ~= 1 or (wep.Primary.Ammo ~= "SniperPenetratedRound") then return false end
end
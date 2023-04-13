att.PrintName = "Railgun Conversion"
att.Icon = Material("entities/att/fcg_rail_convert.png")
att.Description = [[Modified firing mechanism with specially made internal components allow for any sniper-class weapon to be converted into a handheld railgun cannon, stolen from a hidden military base and delivered through our "delivery boys" to you... without the ammo, that is.
I don't know, you ordered the fucking ammo, not me! I don't know where you put it... Look around, damn it! That stuff is expensive. And dangerous, mind you. Oh come on, it's still sharp!]]
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
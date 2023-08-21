att.PrintName = "Polymer Coated Rounds"
att.AbbrevName = "PC Bullets"
att.Icon = Material("entities/att/placeholder_blackmod.png")
att.Description = [[Cleaner, cheaper, more accurate, and most importantly: purple. These are the four key elements of PC (Polymer Coated) Rounds. The aforementioned polymer coating reportedly reduces friction, lead fouling, and wear inside the barrel, as well as reducing the splash-back on steel targets and less smoke. And of course, they are purple.
Never heard'a these until recently. Saw an article online about how good these things are, so I figured I'd order a box and try it out. Not that bad, honest. Of course, it got my curiosity going, so I... "acquired" more of the rounds. Unfortunately, they're pistol calibers only. No polymer .338 Lapua Magnums or .50 BMGs for you yet. I'm sure you'll still enjoy this little present, from me to you. Hopefully. Those bastards didn't like seeing me again...]]
att.Desc_Pros = {
    "Nice and clean"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"ammo_bullet", "uc_ammo"}

att.Mult_AccuracyMOA = 0.85
att.Mult_MalfunctionMean = 1.5
att.Mult_HeatCapacity = 1.275
att.Mult_HeatDissipation = 1.275

att.Hook_Compatible = function(wep)
    if wep.Num ~= 1 or (wep.Primary.Ammo ~= "pistol") then return false end
end
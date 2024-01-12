att.HideIfBlocked = true
att.PrintName = "Juggernaut Arms"
att.Icon = Material("entities/acwatt_tac_bo1_steadyaim.png", "mips smooth")
att.Description = [[Well, I don't know how you did it. Maybe you worked out a lot. Maybe you're some kinda sci-fi robot. Maybe you got yourself an exosuit. Or maybe you're just a dirty cheater. Hey, I didn't say it was a bad thing. Point is, you can control the Juggernaut's own minigun...
Oh, I feel kinda sorry for whoever you might face. Ahh, but not really... Have fun, big fella!]]
att.Desc_Pros = {
    "Probably a robot",
    "Probably strong af",
}
att.Desc_Cons = {
    "Still slower than default",
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"bo1_steadyaim"}

att.Mult_Recoil = 0.15
att.Mult_RecoilSide = 0.15
att.Mult_RecoilRise = 0.15
att.Mult_HipDispersion = 0.25
att.Mult_MoveDispersion = 0.25
att.Mult_SpeedMult = 1.725
att.Mult_ShootSpeedMult = 1.725
att.Mult_DrawTime = 0.75
att.Mult_HolsterTime = 0.875
att.Mult_SightTime = 0.875

att.RequireFlags = {"juggernautarms"}

att.ExcludeFlags = {"papname1", "papname2", "papname3", "papname4"}
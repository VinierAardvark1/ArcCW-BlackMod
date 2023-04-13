att.HideIfBlocked = true
att.PrintName = "Juggernaut Arms"
att.Icon = Material("entities/acwatt_tac_bo1_steadyaim.png", "mips smooth")
att.Description = [[Well, I don't know how you did it. Maybe you're a robot, or worked out a lot, but you can control the Juggernaut's minigun... Oh I feel kinda sorry for whoever you might face, but not really. Have fun!]]
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

att.Mult_Recoil = 0.25
att.Mult_RecoilSide = 0.25
att.Mult_RecoilRise = 0.25
att.Mult_HipDispersion = 0.25
att.Mult_MoveDispersion = 0.25
att.Mult_SpeedMult = 1.4
att.Mult_ShootSpeedMult = 1.2
att.Mult_DrawTime = 0.75
att.Mult_HolsterTime = 0.9
att.Mult_SightTime = 0.9

att.RequireFlags = {"juggernautarms"}

att.ExcludeFlags = {"papname1", "papname2", "papname3", "papname4"}
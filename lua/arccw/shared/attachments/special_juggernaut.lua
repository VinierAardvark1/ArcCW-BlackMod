att.HideIfBlocked = true
att.PrintName = "Juggernaut Kit"
att.Icon = Material("entities/att/special_juggernaut.png", "mips smooth")
att.Description = [[An M134 fresh from the factory paired with a large backpack filled to the brim with munitions to make you feel like a proper juggernaut. The weight of the backpack slows you noticably while slightly weighing the gun down.
This isn't anything like you've seen in the games. I mean it's based on them, but it does not handle like any of them. Game miniguns typically have 1200-3000 RPM. This beast has the real deal; 6000 RPM. Yeah, it'll do more damage than in any game you've seen, but good luck controlling it.]]
att.Desc_Pros = {
    "No reloading",
}
att.Desc_Cons = {
    "Blocks Pack-A-Punch",
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"bo1_perk_minigun"}

att.Mult_Recoil = 2
att.Mult_RecoilSide = 2
att.Mult_RecoilRise = 2
att.Mult_HipDispersion = 2
att.Mult_MoveDispersion = 2
att.Mult_SpeedMult = 0.4
att.Mult_ShootSpeedMult = 0.2
att.Mult_RPM = 2.5
att.Mult_DrawTime = 1.6
att.Mult_HolsterTime = 1.2
att.Mult_SightTime = 1.3

att.Override_BottomlessClip = true

att.ExcludeFlags = {"papname1", "papname2", "papname3", "papname4"}

att.GivesFlags = {"juggernautarms"}
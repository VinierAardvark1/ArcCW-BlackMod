att.PrintName = "Custom-Made Stock"
att.Icon = Material("entities/att/stock_custom.png")
att.Description = [[Heavy, self-balancing stock with a cheek rest wrapped in duct tape and rope which greatly improves recoil control and stability, but takes much longer to aim with and hinders hipfire substantially.
Found this in some LA gangster's hideout when I, uh, went to collect some debts. Think he made it himself, judging by how much scrap was strapped to the thing. Weighs about as much as a standard AR-15. Probably useful on a weapon with hefty recoil, but it made any rifle I put it on shoot smooth like butter. Not a fan of the whole "homemade" schtick, though...]]
att.Desc_Pros = {
}
att.Desc_Cons = {
	"Who decided to duct taped a metal sheet to this thing???"
}
att.Desc_Neutrals = {
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = "stock"

att.Mult_Recoil = 0.55
att.Mult_RecoilSide = 0.45
att.Mult_SpeedMult = 0.8
att.Mult_MoveDispersion = 0.8
att.Mult_HipDispersion = 1.35
att.Mult_SightTime = 1.2
att.Mult_SightedMoveSpeed = 0.75

att.ActivateElements = {"hstock"}
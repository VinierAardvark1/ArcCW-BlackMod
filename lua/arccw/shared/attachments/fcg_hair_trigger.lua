att.PrintName = "Hair Trigger"
att.Icon = Material("entities/att/fcg_hair_trigger.png")
att.Description = [[A new-and-improved hair trigger increase rate of fire but worsen accuracy.
I get it, sometimes you just want to shoot but the trigger pull is a bit too heavy. This trigger mechanism should help you with that.
I don't know how it fits on everything, but it does; makes it easier to install, I suppose. Least they're cheap...]]
att.Desc_Pros = {
    "- 80% Trigger delay time",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"Crisp trigger pulls",
	"blackmod.desc",
}
att.AutoStats = true
att.SortOrder = 2
att.Slot = {"fcg", "uc_fg"}

att.Mult_RPM = 1.35
att.Mult_AccuracyMOA = 1.2
att.Mult_HipDispersion = 1.15
att.Mult_TriggerDelayTime = 0.2
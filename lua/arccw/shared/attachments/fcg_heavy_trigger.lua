att.PrintName = "Heavy Trigger"
att.Icon = Material("entities/att/fcg_heavy_trigger.png")
att.Description = [[An old, weighted trigger decreases rate of fire but improves accuracy and sighted fire.
Sometimes you just want your gun to feel powerful, but the trigger pull is way too light for that feel, right? Yeah, sounds stupid, but shut up. This trigger mechanism should help you with that.
I don't know how it fits on everything, but it does; makes it easier to install, I suppose. At least these are somewhat cheap...]]
att.Desc_Pros = {
}
att.Desc_Cons = {
    "+50% Trigger delay time",
}
att.Desc_Neutrals = {
	"Not-So-Crisp trigger pulls",
	"blackmod.desc",
}
att.AutoStats = true
att.SortOrder = 2
att.Slot = {"fcg", "uc_fg"}

att.Mult_RPM = 0.85
att.Mult_AccuracyMOA = 0.9
att.Mult_SightsDispersion = 0.75
att.Mult_TriggerDelayTime = 1.5
att.PrintName = "Rusty Internals"
att.Icon = Material("entities/att/placeholder_blackmod.png", "smooth mips")
att.Description = [[A rust-covered bolt and recoil spring. Greatly increases jamming with an inconsistent cyclic rate.
I... yeah, it's a rusted bolt. I don't understand why you order faulty parts from me. I have so much functional shit, I... whatever, you still pay me for something this easy to make. I guess I have no room to complain, huh?]]
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Prone to jamming. Obviously.",
}
att.Desc_Neutrals = {
    "blackmod.desc",
}
att.Slot = "fcg"
att.AutoStats = true

att.Override_Jamming = true
att.Override_MalfunctionTakeRound = false
att.Mult_MalfunctionMean = 0.5
att.Mult_MalfunctionVariance = 0.5

-- Add edited tidal fcg code for varied rate of fire, because a rusty bolt is unreliable as fuck which would mean fire rate would vary.
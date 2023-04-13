AddCSLuaFile()

ENT.Base = "arccw_uc_riflegrenade"
ENT.PrintName = "40mm Fat Man"

ENT.GrenadeDamage = false
ENT.GrenadeRadius = 3600
ENT.DragCoefficient = 0.4
ENT.ExplosionEffect = false

ENT.Model = "models/weapons/shell.mdl"

function ENT:DoDetonation()
    for _,prop in pairs(ents.FindInSphere(self:GetPos(),self.GrenadeRadius)) do
        constraint.RemoveAll(prop)
    end -- Break the constraints before applying damage, this MIGHT change how the props behave

    local attacker = IsValid(self:GetOwner()) and self:GetOwner() or self
    util.BlastDamage(self, attacker, self:GetPos(), self.GrenadeRadius, self.GrenadeDamage or self.Damage or 0)

    ParticleEffect("nqb_explo",self:GetPos(),Angle(0,0,0))
    self:EmitSound("phx/explode0"..math.random(0,6)..".wav", 225, 200, 2, CHAN_AUTO)
    util.ScreenShake(self:GetPos(),90,10,3,self.GrenadeRadius * 10)

    local rads = ents.Create("arccw_rpg7_warhead_radiation")
    rads:SetPos(self:GetPos())
    rads.Creator = attacker
    rads.Duration = math.random(80,120)
    rads:Spawn()
    rads:Activate()
end
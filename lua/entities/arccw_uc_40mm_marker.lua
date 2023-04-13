AddCSLuaFile()

ENT.Base = "arccw_uc_40mm_he"
ENT.PrintName = "40mm Marker Grenade"

ENT.GrenadeDamage = 50
ENT.GrenadeRadius = 150
ENT.DragCoefficient = 0
ENT.ExplosionEffect = false
ENT.Scorch = "Splash.Large"

function ENT:DoDetonation()
    --[[]
    local effectdata = EffectData()
    effectdata:SetOrigin(self:GetPos())
    effectdata:SetMagnitude(4)
    effectdata:SetScale(1)
    effectdata:SetRadius(4)
    effectdata:SetNormal(self:GetVelocity():GetNormalized())
    util.Effect("Sparks", effectdata)
    ]]
    self:EmitSound("physics/cardboard/cardboard_box_break2.wav", 80, 110)
end

function ENT:DoImpact(ent)
end

if CLIENT then
    function ENT:OnRemove()
        local emitter = ParticleEmitter(self:GetPos())
        if not self:IsValid() or self:WaterLevel() > 2 then return end
        if not IsValid(emitter) then return end
        for i = 1, 10 do
            local smoke = emitter:Add("particle/smokestack", self:GetPos())
            smoke:SetVelocity(VectorRand() * 100)
            smoke:SetGravity(Vector(math.Rand(-5, 5), math.Rand(-5, 5), -25))
            smoke:SetDieTime(math.Rand(5, 7))
            smoke:SetStartAlpha(100)
            smoke:SetEndAlpha(0)
            smoke:SetStartSize(math.Rand(10, 15))
            smoke:SetEndSize(75)
            smoke:SetRoll(math.Rand(-180, 180))
            smoke:SetRollDelta(math.Rand(-0.5, 0.5))
            smoke:SetColor(250, 250, math.Rand(220, 255))
            smoke:SetAirResistance(150)
            smoke:SetPos(self:GetPos())
            smoke:SetLighting(false)
            smoke:SetBounce(0.5)
            smoke:SetCollide(true)
        end
        emitter:Finish()
    end
end
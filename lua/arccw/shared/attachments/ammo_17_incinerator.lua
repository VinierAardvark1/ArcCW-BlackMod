att.PrintName = ".17 Incinerator"
att.Icon = Material("entities/att/blackmod_placeholder.png")
att.Description = [[In the world of varmint cartridges, it’s all about speed. Higher velocity delivers flatter trajectories, and more dramatic impacts on critters. To achieve higher speeds, handloaders have experimented with many extreme wildcats — big cases necked down to a smaller calibers. Here we present what may be the most extreme wildcat cartridge of all, the .17 Incinerator — a .50 BMG necked down to .17 caliber. Created by Ammo-One, a custom cartridge company, the .17 Incinerator offers blistering performance. The special lathe-turned 33 gr projectiles exit the barrel at 5883 Feet Per Second — that’s over Mach 5, five times the speed of sound.

What's a wildcat? Well, you're looking at the most extreme example of one. A custom cartridge that isn't mass produced, usually made to optimize a certain performamce of an existing cartridge. As you could probably guess, this was made to optimize the sheer speed of a .17 caliber bullet. It's not efficient in the slightest as most of the 230 grains of powder is lost, but how often can you say you made something go Mach 5 and mean it?]]
att.Desc_Pros = {
}
att.Desc_Cons = {
	"blackmod.nophys",
	"blackmod.shitcode",
}
att.Desc_Neutrals = {
    "blackmod.sniperammo",
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"ammo_bullet", "go_ammo"}

att.Mult_Damage = 1.5
att.Mult_DamageMin = 1.05
att.Mult_AccuracyMOA = 5
att.Mult_Penetration = 1
att.Mult_Recoil = 1
att.Mult_Range = 1
att.Mult_RPM = 2

att.mult_MuzzleVelocity = 1793.138
att.Mult_PhysBulletGravity = 0.25
att.Override_PhysTracerProfile = 1
att.Override_AlwaysPhysBullet = true

att.Override_Jamming = true
att.Mult_MalfunctionMean = 0.33
att.Mult_MalfunctionVariance = 1
att.Mult_HeatCapacity = 0.05
att.Mult_HeatDissipation = 0.075
att.Mult_HeatDelayTime = 1
att.Mult_FixTime = 99999999999999

att.HideIfBlocked = true
att.RequireFlags = {"muzz_17_incinerator"}

att.Hook_PostOverheat = function(wep, heat)
    if SERVER then

        local dmg = DamageInfo()
        dmg:SetDamage(math.random(45, 110))
        dmg:SetDamageType(DMG_BLAST)
        dmg:SetInflictor(wep)
        dmg:SetAttacker(wep:GetOwner())
        wep:GetOwner():TakeDamageInfo(dmg)

        local eff = EffectData()
        eff:SetMagnitude(1)
        eff:SetScale(0.25)
        eff:SetRadius(2)
        util.Effect("Sparks", eff)
        util.Effect("Explosion", eff)

        if (wep:GetOwner():IsPlayer()) then
            wep:GetOwner():DropWeapon()
            if wep:GetOwner():IsPlayer() then
                wep:GetOwner():ScreenFade(1,Color(128,0,0,64),.5,0)
                wep:GetOwner():ViewPunch(Angle(3,0,0))
            end
        end

        if wep:GetOwner():IsPlayer() then
            wep:GetOwner():SetViewPunchAngles(wep:GetOwner():GetViewPunchAngles() + Angle(1, 0, 3))
        end
    end
end
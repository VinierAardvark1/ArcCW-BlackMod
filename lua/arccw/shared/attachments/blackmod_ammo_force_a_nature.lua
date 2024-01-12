att.PrintName = "Gunpowder Propellant Experiment, Formula #22409" --2/24/2009, The Scout Update
att.AbbrevName = "GPE #22409" --Scout TF2 Moment
att.Icon = Material("entities/att/ammo_fan.png")
att.Description = [[IT PACKS A WALLOP!
Any outdoorsman will tell you the most frustrating part of hunting is when a deer simply FALLS DOWN when shot, and doesn't FLY BACKWARD into the forest. Those days are over. Anything this baby hits better PACK A LUNCH, 'cause it is going for a ride!
HOLD ONTO YOUR HAT!
If you happen to be AIRBORNE when firing (for example, leaping from your car after spotting a buck), you'll be PROPELLED into the sky, where you can hunt birds!
THE HUNTER'S LAMENT!
A common complaint with most shotguns is that they reload TOO FAST and hold TOO MANY shells.
THE FORCE-A-NATURE has solved these problems! This two-shotter loads nice and slow, so you can SAVOR every previous moment.

So, someone woke up and decided they wanted to make a shotshell that just sends things fucking flying-and I do mean FLYING. No idea who exactly made them, but I found and ordered these off'a black market mercenary outfitter's website. Never heard of "Mann Co." before, but apparently they have a lotta good things. Might order from them again sometime.]]
att.Desc_Pros = {
    "Enemy Knockback",
    "12 pellets",
}
att.Desc_Cons = {
    "Self Knockback",
    "Firing both barrels at once does not increase knockback",
}
att.Desc_Neutrals = {
    "Can be used to double jump, kinda",
    "Animations go WHEEEEEE-",
	"blackmod.desc",
}
att.AutoStats = true
att.SortOrder = 999
att.NotForNPCs = true
att.Slot = "ammo_shotgun"

att.Mult_ReloadTime = 0.375
att.Mult_RPM = 0.22
-- att.Mult_Range = 1.25

att.Override_Num = 12
att.Override_Damage = 14.1
att.Override_DamageMin = 4.3

att.Free = true

att.Hook_Compatible = function(wep)
    return table.HasValue({"arccw_izh43_sawnoff"}, wep.ClassName) --BlackMod IZH-43 version
end

att.Hook_PostFireBullets = function(wep)
    if CLIENT then return end

    local dir = wep.Owner:GetForward()
    if wep.Owner:IsPlayer() and wep.Owner:GetPhysicsObject():IsValid() then
        local v = dir * (-3 or -1) * math.Clamp(math.sqrt(wep.Recoil), 0.5, 3) * 45 --Controls self knockback value
        if GetConVar("arccw_blackmod_nofly"):GetBool() and not wep.Owner:IsOnGround() then v = v * 0.25 end
        wep.Owner:SetVelocity( v )
    end
end

att.Hook_BulletHit = function(wep, data)
    if CLIENT then return end
    local ent = data.tr.Entity

    -- Debounce for one tick to block shotgun shots
    if (ent.ArcCW_AirbenderNext or 0) >= CurTime() then return end
    ent.ArcCW_AirbenderNext = CurTime() + 0.01

    local dir = data.tr.Normal:GetNormalized()
    -- Use full damage on shotguns
    local damage = math.min(120, wep:GetDamage(data.range))
    if ent and ent:GetPhysicsObject():IsValid() then
        if ent:IsNPC() or ent:IsNextBot() then
            if ent:OnGround() then
                dir.z = 0.25
                dir = dir:GetNormalized()
                ent:SetVelocity( ent:GetVelocity() + dir * damage * 15 )
            end
        elseif ent:IsPlayer() then
            dir.z = 1
            ent:SetVelocity( dir * (ent:IsOnGround() and 6 or 2) * damage )
            local r = math.Clamp(damage / 12, 0.5, 10)
            local punch = AngleRand(-r, r)
            punch.r = 0
            ent:SetEyeAngles(ent:EyeAngles() + punch)
            ent:ViewPunch(punch * 2)
        else
            dir.z = 0.25
            dir = dir:GetNormalized()
            ent:GetPhysicsObject():AddVelocity(dir * damage * 4)
        end
    end

end
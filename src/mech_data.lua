-- src/mech_data.lua

AFFINITIES = {
    "Unarmed", "Sword", "Axe", "Knife",
    "Pistol", "Assault Rifle", "Sniper",
    "Flame", "Frost", "Shock", "Wind",
    "Bio", "Chrono", "Light", "Dark",
    "Void", "Ancient"
}

ACTION_MODULES = {
    -- Name, Affinities, Damage, Range, Description
    { "Punch", {1}, 5, 1, "An ordinary punch." }
}

SUPPORT_MODULES = {
    -- Name, Effect, Description
    { "Void Affinity", {{"AddAffinity", "Void"}}, "Adds Void affinity." }
}

MECH_TYPES = {
    -- Name, Affinities, Action Slots, Support Slots, Description
    { "Broken Mech", {1}, 2, 0, "It's seen better days." }
}
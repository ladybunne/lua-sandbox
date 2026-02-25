-- src/main.lua

require("src.mech_data")
require("inspect")

local mechs = {}

local function create_mech(type)
    local mech = { "Unnamed Mech", type, {}, {} }
    table.insert(mechs, 1, mech)
end

local function equip_action_module(mech, module, slot)
    mechs[mech][3][slot] = ACTION_MODULES[module]
end

local function print_mech(mech)
    print(inspect(mechs[mech]))
end

local function main()
    create_mech(1)
    equip_action_module(1, 1, 1)
    print_mech(1)
end

main()

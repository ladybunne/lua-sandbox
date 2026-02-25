require("luassert")
require("spec.common_assertions")
require("src.mech_data")

describe("action modules", function()
    -- Get all modules.
    for k, v in pairs(ACTION_MODULES) do
        it("should all have names", function()
            assert.isnt_empty(v[1])
        end)
        it("should all have descriptions", function()
            assert.isnt_empty(v[5])
        end)
        it("should all have valid affinities", function()
            -- Get all affinities for a given module.
            for k2, v2 in pairs(v[2]) do
                -- Look up in the affinities table to ensure they exist.
                assert.truthy(AFFINITIES[v2])
            end
        end)
    end
end)

describe("mech types", function()
    -- Get all mechs.
    for k, v in pairs(MECH_TYPES) do
        it("should all have names", function()
            assert.isnt_empty(v[1])
        end)
        it("should all have descriptions", function()
            assert.isnt_empty(v[5])
        end)
        it("should all have valid affinities", function()
            -- Get all affinities for a given mech.
            for k2, v2 in pairs(v[2]) do
                -- Look up in the affinities table to ensure they exist.
                assert.truthy(AFFINITIES[v2])
            end
        end)
    end
end)
local assert = require("luassert")
local say = require("say")

local function is_gt(state, arguments)
    local input = arguments[1]
    local comparator = arguments[2]
    return type(input) == "number" and type(comparator) == "number"
        and #arguments == 2 and input > comparator
end

say:set("assertion.is_gt.positive", "Expected %s to be greater than:\n%s")
say:set("assertion.is_gt.negative", "Expected %s to be greater than, but was not:\n%s")
assert:register("assertion", "is_gt", is_gt, "assertion.is_gt.positive", "assertion.is_gt.negative")

local function isnt_empty(state, arguments)
    local input = arguments[1]
    return type(input) == "string" and #arguments == 1 and string.len(input) > 0
end

say:set("assertion.isnt_empty.positive", "Expected %s to not be an empty string.")
say:set("assertion.isnt_empty.negative", "Expected %s to not be an empty string, but it was.")
assert:register("assertion", "isnt_empty", isnt_empty, "assertion.isnt_empty.positive", "assertion.isnt_empty.negative")


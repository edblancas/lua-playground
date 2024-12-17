-- https://nvchad.com/docs/quickstart/learn-lua
-- you can run this with conjure
-- table 1
local person = {
    name = "joe",
    age = 19,
    skills = {"python", "html"},
}

-- table 2
local someone = {
    name = "siduck",
    skills = {"js", "lua"},
}

-- "force" will overwrite equal values from the someone table over the person table
local result = vim.tbl_deep_extend("force", person, someone)
print(result)

-- result : 
-- {
--     name = "siduck",
--     age = 19,
--     skills = {"js", "lua"},
-- }

-- The list tables wont merge cuz they dont have keys 

-- TIME OF DAY BLOCK MOD
-- by whiskers75

local version = "1"

minetest.register_node ("dayblock:block", {
    drawtype = blocklike,
    description = "Day Block",
    tile_images = {"day.png"},
    inventory_image = {"day.png"},
    sunlight_propagates = true,
    paramtype = 'light',
    walkable = true,
    groups = {dig_immediate=2},
    material = minetest.digprop_constanttime(1.0),
})


minetest.register_on_punchnode(function(pos, node, puncher)
	if node.name == "dayblock:block" then
		minetest.env:set_timeofday(0.5)
		minetest.chat_send_all("Midday set by dayblock")
	end
end)


print("Dayblock Mod version "..version.." loaded!")

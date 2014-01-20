minetest.register_craftitem("potions:fly1",{
	description = "Level 1 Fly Potion",
	stack_max = 1,
	liquids_pointable = false,
	inventory_image = "potions_fly1.png",
	on_use = function(itemstack,player,pointed_thing)
		local name = player:get_player_name()
		affects.affectPlayer(name,"fly1")
		itemstack:take_item()
		return itemstack
	end
})

minetest.register_craftitem("potions:fly2",{
	description = "Level 2 Fly Potion",
	stack_max = 1,
	liquids_pointable = false,
	on_use = function(itemstack,player,pointed_thing)
		local name = player:get_player_name()
		affects.affectPlayer(name,"fly2")
		itemstack:take_item()
		return itemstack
	end	
})

minetest.register_craftitem("potions:fly3",{
	description = "Level 3 Fly Potion",
	stack_max = 1,
	liquids_pointable = false,
	on_use = function(itemstack,player,pointed_thing)
		local name = player:get_player_name()
		affects.affectPlayer(name,"fly3")
		itemstack:take_item()
		return itemstack
	end	
})

minetest.register_craftitem("potions:fly1_raw",{
	description = "Level 1 Raw Fly Potion",
	stack_max = 1,
	liquids_pointable = false,
	inventory_image = "potions_fly1_raw.png"
})

minetest.register_craftitem("potions:fly2_raw",{
	description = "Level 2 Raw Fly Potion",
	stack_max = 1,
	liquids_pointable = false
})

minetest.register_craftitem("potions:fly3_raw",{
	description = "Level 2 Raw Fly Potion",
	stack_max = 1,
	liquids_pointable = false
})


local ground_flowers = {
	{ "flowers:dandelion_white", "ground_dandelion_white", "Ground White Dandelion" },
	{ "flowers:dandelion_yellow", "ground_dandelion_yellow", "Ground Yellow Dandelion" },
	{ "flowers:rose", "ground_rose", "Ground Rose" },
	{ "flowers:geranium", "ground_geranium", "Ground Geranium" },
	{ "flowers:tulip", "ground_tulip", "Ground Tulip" },
	{ "flowers:viola", "ground_viola", "Ground Viola" },
	{ "flowers:seaweed", "ground_seaweed", "Ground Seaweed" },
	{ "flowers:waterlily", "ground_waterlily", "Ground Waterlily" }	
}

for _, data in pairs(ground_flowers) do
	technic.register_grinder_recipe({input=data[1], output="potions:"..data[2]})
	
	minetest.register_craftitem("potions:"..data[2],{
		description = data[3],
		stack_max = 99,
		liquids_pointable = false,
		inventory_image = "potions_"..data[2]..".png"
	})	
end

minetest.register_craft({
	type = "shapeless",
	output = "potions:fly1_raw",
	recipe = {"bushes:sugar","potions:ground_rose","potions:ground_seaweed","default:mese_crystal_fragment","vessels:glass_bottle","bucket:bucket_water"}	
})

minetest.register_craft({
		type="cooking",
		recipe="potions:fly1_raw",
		output = "potions:fly1"
})


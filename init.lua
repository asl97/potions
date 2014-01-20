potions = {}

potions.path = minetest.get_modpath("potions")
 
local fly_potion1 = {
		affectid = "fly1",
		name = "Level 1 Fly Potion",
		stages = {
					{
						time = 120,
						custom = { chance=100, func = function(name, player, affectid)
								local pPrivs = minetest.get_player_privs(name)									
								pPrivs["fly"] = true
								minetest.set_player_privs(name,pPrivs)
								minetest.chat_send_player(name,"You feel lite as the clouds, you can fly!",false)
							end, runonce=true }
					}
		},
		onremove = function(name, player, affectid)
				local pPrivs = minetest.get_player_privs(name)					
				pPrivs["fly"] = nil
				minetest.set_player_privs(name,pPrivs)
				minetest.chat_send_player(name,"You feel gravity take hold, you can no longer fly!",false)
			end
}

affects.registerAffect(fly_potion1)
 
local fly_potion2 = {
		affectid = "fly2",
		name = "Level 2 Fly Potion",
		stages = {
					{
						time = 300,
						custom = { chance=100, func = function(name, player, affectid)
								local pPrivs = minetest.get_player_privs(name)									
								pPrivs["fly"] = true
								minetest.set_player_privs(name,pPrivs)
								minetest.chat_send_player(name,"You feel lite as the clouds, you can fly!",false)
							end, runonce=true }
					}
		},
		onremove = function(name, player, affectid)
				local pPrivs = minetest.get_player_privs(name)					
				pPrivs["fly"] = nil
				minetest.set_player_privs(name,pPrivs)
				minetest.chat_send_player(name,"You feel gravity take hold, you can no longer fly!",false)
			end
}

affects.registerAffect(fly_potion2)

local fly_potion3 = {
		affectid = "fly3",
		name = "Level 3 Fly Potion",
		stages = {
					{
						time = 600,
						custom = { chance=100, func = function(name, player, affectid)
								local pPrivs = minetest.get_player_privs(name)									
								pPrivs["fly"] = true
								minetest.set_player_privs(name,pPrivs)
								minetest.chat_send_player(name,"You feel lite as the clouds, you can fly!",false)
							end, runonce=true }
					}
		},
		onremove = function(name, player, affectid)
				local pPrivs = minetest.get_player_privs(name)					
				pPrivs["fly"] = nil
				minetest.set_player_privs(name,pPrivs)
				minetest.chat_send_player(name,"You feel gravity take hold, you can no longer fly!",false)
			end
}

affects.registerAffect(fly_potion3)

dofile(potions.path.."/items.lua")
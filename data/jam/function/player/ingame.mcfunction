execute if score @s mined matches 1.. at @s run item replace entity @s hotbar.4 from entity @e[type=item,limit=1,sort=nearest,tag=!block.thrown.trace] container.0
execute if score @s mined matches 1.. at @s run kill @e[type=item,limit=1,sort=nearest,tag=!block.thrown.trace]
scoreboard players set @s mined 0

execute unless entity @s[gamemode=creative] run data merge entity @s {SelectedItemSlot:4}
execute if items entity @s weapon.offhand * at @s anchored eyes run function jam:player/throw/throw

# item_model component required in first line as players with slower connections might see the pickaxe otherwise
execute unless entity @s[gamemode=creative] unless items entity @s hotbar.4 * run item replace entity @s hotbar.4 with minecraft:netherite_pickaxe[item_model="air"]
execute unless entity @s[gamemode=creative] if items entity @s hotbar.4 netherite_pickaxe[!custom_data] run item modify entity @s hotbar.4 jam:make_hand

execute unless entity @s[gamemode=creative] unless items entity @s hotbar.4 netherite_pickaxe unless items entity @s hotbar.4 *[custom_data] run item modify entity @s hotbar.4 jam:make_placeable

execute unless entity @s[gamemode=creative] if items entity @s player.cursor * run item replace entity @s hotbar.4 from entity @s player.cursor
execute unless entity @s[gamemode=creative] if items entity @s player.cursor * run item replace entity @s player.cursor with air

# Avoids undefined behaviour upon failure, haven't gone through every scenario, but removing this could mess things up real bad
data remove storage jam:temp Slot
execute unless entity @s[gamemode=creative] store success storage jam:temp Success byte 1 store result storage jam:temp Slot byte 1 run data get entity @s Inventory[{components: {"minecraft:custom_data": {"jam:not_hand":{}}}}].Slot
execute unless entity @s[gamemode=creative] if data storage jam:temp Slot unless data storage jam:temp {Slot: 4b} if data storage jam:temp {Success: 1b} run function jam:player/_mvi with storage jam:temp
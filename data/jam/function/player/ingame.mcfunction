execute if score @s mined matches 1.. at @s run item replace entity @s hotbar.4 from entity @e[type=item,limit=1,sort=nearest,tag=!block.thrown.trace] container.0
execute if score @s mined matches 1.. at @s run kill @e[type=item,limit=1,sort=nearest,tag=!block.thrown.trace]
scoreboard players set @s mined 0

execute unless entity @s[gamemode=creative] run data merge entity @s {SelectedItemSlot:4}
execute if items entity @s weapon.offhand * at @s anchored eyes run function jam:player/throw/throw

execute unless entity @s[gamemode=creative] unless items entity @s hotbar.4 * run item replace entity @s hotbar.4 with minecraft:netherite_pickaxe
execute unless entity @s[gamemode=creative] if items entity @s hotbar.4 netherite_pickaxe run item modify entity @s hotbar.4 jam:make_hand

data modify storage jam:player held_item set from entity @s Inventory[{Slot:4b}].id
execute unless entity @s[gamemode=creative] unless items entity @s hotbar.4 netherite_pickaxe run item modify entity @s hotbar.4 jam:make_placeable
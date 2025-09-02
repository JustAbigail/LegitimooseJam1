kill @e[type=zombie]
schedule function jam:boss_battle/normal 3s
scoreboard players set boss.state value 2
execute as @e[tag=trafficuboid.light,type=item_display] run data modify entity @s item.components."minecraft:item_model" set value "code:trafficuboid_lights_orange"

scoreboard players set boss.spawns value 25
function jam:boss_battle/spawn_cones
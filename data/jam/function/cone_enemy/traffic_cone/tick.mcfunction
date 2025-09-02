
# Change appearance when Hurt
execute on passengers run data modify entity @s item.components.minecraft:item_model set value "code:traffic_cone_alive"
execute as @s[nbt=!{HurtTime:0s}] on passengers run data modify entity @s item.components.minecraft:item_model set value "code:traffic_cone_alive_hit"
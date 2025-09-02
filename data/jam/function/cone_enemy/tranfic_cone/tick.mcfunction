# Charge SFX and VFX
execute if score @s tranfic.timer matches 45 if entity @e[type=player,gamemode=adventure,distance=..64] positioned ~ ~5 ~ run particle minecraft:portal ~ ~ ~ 0.00000000000001 6 0.00000000000001 1 300000 force
execute if score @s tranfic.timer matches 45 if entity @e[type=player,gamemode=adventure,distance=..64] run playsound block.beacon.activate master @a ~ ~ ~ 64 0.7
execute if score @s tranfic.timer matches 45 if entity @e[type=player,gamemode=adventure,distance=..64] run playsound block.portal.trigger master @a ~ ~ ~ 64 1.5
execute if score @s tranfic.timer matches 45 if entity @e[type=player,gamemode=adventure,distance=..64] run attribute @s movement_speed modifier add jam:lock -1000 add_value

# Fire and reset timer
execute if score @s tranfic.timer matches 0 if entity @e[type=player,gamemode=adventure,distance=..64] run playsound block.beacon.deactivate master @a ~ ~ ~ 64 0.7
execute if score @s tranfic.timer matches 0 if entity @e[type=player,gamemode=adventure,distance=..64] anchored eyes facing entity @e[type=player,limit=1,sort=nearest] feet run function jam:cone_enemy/trans_beam/start
execute if score @s tranfic.timer matches 0 run attribute @s movement_speed modifier remove jam:lock
execute if score @s tranfic.timer matches 0 store result score @s tranfic.timer run random value 200..600

# Change appearance when Hurt
execute on passengers run data modify entity @s item.components.minecraft:item_model set value "code:tranfic_cone_alive"
execute as @s[nbt=!{HurtTime:0s}] on passengers run data modify entity @s item.components.minecraft:item_model set value "code:tranfic_cone_alive_hit"

# Progress one tick
scoreboard players remove @s tranfic.timer 1

# Catch all in case the above fails for some reason
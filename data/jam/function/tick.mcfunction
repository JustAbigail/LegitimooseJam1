function jam:player/store_uuid
execute as @a at @s run function jam:player/main
# execute as @e[type=marker,tag=block.thrown.ray] at @s run function jam:player/throw/ray_step
execute as @e[type=item,tag=block.thrown.trace] at @s run function jam:player/throw/tick_projectile
execute as ThatWeirdCoder at @s rotated as @s run function jam:player/throw/make_motion_vector with storage jam:temp
execute as @e[type=snowball] run data modify entity @s Motion set from storage jam:temp Motion

clone 8 67 31 20 77 89 30 24 27
execute store result score blocks_left value run fill 30 24 27 42 34 85 air
execute store result bossbar minecraft:blocks_left value run scoreboard players get blocks_left value

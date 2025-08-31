function jam:player/store_uuid
execute as @a at @s run function jam:player/main
function jam:cone_enemy/main
function jam:game_logic/main
# execute as @e[type=marker,tag=block.thrown.ray] at @s run function jam:player/throw/ray_step
execute as @e[type=item,tag=block.thrown.trace] at @s run function jam:player/throw/tick_projectile

execute as @e run function jam:player/store_uuid

kill @e[type=item,tag=!block.thrown.trace]

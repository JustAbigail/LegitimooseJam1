function jam:player/store_uuid
execute as @a at @s run function jam:player/main
function jam:cone_enemy/main
function jam:traffic_lightbringer/main
function jam:game_logic/main
function jam:boss_battle/main
execute as @e[tag=npc,nbt={interaction:{}}] at @s run function jam:interaction/main
# execute as @e[type=marker,tag=block.thrown.ray] at @s run function jam:player/throw/ray_step
execute as @e[tag=!cone_enemy.trans,tag=cone_enemy.root] at @s run function jam:cone_enemy/traffic_cone/tick
execute as @e[tag=cone_enemy.trans,tag=cone_enemy.root] at @s run function jam:cone_enemy/tranfic_cone/tick
execute as @e[type=item,tag=block.thrown.trace] at @s run function jam:player/throw/tick_projectile

execute as @e run function jam:player/store_uuid

execute as @a at @s run function jam:lobby/tick

# scoreboard players reset * info.spec
# scoreboard players set $0 info.spec 0
# scoreboard players set $1 info.spec -1
# scoreboard players display name $0 info.spec "Line 0"
# scoreboard players display name $1 info.spec "Line 1"

execute as @a[level=1..] run xp set @s 0 points
kill @e[type=item,tag=!block.thrown.trace]

team join in_lobby @a[team=]

execute as @e[type=tnt,nbt={fuse:1s}] at @s run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,Tags:["tnt_replace"],Silent:true}
kill @e[type=tnt,nbt={fuse:1s}]
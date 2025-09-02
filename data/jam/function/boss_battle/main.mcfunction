execute if score boss.state value matches 0 as @e[tag=trafficuboid.body,type=item_display] at @s run rotate @s ~1 0
execute as @e[tag=trafficuboid.light,type=item_display] rotated as @e[tag=trafficuboid.body,type=item_display] run rotate @s ~ 0

execute if score boss.active value matches 1 if score boss.next_attack timer matches 1.. run scoreboard players remove boss.next_attack timer 1
execute if score boss.next_attack timer matches 0 run function jam:boss_battle/attack

execute positioned -144 50 -16 as @a[dx=69,dy=7,dz=68] run damage @s 1000
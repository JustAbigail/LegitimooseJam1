effect give @e[tag=cone_enemy.root] invisibility 1 1 true
tag @e[tag=cone_enemy.model] remove alive_for_next_tick
execute as @e[tag=cone_enemy.root] on passengers run tag @s add alive_for_next_tick
kill @e[tag=cone_enemy.model,tag=!alive_for_next_tick]
execute as @e[tag=cone_enemy.root] rotated as @s on passengers run rotate @s ~ 0
scoreboard players remove boss.spawns value 1
execute positioned -109 71 17 run function jam:cone_enemy/summon
effect give @e[type=zombie] resistance 1 255 true
execute if score boss.spawns value matches 1.. run schedule function jam:boss_battle/spawn_cones 1t
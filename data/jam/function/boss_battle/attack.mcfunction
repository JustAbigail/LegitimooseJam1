scoreboard players add boss.attack value 1
execute if score boss.attack value matches 4.. run scoreboard players set boss.attack value 1
execute if score boss.attack value matches 1 run function jam:boss_battle/green_attack
execute if score boss.attack value matches 2 run function jam:boss_battle/orange_attack
execute if score boss.attack value matches 3 run function jam:boss_battle/red_attack
scoreboard players set boss.next_attack timer 300

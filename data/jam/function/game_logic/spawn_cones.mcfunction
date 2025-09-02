execute store result score random_cone_spawn value run random value 1..6
execute if score random_cone_spawn value matches 1 positioned 6 67 48 run function jam:cone_enemy/summon
execute if score random_cone_spawn value matches 2 positioned 6 67 51 run function jam:cone_enemy/summon
execute if score random_cone_spawn value matches 3 positioned 6 67 54 run function jam:cone_enemy/summon
execute if score random_cone_spawn value matches 4 positioned 22 67 48 run function jam:cone_enemy/summon
execute if score random_cone_spawn value matches 5 positioned 22 67 51 run function jam:cone_enemy/summon
execute if score random_cone_spawn value matches 6 positioned 22 67 54 run function jam:cone_enemy/summon

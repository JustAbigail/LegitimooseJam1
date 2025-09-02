execute if score $BeamOfTrans.Steps value >= $BeamOfTrans.MaxSteps value run return run function jam:cone_enemy/trans_beam/end

particle dust{color:[0.20, 0.65, 1.00],scale:1} ~ ~-1 ~ 0.1 0.1 0.1 1 10 force
particle dust{color:[1.00, 0.40, 1.00],scale:1} ~ ~-0.5 ~ 0.1 0.1 0.1 1 10 force
particle dust{color:[1.00, 1.00, 1.00],scale:1} ~ ~ ~ 0.1 0.1 0.1 1 10 force
particle dust{color:[1.00, 0.40, 1.00],scale:1} ~ ~0.5 ~ 0.1 0.1 0.1 1 10 force
particle dust{color:[0.20, 0.65, 1.00],scale:1} ~ ~1 ~ 0.1 0.1 0.1 1 10 force

execute unless block ~ ~ ~ #jam:ray_through run return run function jam:cone_enemy/trans_beam/end

execute if entity @e[type=player,distance=..0.5] run return run function jam:cone_enemy/trans_beam/hit

scoreboard players add $BeamOfTrans.Steps value 1
execute positioned ^ ^ ^0.2 run function jam:cone_enemy/trans_beam/step
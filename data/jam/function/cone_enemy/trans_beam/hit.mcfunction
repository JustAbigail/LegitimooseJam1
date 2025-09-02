damage @e[type=player,limit=1,sort=nearest] 5 jam:beam_of_trans by @s

execute at @e[type=player,limit=1,sort=nearest] run particle flash
execute as @e[type=player,limit=1,sort=nearest] at @s run playsound item.trident.riptide_3 master @a ~ ~ ~ 16 2

return run function jam:cone_enemy/trans_beam/end
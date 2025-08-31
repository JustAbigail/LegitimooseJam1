execute if entity @s[tag=ingame] run function jam:player/ingame
execute unless entity @s[gamemode=creative] if entity @s[tag=!ingame] run clear @s
data merge entity @s {foodLevel:20}
execute if score @s death_check matches 1.. run tag @s remove ingame
execute if score @s death_check matches 1.. run clear @s
scoreboard players reset @s death_check
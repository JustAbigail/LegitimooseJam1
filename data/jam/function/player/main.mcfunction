execute if entity @s[tag=ingame] run function jam:player/ingame
execute unless entity @s[gamemode=creative] if entity @s[tag=!ingame] run clear @s
data merge entity @s {foodLevel:20}
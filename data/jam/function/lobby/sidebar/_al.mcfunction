$scoreboard players set $$(Line) $(Objective) $(Score)
$scoreboard players display name $$(Line) $(Objective) $(Text)
tellraw @a "Testing _al: "
$tellraw @a "Line: $(Line)"
$tellraw @a "Score: $(Score)"
$tellraw @a "Objective: $(Objective)"
$tellraw @a "Text: $(Text)"
# Converts a rotation passed in through /execute and used in caret notation along with speed into a motion vector
# Inputs: ARG Speed
# Outputs: jam:temp Motion

tag @s add player.temp
execute positioned 0 0 0 run summon marker ~ ~ ~ {Tags: ["dir"]}
$execute at @e[type=marker,tag=dir,limit=1] rotated as @a[tag=player.temp,limit=1] run tp @s ^ ^ ^$(Speed)
data modify storage jam:temp Motion set from entity @e[type=marker,tag=dir,limit=1]
kill @e[type=marker,tag=dir,limit=1]
tag @s remove player.temp
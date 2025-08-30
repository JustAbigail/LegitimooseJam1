summon marker ~ ~ ~ {Tags: ["edit_mode.ray.start"]}
scoreboard players set $EditMode.Ray.Steps value 0
scoreboard players set $EditMode.Ray.MaxSteps value 50
return run function jam:edit_mode/ray/step
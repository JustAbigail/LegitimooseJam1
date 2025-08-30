# Check if maximum steps and distance were exceeded
execute if score $EditMode.Ray.Steps value >= $EditMode.Ray.MaxSteps value run return run function jam:edit_mode/ray/end
execute unless entity @e[type=marker, tag=edit_mode.ray.start, distance=..5] run return run function jam:edit_mode/ray/end

particle end_rod

execute positioned ^1 ^ ^ run function jam:edit_mode/ray/step
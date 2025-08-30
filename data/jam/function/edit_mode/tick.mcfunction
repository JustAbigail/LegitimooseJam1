execute as @a[tag=player.edit_mode] at @s run function jam:edit_mode/per_player
kill @e[type=marker,tag=edit_mode.ray.end]
kill @e[type=marker,tag=edit_mode.ray.start]
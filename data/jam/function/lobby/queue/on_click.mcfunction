execute as @e[type=interaction,tag=btn.queue] run data remove entity @s interaction
execute if entity @s[team=queued] run return run function jam:lobby/queue/fail
return run function jam:lobby/queue/succeed
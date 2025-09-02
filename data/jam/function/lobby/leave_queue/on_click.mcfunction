execute as @e[type=interaction,tag=btn.leave_queue] run data remove entity @s interaction
execute if entity @s[team=queued] run return run function jam:lobby/leave_queue/succeed
return run function jam:lobby/leave_queue/fail
execute if entity @s[tag=npc] run function jam:interaction/npc
execute if entity @s[tag=btn.queue] run function jam:lobby/queue
execute if entity @s[tag=btn.leave_queue] run function jam:lobby/leave_queue
data remove entity @s interaction
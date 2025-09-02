scoreboard players set !Queue.Timer.WasActive value 1
scoreboard players remove $Queue.Timer.Seconds value 1
execute if score $Queue.Timer.Seconds value matches -1 run scoreboard players remove $Queue.Timer.Minutes value 1
execute if score $Queue.Timer.Seconds value matches -1 run scoreboard players set $Queue.Timer.Seconds value 59

execute if score $Queue.Timer.Minutes value matches -1 run return run function jam:lobby/update/start

function jam:lobby/render/render

schedule function jam:lobby/update/waiting 1s
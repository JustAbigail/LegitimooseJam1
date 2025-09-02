execute if score !Queue.Timer.WasActive value matches 0 if entity @a[team=queued] run scoreboard players set $Queue.Timer.Seconds value 0
execute if score !Queue.Timer.WasActive value matches 0 if entity @a[team=queued] run scoreboard players set $Queue.Timer.Minutes value 1
execute if score !Queue.Timer.WasActive value matches 0 if entity @a[team=queued] run schedule function jam:lobby/update/waiting 1s
execute if score !Queue.Timer.WasActive value matches 1 unless entity @a[team=queued] run schedule clear jam:lobby/update/waiting
execute if score !Queue.Timer.WasActive value matches 1 unless entity @a[team=queued] run scoreboard players set !Queue.Timer.WasActive value 0
execute if score !Queue.Timer.WasActive value matches 1 unless entity @a[team=queued] run function jam:lobby/render/render
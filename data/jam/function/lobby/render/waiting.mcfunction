data modify storage jam:temp Text set value [" ", " ", "Waiting for players"]
function jam:lobby/sidebar/append_line with storage jam:temp

execute unless entity @a[team=queued] run return 0

execute store result storage jam:temp Seconds int 1 run scoreboard players get $Queue.Timer.Seconds value
execute store result storage jam:temp Minutes int 1 run scoreboard players get $Queue.Timer.Minutes value
function jam:lobby/render/_wpt with storage jam:temp
function jam:lobby/sidebar/append_line with storage jam:temp
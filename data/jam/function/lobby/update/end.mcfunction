scoreboard players set $Queue.Timer.Seconds value 0
scoreboard players set $Queue.Timer.Minutes value 1

tag @a remove isnt_playing

schedule function jam:lobby/update/waiting 1s
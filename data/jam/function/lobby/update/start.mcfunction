scoreboard players set $Queue.Timer.Seconds value 0
scoreboard players set $Queue.Timer.Minutes value 0

tag @a[team=!queued] add isnt_playing
function jam:game_logic/start
function jam:lobby/render/render
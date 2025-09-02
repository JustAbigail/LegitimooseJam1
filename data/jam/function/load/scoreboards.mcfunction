scoreboard objectives add value dummy
scoreboard objectives add temp dummy
scoreboard objectives add timer dummy
scoreboard objectives add math dummy

scoreboard objectives add death_check deathCount

scoreboard players set $$2 math 2
scoreboard players set $$1000 math 1000
scoreboard players set $$Gravity math 4

scoreboard players set $$TicksPerSecond math 20
scoreboard players set $$TicksPerMinute math 1200

scoreboard objectives add uuid.0 dummy
scoreboard objectives add uuid.1 dummy
scoreboard objectives add uuid.2 dummy
scoreboard objectives add uuid.3 dummy

scoreboard objectives add owner.0 dummy
scoreboard objectives add owner.1 dummy
scoreboard objectives add owner.2 dummy
scoreboard objectives add owner.3 dummy

# Meant for miscellaneous relations between entities, didn't wanna make 4 objectives for every single one
scoreboard objectives add ref.0.0 dummy
scoreboard objectives add ref.0.1 dummy
scoreboard objectives add ref.0.2 dummy
scoreboard objectives add ref.0.3 dummy

scoreboard objectives add attack.damage dummy
scoreboard objectives add attack.ignite dummy
scoreboard objectives add attack.speed dummy
scoreboard objectives add attack.hits dummy

scoreboard objectives add tranfic.timer dummy

scoreboard objectives add bt.timer dummy
scoreboard objectives add bt.rot dummy

scoreboard objectives add queue trigger
scoreboard objectives add spectate trigger

scoreboard players set $Queue.Timer.Seconds value 0
scoreboard players set $Queue.Timer.Minutes value 1
scoreboard players set !Queue.Timer.WasActive value 0

team add queued "Queued"
team add in_lobby "Lobby"

team modify in_lobby color green
team modify queued color green

team modify in_lobby prefix "Lobby | "
team modify queued prefix "Queued | "

scoreboard objectives add info.lobby dummy
scoreboard objectives modify info.lobby displayname {text: "ROAD BLOCK", shadow_color: [1, 0.53, 0, 1], bold: true}

bossbar add minecraft:blocks_left "Hoi_Kirb"
bossbar set minecraft:blocks_left max 234

time set day
setworldspawn 0 62 -56 180
playerlist @a header set <b><shadow:#FF8800FF>ROAD BLOCK</b>
gamerule mobGriefing false
gamerule commandModificationBlockLimit 999999999
gamerule keepInventory true
gamerule maxEntityCramming 0
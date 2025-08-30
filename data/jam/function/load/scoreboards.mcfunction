scoreboard objectives add value dummy
scoreboard objectives add temp dummy
scoreboard objectives add timer dummy
scoreboard objectives add math dummy

scoreboard players set $$2 math 2
scoreboard players set $$1000 math 1000

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

time set day
gamerule mobGriefing false
gamerule commandModificationBlockLimit 999999999
execute if score @e[type=item,tag=block.thrown.trace.hit,limit=1] attack.hits matches 0 run return run function jam:player/throw/cancel_hit

# Mark the display of the tracer that hit
execute as @e[type=item,tag=block.thrown.trace.hit,limit=1] on passengers run tag @s add block.thrown.dsp.hit

# Mark the entity that was hit
tag @s add entity.hit

# Mark the player that will be given kill credit
execute as @a if score @s uuid.0 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.0 if score @s uuid.1 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.1 if score @s uuid.2 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.2 if score @s uuid.3 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.3 run tag @s add player.hit

# Cancel if the one being hit is the player who threw it
execute if score @s uuid.0 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.0 if score @s uuid.1 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.1 if score @s uuid.2 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.2 if score @s uuid.3 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.3 run return run function jam:player/throw/cancel_hit

# Apply damage if target isn't a one hit kill
execute unless predicate jam:instakill_by_thrown_block store result storage jam:temp Damage int 1 run scoreboard players get @e[type=item,tag=block.thrown.trace.hit,limit=1] attack.damage
execute unless predicate jam:instakill_by_thrown_block run function jam:player/throw/_dmg with storage jam:temp
execute unless predicate jam:instakill_by_thrown_block if score @e[type=item,tag=block.thrown.trace.hit,limit=1] attack.ignite matches 1.. store result entity @s Fire int 1 run scoreboard players get @e[type=item,tag=block.thrown.trace.hit,limit=1] attack.ignite

# Play SFX and VFX
particle smoke ~ ~ ~ 0.1 0.1 0.1 1 40 force
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 32 2

tag @s remove entity.hit

scoreboard players remove @e[type=item,tag=block.thrown.trace.hit] attack.hits 1
execute as @e[type=item,tag=block.thrown.trace.hit,limit=1] if score @s attack.hits matches 0 run function jam:player/throw/hit_block

# Kill if target is meant to die in one hit
# Keep this last, please, idk if the function carries on when the target dies. Very likely but I'm not taking the risk
execute if predicate jam:instakill_by_thrown_block run kill @s

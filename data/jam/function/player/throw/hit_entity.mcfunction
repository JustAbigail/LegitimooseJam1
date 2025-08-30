# Mark the display of the tracer that hit
execute as @e[type=item,tag=block.thrown.trace.hit,limit=1] on passengers run tag @s add block.thrown.dsp.hit

# Mark the entity that was hit
tag @s add entity.hit

# Mark the player that will be given kill credit
execute as @a if score @s uuid.0 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.0 if score @s uuid.1 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.1 if score @s uuid.2 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.2 if score @s uuid.3 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.3 run tag @s add player.hit

# Cancel if the one being hit is the player who threw it
execute if score @s uuid.0 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.0 if score @s uuid.1 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.1 if score @s uuid.2 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.2 if score @s uuid.3 = @e[type=item,tag=block.thrown.trace.hit,limit=1] owner.3 run return fail

# Apply damage
execute store result storage jam:temp Damage int 1 run scoreboard players get @e[type=item,tag=block.thrown.trace.hit,limit=1] attack.damage
function jam:player/throw/_dmg with storage jam:temp

# Play SFX and VFX
particle smoke ~ ~ ~ 0.1 0.1 0.1 1 40 force
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 32 2

# Delete tracer and display
kill @e[type=item,tag=block.thrown.trace.hit,limit=1]
kill @e[type=item_display,tag=block.thrown.dsp.hit,limit=1]

# execute if score @e[type=item,tag=block.thrown.trace.hit,limit=1] attack.ignite matches 1.. run data modify entity @s Fire set value 
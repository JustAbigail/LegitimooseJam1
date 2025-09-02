execute as @e[type=item,tag=block.thrown.trace.hit,limit=1] on passengers run tag @s add block.thrown.dsp.hit
summon tnt ~ ~ ~ {fuse:0,explosion_power:0}
execute on passengers run kill @s
kill @s
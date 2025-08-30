# Mark the display of the tracer that hit
execute as @e[type=item,tag=block.thrown.trace.hit,limit=1] on passengers run tag @s add block.thrown.dsp.hit

playsound block.glass.break master @a ~ ~ ~ 1 0.1

particle ash ~ ~ ~ 0.1 0.1 0.1 1 40 force

execute on passengers run kill @s
kill @s
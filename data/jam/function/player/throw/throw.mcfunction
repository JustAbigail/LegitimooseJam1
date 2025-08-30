execute if items entity @s weapon.offhand netherite_pickaxe run return fail
playsound block.dispenser.launch master @a

execute at @s anchored eyes positioned ^ ^ ^0.3 run summon item_display ~ ~ ~ {Tags: ["block.thrown.dsp", "block.thrown.dsp.new"]}
item replace entity @e[type=item_display,tag=block.thrown.dsp.new,limit=1] container.0 from entity @s weapon.offhand

# Load item id of thrown item into jam:temp ThrownItem
data modify storage jam:temp ThrownItem set from entity @s equipment.offhand.id

# Call properties.mcfunction. If it succeeds to find a set of properties, keep those, if not, assume default ones
execute unless function jam:player/throw/properties run data modify storage jam:temp ThrownItemProperties set value {Damage: 5, Speed: 0.5, Ignite: false}

# Summon an item to trace the curve
execute at @s anchored eyes positioned ^ ^ ^0.3 run summon item ~ ~ ~ {Tags: ["block.thrown.trace", "block.thrown.trace.new"], NoGravity: true, Item: {id: "barrier", components: {item_model: "air"}}, PickupDelay: 10000}

execute anchored eyes positioned ^ ^ ^0.5 run particle end_rod
execute anchored eyes positioned ^ ^ ^1 run particle end_rod
execute anchored eyes positioned ^ ^ ^1.5 run particle end_rod
execute anchored eyes positioned ^ ^ ^2 run particle end_rod

# Bind tracer to attacker
scoreboard players operation @e[type=item,tag=block.thrown.trace.new,limit=1] owner.0 = @s uuid.0
scoreboard players operation @e[type=item,tag=block.thrown.trace.new,limit=1] owner.1 = @s uuid.1
scoreboard players operation @e[type=item,tag=block.thrown.trace.new,limit=1] owner.2 = @s uuid.2
scoreboard players operation @e[type=item,tag=block.thrown.trace.new,limit=1] owner.3 = @s uuid.3

# Bind attack properties to tracer
execute store result score @e[type=item,tag=block.thrown.trace.new,limit=1] attack.damage run data get storage jam:temp ThrownItemProperties.Damage
execute store result score @e[type=item,tag=block.thrown.trace.new,limit=1] attack.ignite run data get storage jam:temp ThrownItemProperties.Ignite
execute store result score @e[type=item,tag=block.thrown.trace.new,limit=1] attack.speed run data get storage jam:temp ThrownItemProperties.Speed 100

# Convert player rotation from caret notation along with speed to a motion vector
# Outputs: jam:temp Motion
function jam:player/throw/make_motion_vector with storage jam:temp ThrownItemProperties

ride @e[type=item_display,tag=block.thrown.dsp.new,limit=1] mount @e[type=item,tag=block.thrown.trace.new,limit=1]

data modify entity @e[type=item,tag=block.thrown.trace.new,limit=1] Motion set from storage jam:temp Motion
data modify entity @e[type=item,tag=block.thrown.trace.new,limit=1] Rotation set from entity @s

# tellraw @a ["Motion: ", {nbt: "Motion", entity: "@e[type=item,tag=block.thrown.trace.new,limit=1]"}]

tag @e[type=item,tag=block.thrown.trace.new,limit=1] remove block.thrown.trace.new
tag @e[type=item_display,tag=block.thrown.dsp.new,limit=1] remove block.thrown.dsp.new


item replace entity @s weapon.offhand with air
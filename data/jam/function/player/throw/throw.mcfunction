execute if items entity @s weapon.offhand netherite_pickaxe run return fail
playsound minecraft:entity.generic.explode player @a ~ ~1.5 ~ 1 2
execute anchored eyes positioned ^ ^ ^0.3 run summon item_display ~ ~ ~ {Tags: ["block.thrown.dsp", "block.thrown.dsp.new"]}
item replace entity @e[type=item_display,tag=block.thrown.dsp.new,limit=1] container.0 from entity @s weapon.offhand

# Load item id of thrown item into jam:temp ThrownItem
data modify storage jam:temp ThrownItem set from entity @s equipment.offhand.id

# Call properties.mcfunction. If it succeeds to find a set of properties, keep those, if not, assume default ones
execute unless function jam:player/throw/properties run data modify storage jam:temp ThrownItemProperties set value {Damage: 5, Speed: 0.75, Ignite: false}

execute anchored eyes positioned ^ ^ ^0.3 run summon marker ~ ~ ~ {Tags: ["block.thrown.ray", "block.thrown.ray.new"]}

# Bind display to attacker
scoreboard players operation @e[type=item_display,tag=block.thrown.dsp.new,limit=1] owner.0 = @s uuid.0
scoreboard players operation @e[type=item_display,tag=block.thrown.dsp.new,limit=1] owner.1 = @s uuid.1
scoreboard players operation @e[type=item_display,tag=block.thrown.dsp.new,limit=1] owner.2 = @s uuid.2
scoreboard players operation @e[type=item_display,tag=block.thrown.dsp.new,limit=1] owner.3 = @s uuid.3

# Bind raycast to attacker
scoreboard players operation @e[type=marker,tag=block.thrown.ray.new,limit=1] owner.0 = @s uuid.0
scoreboard players operation @e[type=marker,tag=block.thrown.ray.new,limit=1] owner.1 = @s uuid.1
scoreboard players operation @e[type=marker,tag=block.thrown.ray.new,limit=1] owner.2 = @s uuid.2
scoreboard players operation @e[type=marker,tag=block.thrown.ray.new,limit=1] owner.3 = @s uuid.3

# Bind display to ray
scoreboard players operation @e[type=item_display,tag=block.thrown.dsp.new,limit=1] ref.0.0 = @e[type=marker,tag=block.thrown.ray.new,limit=1] uuid.0
scoreboard players operation @e[type=item_display,tag=block.thrown.dsp.new,limit=1] ref.0.1 = @e[type=marker,tag=block.thrown.ray.new,limit=1] uuid.1
scoreboard players operation @e[type=item_display,tag=block.thrown.dsp.new,limit=1] ref.0.2 = @e[type=marker,tag=block.thrown.ray.new,limit=1] uuid.2
scoreboard players operation @e[type=item_display,tag=block.thrown.dsp.new,limit=1] ref.0.3 = @e[type=marker,tag=block.thrown.ray.new,limit=1] uuid.3

# Bind ray to display
scoreboard players operation @e[type=marker,tag=block.thrown.ray.new,limit=1] ref.0.0 = @e[type=item_display,tag=block.thrown.dsp.new,limit=1] uuid.0
scoreboard players operation @e[type=marker,tag=block.thrown.ray.new,limit=1] ref.0.1 = @e[type=item_display,tag=block.thrown.dsp.new,limit=1] uuid.1
scoreboard players operation @e[type=marker,tag=block.thrown.ray.new,limit=1] ref.0.2 = @e[type=item_display,tag=block.thrown.dsp.new,limit=1] uuid.2
scoreboard players operation @e[type=marker,tag=block.thrown.ray.new,limit=1] ref.0.3 = @e[type=item_display,tag=block.thrown.dsp.new,limit=1] uuid.3

# Bind attack properties to ray
execute store result score @e[type=marker,tag=block.thrown.ray.new,limit=1] attack.damage run data get storage jam:temp ThrownItemProperties.Damage
execute store result score @e[type=marker,tag=block.thrown.ray.new,limit=1] attack.ignite run data get storage jam:temp ThrownItemProperties.Ignite
execute store result score @e[type=marker,tag=block.thrown.ray.new,limit=1] attack.speed run data get storage jam:temp ThrownItemProperties.Speed 100

# Convert player rotation from caret notation along with speed to a motion vector
# Outputs: jam:temp Motion
function jam:player/throw/make_motion_vector with storage jam:temp ThrownItemProperties

# Convert motion vector to fixed point integer
execute store result score $Motion.X math run data get storage jam:temp Motion[0] 100
execute store result score $Motion.X math run data get storage jam:temp Motion[1] 100
execute store result score $Motion.X math run data get storage jam:temp Motion[2] 100

# Copy motion vector for calculation of translation vector
scoreboard players operation $Translation.X math = $Motion.X math
scoreboard players operation $Translation.Y math = $Motion.Y math
scoreboard players operation $Translation.Z math = $Motion.Z math

# Assume translation over 1000 ticks to maintain correct speed
scoreboard players operation $Translation.X math /= $$1000 math
scoreboard players operation $Translation.Y math /= $$1000 math
scoreboard players operation $Translation.Z math /= $$1000 math

# Scale back down and write to translation vector
execute store result entity @e[type=item_display,tag=block.thrown.dsp.new,limit=1] transformation.translation[0] float 0.01 run scoreboard players get $Translation.X math
execute store result entity @e[type=item_display,tag=block.thrown.dsp.new,limit=1] transformation.translation[1] float 0.01 run scoreboard players get $Translation.Y math
execute store result entity @e[type=item_display,tag=block.thrown.dsp.new,limit=1] transformation.translation[2] float 0.01 run scoreboard players get $Translation.Z math

# Schedule translation interpolation over 1000 ticks
data merge entity @e[type=item_display,tag=block.thrown.dsp.new,limit=1] {interpolation_duration: 1000, start_interpolation: -1}

tag @e[type=item_display,tag=block.thrown.dsp.new,limit=1] remove block.thrown.dsp.new

item replace entity @s weapon.offhand with air

# Initialize raycast
scoreboard players set $Throw.Ray.MaxSteps value 1000
scoreboard players set $Throw.Ray.Steps value 0

# Raycast and interpolation will start next tick
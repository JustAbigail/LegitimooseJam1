# nvm i'm keeping it easy

execute if data storage jam:temp {ThrownItem: "minecraft:obsidian"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 20, Ignite: 0, Speed: 2, Hits: 100}
execute if data storage jam:temp {ThrownItem: "minecraft:magma_block"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 10, Ignite: 400, Speed: 3, Hits: 1}

return run data modify storage jam:temp ThrownItemProperties set value {Damage: 5, Ignite: 0, Speed: 2.5, Hits: 1}


# the code below won't run

# Nerf these to fit the waves later
# most of this prob not even needed cuz traffic cones r one hit anyways
# keep it in for now just in case
# Remember multi-cursor editing(left alt+click)
# In retrospect, I should've made this use tags and execute if item but I gotta hurry and it works so prob not doing that
# Don't remove the last line, it'll break throw.mcfunction

# When adding blocks: check if the id of the block is in jam:temp ThrownItem WITH NAMESPACE PREFIX("minecraft:")
# If so, set jam:temp ThrownItemProperties and RETURN
# Leave the last line at the end in intact and don't put a catch-all statement here

# Level 1
# Light: Wood
execute if data storage jam:temp {ThrownItem: "minecraft:oak_planks"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 5, Ignite: 0, Speed: 3, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:spruce_planks"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 5, Ignite: 0, Speed: 3, Hits: 1}
# Medium: Bricks
execute if data storage jam:temp {ThrownItem: "minecraft:bricks"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 2}
# Heavy: Polished Andesite
execute if data storage jam:temp {ThrownItem: "minecraft:polished_andesite"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 11, Ignite: 0, Speed: 1, Hits: 3}

# Tier 2
# All the same, just dyed Terracotta and Concrete
execute if data storage jam:temp {ThrownItem: "minecraft:terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:white_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:yellow_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:orange_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:red_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:pink_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:magenta_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:purple_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:blue_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:light_blue_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:cyan_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:green_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:lime_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:brown_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:black_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:light_gray_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:gray_terracotta"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}

execute if data storage jam:temp {ThrownItem: "minecraft:white_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:yellow_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:orange_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:red_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:pink_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:magenta_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:purple_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:blue_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:light_blue_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:cyan_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:green_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:lime_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:brown_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:black_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:light_gray_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:gray_concrete"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 8, Ignite: 0, Speed: 2, Hits: 1}

# Tier 3
# Polished Andesite(heavy) handled in tier 1
# Concrete(light) in 2
# Polished Basalt: Medium
execute if data storage jam:temp {ThrownItem: "minecraft:polished_basalt"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 13, Ignite: 0, Speed: 2, Hits: 2}
execute if data storage jam:temp {ThrownItem: "minecraft:iron_block"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 17, Ignite: 0, Speed: 1, Hits: 5}

# Tier 4
execute if data storage jam:temp {ThrownItem: "minecraft:magma_block"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 7, Ignite: 400, Speed: 2, Hits: 4}
execute if data storage jam:temp {ThrownItem: "minecraft:obsidian"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 21, Ignite: 0, Speed: 1, Hits: 40}
execute if data storage jam:temp {ThrownItem: "minecraft:amethyst_block"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 16, Ignite: 0, Speed: 3, Hits: 1}
execute if data storage jam:temp {ThrownItem: "minecraft:calcite"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 16, Ignite: 0, Speed: 3, Hits: 1}


return run data modify storage jam:temp ThrownItemProperties set value {Damage: 5, Speed: 2.5, Ignite: false, Hits: 1}
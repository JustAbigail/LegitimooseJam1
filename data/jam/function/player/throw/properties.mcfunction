# Don't remove the last line, it'll break throw.mcfunction

# When adding blocks: check if the id of the block is in jam:temp ThrownItem WITH NAMESPACE PREFIX("minecraft:")
# If so, set jam:temp ThrownItemProperties and RETURN
# Leave the last line at the end in intact and don't put a catch-all statement here

execute if data storage jam:temp {ThrownItem: "minecraft:magma_block"} run return run data modify storage jam:temp ThrownItemProperties set value {Damage: 7, Ignite: true, Speed: 0.20}

return fail
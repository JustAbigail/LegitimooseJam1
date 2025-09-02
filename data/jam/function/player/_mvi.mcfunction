$tellraw @a "Swapping item from slot $(Slot)"
$tellraw @a ["Item: ", {nbt: "Inventory[{Slot: $(Slot)}]", "entity": "@s"}]
$item replace entity @s hotbar.4 from entity @s container.$(Slot)
$item replace entity @s container.$(Slot) with air
# Converts ticks to minutes and seconds, discarding extra ticks
# Inputs: score temp $Ticks
# Outputs: score temp $Minutes, score temp $Seconds

# 1200 TPM
scoreboard players operation $Minutes temp = $Ticks temp
scoreboard players operation $Minutes temp /= $$TicksPerSecond math
scoreboard players operation $TicksUsedInMinutes temp = $Minutes temp
scoreboard players operation $TicksUsedInMinutes temp *= $$TicksPerMinute temp
scoreboard players operation $TicksRemainingForSeconds temp = $Ticks temp
scoreboard players operation $TicksRemainingForSeconds temp -= $TicksUsedInMinutes temp
scoreboard players operation $Seconds temp = $TicksRemainingForSeconds temp
scoreboard players operation $Seconds temp = $$TicksPerSecond math
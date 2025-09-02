summon armor_stand 0 400 0 {Tags: ["ph.temp"], NoGravity: true, Invisible: true, Invulnerable: true, NoBasePlate: true, NoAI: true}
loot replace entity @e[type=armor_stand,tag=ph.temp,limit=1] armor.head loot jam:player_head
data modify storage jam:temp PlayerName set from entity @e[type=armor_stand,tag=ph.temp,limit=1] equipment.head.components."minecraft:profile".name
kill @e[type=armor_stand,tag=ph.temp]

function jam:lobby/render/_qp with storage jam:temp
function jam:lobby/sidebar/append_line with storage jam:temp
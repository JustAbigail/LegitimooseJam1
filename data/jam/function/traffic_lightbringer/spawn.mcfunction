summon slime ~ ~ ~ {DeathLootTable:"",Tags:["light_enemy.root","light_enemy.root.new"],CustomName:"Traffic Lightbringer",CustomNameVisible:false}
summon item_display ~ ~ ~ {teleport_duration:2,item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"code:traffic_lightbringer"}},Tags:["light_enemy.model","light_enemy.model.new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
ride @e[tag=light_enemy.model.new,limit=1] mount @e[tag=light_enemy.root.new,limit=1]
tag @e[tag=light_enemy.model.new] remove light_enemy.model.new 
tag @e[tag=light_enemy.root.new] remove light_enemy.root.new 
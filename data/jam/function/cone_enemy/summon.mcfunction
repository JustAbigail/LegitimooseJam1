summon zombie ~ ~ ~ {equipment:{head:{id:"stone_button",components:{item_model:"air"}}},drop_chances:{head:0},DeathLootTable:"",Tags:["cone_enemy.root","cone_enemy.root.new"],PersistenceRequired:true, CustomName: "Traffic Cone", CustomNameVisible: false}
summon item_display ~ ~ ~ {teleport_duration:2,item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"code:traffic_cone_alive"}},Tags:["cone_enemy.model","cone_enemy.model.new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.15f,0f],scale:[1f,1f,1f]}}
ride @e[tag=cone_enemy.model.new,limit=1] mount @e[tag=cone_enemy.root.new,limit=1]
tag @e[tag=cone_enemy.model.new] remove cone_enemy.model.new 
tag @e[tag=cone_enemy.root.new] remove cone_enemy.root.new 
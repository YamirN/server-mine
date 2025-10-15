execute as @e[type=snowball,tag=!tennis_ball,nbt={Item:{id:"minecraft:snowball",tag:{tennis_ball:1b}}}] run tag @s add tennis_ball
execute as @e[type=snowball,tag=tennis_ball] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["tennis_cloud"]}
execute as @e[type=minecraft:area_effect_cloud,tag=tennis_cloud] at @s unless entity @e[type=minecraft:snowball,tag=tennis_ball,distance=..2] run particle minecraft:firework ~ ~ ~ 0 0.5 0 0.25 40 force
execute as @e[type=minecraft:area_effect_cloud,tag=tennis_cloud] at @s unless entity @e[type=minecraft:snowball,tag=tennis_ball,distance=..2] run particle minecraft:wax_off ~ ~ ~ 0.5 0.25 0.5 20 40 force
execute as @e[type=minecraft:area_effect_cloud,tag=tennis_cloud] at @s unless entity @e[type=minecraft:snowball,tag=tennis_ball,distance=..2] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1.5 1.5
execute as @e[type=minecraft:area_effect_cloud,tag=tennis_cloud] at @s unless entity @e[type=minecraft:snowball,tag=tennis_ball,distance=..2] at @s run effect give @e[type=!player,type=!item,type=!marker,type=!armor_stand,limit=1,distance=..3] minecraft:instant_health 1 2 true
execute as @e[type=minecraft:area_effect_cloud,tag=tennis_cloud] at @s unless entity @e[type=minecraft:snowball,tag=tennis_ball,distance=..2] run summon minecraft:lightning_bolt ~ ~-0.15 ~
#
execute as @e[type=snowball,tag=tennis_ball] at @s run particle minecraft:end_rod ~ ~0.15 ~ 0 0 0 0 1 force
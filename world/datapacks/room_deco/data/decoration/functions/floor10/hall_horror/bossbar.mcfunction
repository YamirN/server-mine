bossbar set minecraft:hall_horror players @a
#execute store result bossbar minecraft:hall_horror max as @e[type=wither_skeleton,name="Hall Horror"] run data get entity @s Attributes[3].Base
execute store result bossbar minecraft:hall_horror value as @e[type=wither_skeleton,name="Hall Horror"] run data get entity @s Health
execute unless entity @e[type=wither_skeleton,name="Hall Horror"] run bossbar set minecraft:hall_horror visible false
execute if entity @e[type=wither_skeleton,name="Hall Horror"] run bossbar set minecraft:hall_horror visible true
execute if entity @e[name="Hall Horror",nbt={HurtTime:10s}] run bossbar set minecraft:hall_horror color white
execute if entity @e[name="Hall Horror",nbt={HurtTime:5s}] run bossbar set minecraft:hall_horror color red
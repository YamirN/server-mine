execute if entity @s run effect give @s minecraft:instant_health 1 1 true
execute if entity @s at @s run particle minecraft:end_rod ~ ~1 ~ 0 1 0 0.0085 50 force
execute if entity @s at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 2.5 1
#
scoreboard players set distance raycast_time 601
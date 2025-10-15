scoreboard players set @s shock_cooldown 300
#
execute at @s run particle minecraft:wax_off ~ ~1 ~ 0 0 0 20 200
execute at @s run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1.5
#
execute at @s as @e[tag=small_entity,distance=..8] run effect give @s minecraft:slowness 2 5 true
execute at @s as @e[tag=small_entity,distance=..8] run effect give @s minecraft:wither 1 4 true
execute at @s as @e[tag=small_entity,distance=..8] at @s run particle minecraft:wax_off ~ ~1 ~ 0 2 0 1 100
#
execute at @s as @e[tag=large_entity,distance=..8] run effect give @s minecraft:slowness 2 2 true
execute at @s as @e[tag=large_entity,distance=..8] run effect give @s minecraft:wither 1 4 true
execute at @s as @e[tag=large_entity,distance=..8] at @s run particle minecraft:wax_off ~ ~1 ~ 0 2 0 1 100
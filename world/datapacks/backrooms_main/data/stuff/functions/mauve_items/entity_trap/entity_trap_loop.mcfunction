execute as @e[type=marker,name="entity_trap"] run scoreboard players add @s[scores={generic_timer=..200}] generic_timer 1
#
execute as @e[type=marker,name="entity_trap",scores={generic_timer=..200}] at @s run particle minecraft:ambient_entity_effect ~ ~-0.25 ~ 0 1 0 1 0
#
execute as @e[type=marker,name="entity_trap",scores={generic_timer=200}] at @s run particle minecraft:crit ~ ~-0.25 ~ 0 0 0 0.25 100
execute as @e[type=marker,name="entity_trap",scores={generic_timer=200}] at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 2.5 0
#
execute as @e[type=marker,name="entity_trap",scores={generic_timer=201}] at @s run particle minecraft:ambient_entity_effect ~ ~-0.25 ~ 0 0 0 0 0 force
#
execute as @e[type=marker,name="entity_trap",scores={generic_timer=201}] at @s run effect give @e[team=small_entity,limit=1,distance=..1.5] minecraft:instant_health 1 5 true
execute as @e[type=marker,name="entity_trap",scores={generic_timer=201}] at @s if entity @e[team=small_entity,limit=1,distance=..1.5] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 2
execute as @e[type=marker,name="entity_trap",scores={generic_timer=201}] at @s if entity @e[team=small_entity,limit=1,distance=..1.5] run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.075 500
execute as @e[type=marker,name="entity_trap",scores={generic_timer=201}] at @s if entity @e[team=small_entity,limit=1,distance=..1.5] run kill @s
#
execute as @e[type=marker,name="entity_trap",scores={generic_timer=201}] at @s run effect give @e[team=large_entity,limit=1,distance=..1.5] minecraft:instant_health 1 5 true
execute as @e[type=marker,name="entity_trap",scores={generic_timer=201}] at @s if entity @e[team=large_entity,limit=1,distance=..1.5] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 2
execute as @e[type=marker,name="entity_trap",scores={generic_timer=201}] at @s if entity @e[team=large_entity,limit=1,distance=..1.5] run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.075 500
execute as @e[type=marker,name="entity_trap",scores={generic_timer=201}] at @s if entity @e[team=large_entity,limit=1,distance=..1.5] run kill @s
#
execute as @e[type=marker,name="entity_trap"] run scoreboard players add @s generic_timer2 1
execute as @e[type=marker,name="entity_trap",scores={generic_timer2=3600..}] at @s run kill @s
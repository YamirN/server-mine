execute as @e[type=snowball,tag=!entity_trap,nbt={Item:{id:"minecraft:snowball",tag:{entity_trap:1b}}}] run tag @s add entity_trap
execute as @e[type=snowball,tag=entity_trap] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["trap_cloud"]}
execute as @e[type=area_effect_cloud,tag=trap_cloud] at @s unless entity @e[type=snowball,tag=entity_trap,distance=..3] run particle minecraft:dust_color_transition 0.15 0.15 0.15 2 0.5 0 0 ~ ~1 ~ 0 1 0 0 250 force
execute as @e[type=area_effect_cloud,tag=trap_cloud] at @s unless entity @e[type=snowball,tag=entity_trap,distance=..3] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 2.5 0.5
execute as @e[type=minecraft:area_effect_cloud,tag=trap_cloud] at @s unless entity @e[type=snowball,tag=entity_trap,distance=..3] at @s run summon marker ~ ~ ~ {Tags:["bullet","new_trap"],CustomName:'{"text":"entity_trap"}'}
#
execute as @e[type=marker,name="entity_trap",tag=new_trap] run scoreboard players set @s generic_timer 0
execute as @e[type=marker,name="entity_trap",tag=new_trap] run tag @s remove new_trap
#
function stuff:mauve_items/entity_trap/entity_trap_loop
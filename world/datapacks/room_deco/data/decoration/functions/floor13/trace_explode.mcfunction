execute as @e[type=marker,name="trace_explode_marker"] at @s run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force
execute as @e[type=marker,name="trace_explode_marker",limit=5,sort=random] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 2
execute as @e[type=marker,name="trace_explode_marker"] at @s run effect give @a[distance=..2] minecraft:instant_damage 1 0 true
execute as @e[type=marker,name="trace_explode_marker"] run kill @s
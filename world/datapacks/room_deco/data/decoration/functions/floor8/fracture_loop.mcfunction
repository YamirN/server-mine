execute if score $number selected_floor matches 8 if entity @a[tag=in_backrooms] run scoreboard players add time fracture_timer 1
execute if score time fracture_timer >= limit fracture_timer run function decoration:floor8/start_fracture
#
execute as @e[type=marker,tag=fracture_marker] at @s if block ~ ~ ~ #stuff:projectile_pass run tp @s ~ ~-0.25 ~
execute as @e[type=marker,tag=fracture_marker] at @s if block ~ ~ ~ minecraft:red_sandstone run scoreboard players add @s generic_timer 1
execute as @e[type=marker,tag=fracture_marker,scores={generic_timer=1..}] at @s run particle minecraft:block red_sandstone ~ ~0.25 ~ 1 0.25 1 1 10
execute as @e[type=marker,tag=fracture_marker,scores={generic_timer=1}] at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.5 1.25
execute as @e[type=marker,tag=fracture_marker,scores={generic_timer=30}] at @s run fill ~-1 ~1 ~-1 ~1 ~-1 ~1 lava replace minecraft:red_sandstone
execute as @e[type=marker,tag=fracture_marker,scores={generic_timer=30}] at @s run particle block red_sandstone ~ ~0.25 ~ 2 0.25 2 2 100
execute as @e[type=marker,tag=fracture_marker,scores={generic_timer=30}] at @s run particle block red_sand ~ ~0.25 ~ 2 0.25 2 2 100
execute as @e[type=marker,tag=fracture_marker,scores={generic_timer=30}] at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.5 0.75
execute as @e[type=marker,tag=fracture_marker,scores={generic_timer=30..}] run kill @s
#
execute as @e[type=marker,tag=fracture_marker] run scoreboard players add @s generic_timer2 1
execute as @e[type=marker,tag=fracture_marker,scores={generic_timer2=100..}] run kill @s
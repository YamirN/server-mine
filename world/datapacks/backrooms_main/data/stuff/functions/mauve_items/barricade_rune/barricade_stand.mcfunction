#life timer
scoreboard players add @s generic_timer 1
#build wall
execute at @s[scores={generic_timer=1}] run fill ~-1 ~-1 ~1 ~1 ~-1 ~-1 minecraft:tinted_glass replace #stuff:barricade_pass
execute at @s[scores={generic_timer=1}] run fill ~-1 ~ ~1 ~1 ~ ~-1 minecraft:tinted_glass replace #stuff:barricade_pass
execute at @s[scores={generic_timer=11}] run fill ~-1 ~1 ~1 ~1 ~1 ~-1 minecraft:tinted_glass replace #stuff:barricade_pass
execute at @s[scores={generic_timer=11}] run fill ~-1 ~2 ~1 ~1 ~2 ~-1 minecraft:tinted_glass replace #stuff:barricade_pass
execute at @s[scores={generic_timer=21}] run fill ~-1 ~3 ~1 ~1 ~3 ~-1 minecraft:tinted_glass replace #stuff:barricade_pass
execute at @s[scores={generic_timer=21}] run fill ~-1 ~4 ~1 ~1 ~4 ~-1 minecraft:tinted_glass replace #stuff:barricade_pass
#particles
execute at @s run particle minecraft:smoke ~ ~2 ~ 1.25 2 1.25 0 2
#life time expire
execute at @s[scores={generic_timer=200}] run fill ~-1 ~-1 ~1 ~1 ~-1 ~-1 minecraft:air replace minecraft:tinted_glass
execute at @s[scores={generic_timer=200}] run fill ~-1 ~ ~1 ~1 ~ ~-1 minecraft:air replace minecraft:tinted_glass
execute at @s[scores={generic_timer=200}] run fill ~-1 ~1 ~1 ~1 ~1 ~-1 minecraft:air replace minecraft:tinted_glass
execute at @s[scores={generic_timer=200}] run fill ~-1 ~2 ~1 ~1 ~2 ~-1 minecraft:air replace minecraft:tinted_glass
execute at @s[scores={generic_timer=200}] run fill ~-1 ~3 ~1 ~1 ~3 ~-1 minecraft:air replace minecraft:tinted_glass
execute at @s[scores={generic_timer=200}] run fill ~-1 ~4 ~1 ~1 ~4 ~-1 minecraft:air replace minecraft:tinted_glass
execute at @s[scores={generic_timer=200}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0
execute at @s[scores={generic_timer=200}] run particle block tinted_glass ~ ~2 ~ 1 2 1 1 250
execute as @s[scores={generic_timer=200..}] run kill @s
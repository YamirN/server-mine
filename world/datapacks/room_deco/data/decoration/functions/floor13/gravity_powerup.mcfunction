effect give @s minecraft:jump_boost 40 6 false
effect give @s minecraft:speed 40 1 false
execute at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 2 1.5
execute at @s run particle minecraft:firework ~ ~1 ~ 0 0 0 0.25 100 force
kill @e[tag=powerup,distance=..2]
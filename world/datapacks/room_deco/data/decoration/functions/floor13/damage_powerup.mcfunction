effect give @s minecraft:strength 30 1 false
execute at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 2 1.5
execute at @s run particle minecraft:firework ~ ~1 ~ 0 0 0 0.25 100 force
kill @e[tag=powerup,distance=..2]
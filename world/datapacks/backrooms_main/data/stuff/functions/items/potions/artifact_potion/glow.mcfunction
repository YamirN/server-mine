effect give @e[team=artifact_glow] minecraft:glowing 5 0 true
execute at @s run playsound minecraft:custom.artifact_glow master @a ~ ~ ~ 2 0.75
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 25 force
execute at @s run function stuff:items/potions/artifact_potion/ring
tag @s remove artifact_potion
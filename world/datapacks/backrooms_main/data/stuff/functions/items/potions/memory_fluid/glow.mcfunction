effect give @e[tag=large_entity] minecraft:glowing 11 0 true
effect give @e[tag=small_entity] minecraft:glowing 11 0 true
execute at @s run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 2 0.5
tag @s remove memory_fluid
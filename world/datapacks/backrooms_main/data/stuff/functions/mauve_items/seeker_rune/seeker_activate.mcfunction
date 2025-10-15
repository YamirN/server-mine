scoreboard players set @s seeker_cooldown 1200
#
execute at @s run particle minecraft:sculk_charge 0 ~ ~1 ~ 0 0 0 0.15 200
execute at @s run playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 1 1.25
#
execute at @s at @e[name=mimic_marker,distance=..20] run summon magma_cube ~ ~ ~ {Silent:1b,Glowing:1b,DeathLootTable:"nothing",PersistenceRequired:1b,NoAI:1b,Health:10f,Tags:["mimic_glow","bullet","small_entity"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:199999980,ShowParticles:0b},{Id:20b,Amplifier:2b,Duration:1999999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:10}]}
execute at @s run effect give @e[team=small_entity,distance=..20] glowing 4 0 true
execute at @s run effect give @e[team=large_entity,distance=..20] glowing 4 0 true
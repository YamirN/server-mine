execute as @e[type=zombie,name="Entity 1337"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 1337",scores={generic_timer=640}] at @s run playsound minecraft:entity.vex.charge master @a ~ ~ ~ 3 0
execute as @e[type=zombie,name="Entity 1337",scores={generic_timer=640..}] run scoreboard players set @s generic_timer 0
execute as @e[type=zombie,name="Entity 1337"] run effect clear @s minecraft:slowness
#
execute as @e[type=zombie,name="Entity 1337"] at @s run particle minecraft:cloud ~ ~0.5 ~ 0.15 0.25 0.15 0.025 2 force
execute as @e[type=zombie,name="Entity 1337"] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 1337",scores={generic_timer2=20}] at @s run summon area_effect_cloud ~ ~0.5 ~ {Particle:"cloud",NoGravity:1b,ReapplicationDelay:40,Radius:1.5f,RadiusPerTick:-0.00005f,RadiusOnUse:-0.05f,Duration:300,DurationOnUse:0f,Effects:[{Id:2b,Amplifier:10b,Duration:40,ShowParticles:0b},{Id:17b,Amplifier:120b,Duration:120,ShowParticles:0b}]}
execute as @e[type=zombie,name="Entity 1337",scores={generic_timer2=20..}] run scoreboard players set @s generic_timer2 0
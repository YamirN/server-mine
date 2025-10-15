execute as @e[type=skeleton,name="Entity 87"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=skeleton,name="Entity 87",scores={generic_timer=860}] at @s run summon area_effect_cloud ~ ~0.15 ~ {Particle:"soul_fire_flame",ReapplicationDelay:30,Radius:3f,RadiusPerTick:-0.0015f,RadiusOnUse:-0.5f,Duration:900,DurationOnUse:0f,WaitTime:60,Effects:[{Id:9b,Amplifier:0b,Duration:600,ShowParticles:0b},{Id:18b,Amplifier:0b,Duration:600,ShowParticles:0b}]}
execute as @e[type=skeleton,name="Entity 87",scores={generic_timer=860}] at @e[tag=clear_room,limit=1,sort=random] run tp @s ~ ~ ~
execute as @e[type=skeleton,name="Entity 87",scores={generic_timer=860}] at @s run playsound minecraft:entity.stray.ambient master @a ~ ~ ~ 3 0
execute as @e[type=skeleton,name="Entity 87",scores={generic_timer=860..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=skeleton,name="Entity 87"] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.05 1 force
execute as @e[type=skeleton,name="Entity 87"] at @s run particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0 1 force
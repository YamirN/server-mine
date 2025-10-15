execute at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1 0.75
execute at @s run particle block black_concrete ~ ~ ~ 1.25 0.5 1.25 1 250
execute at @s run summon area_effect_cloud ~ 9 ~ {Particle:"sculk_soul",ReapplicationDelay:20,Radius:3f,RadiusPerTick:-0.015f,RadiusOnUse:-0.15f,Duration:200,DurationOnUse:-40f,WaitTime:30,Tags:["bullet"],Effects:[{Id:2,Amplifier:0b,Duration:60,ShowParticles:0b},{Id:7,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:17,Amplifier:0b,Duration:400,ShowParticles:0b}]}
execute at @s run effect give @a[distance=..3] instant_damage 1 0 true
#
tag @s remove leaping
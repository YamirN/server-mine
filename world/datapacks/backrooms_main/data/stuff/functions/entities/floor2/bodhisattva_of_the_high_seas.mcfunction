execute as @e[type=drowned,name="Entity 2781"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=drowned,name="Entity 2781",scores={generic_timer=845}] at @s run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 3 0
execute as @e[type=drowned,name="Entity 2781",scores={generic_timer=845..}] run scoreboard players set @s generic_timer 0
kill @e[type=minecraft:trident,name="2781 Trident",nbt={inGround:1b}]
#
execute as @e[type=drowned,name="Entity 2781"] at @s run particle minecraft:smoke ~ ~0.5 ~ 0.25 0.35 0.25 0.0125 20 force
execute at @e[type=drowned,name="Entity 2781"] run data merge entity @e[type=minecraft:trident,distance=..1.75,limit=1,sort=nearest] {CustomName:'{"text":"2781 Trident"}'}
execute as @e[type=trident,name="2781 Trident",nbt={inGround:0b}] at @s run summon area_effect_cloud ~ ~-0.5 ~ {Particle:"smoke",NoGravity:1b,ReapplicationDelay:20,Radius:1f,RadiusPerTick:-0.0075f,RadiusOnUse:-0.25f,Duration:100,DurationOnUse:0f,WaitTime:0,Effects:[{Id:2b,Amplifier:1b,Duration:60,ShowParticles:0b},{Id:15b,Amplifier:0b,Duration:60,ShowParticles:0b},{Id:18b,Amplifier:0b,Duration:60,ShowParticles:0b}],CustomName:'{"text":"2781 Cloud"}'}
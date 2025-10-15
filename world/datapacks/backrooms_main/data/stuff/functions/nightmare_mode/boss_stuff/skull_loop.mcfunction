execute as @e[type=armor_stand,name=nightmare_skull_proj] run scoreboard players add @s generic_timer 1
#
execute as @e[type=armor_stand,name=nightmare_skull_proj,scores={generic_timer=1},limit=1] at @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 0.65
execute as @e[type=armor_stand,name=nightmare_skull_proj,scores={generic_timer=1}] at @s run particle minecraft:smoke ~ ~1.65 ~ 0 0 0 0.15 50 force
#
execute as @e[type=armor_stand,name=nightmare_skull_proj,scores={generic_timer=1..}] at @s run particle minecraft:smoke ~ ~1.65 ~ 0 0 0 0.015 3 force
#
execute as @e[type=armor_stand,name=nightmare_skull_proj,scores={generic_timer=..18}] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure] feet
execute as @e[type=armor_stand,name=nightmare_skull_proj,tag=skullR,scores={generic_timer=1..}] at @s run tp @s ^-0.15 ^ ^0.5
execute as @e[type=armor_stand,name=nightmare_skull_proj,tag=skullL,scores={generic_timer=1..}] at @s run tp @s ^0.15 ^ ^0.5
execute as @e[type=armor_stand,name=nightmare_skull_proj,tag=center,scores={generic_timer=1..}] at @s run tp @s ^ ^ ^0.65
#
execute as @e[type=armor_stand,name=nightmare_skull_proj] at @s positioned ~ ~ ~ run effect give @p[gamemode=adventure,distance=..1] wither 10 0 true
execute as @e[type=armor_stand,name=nightmare_skull_proj] at @s positioned ~ ~ ~ if entity @p[gamemode=adventure,distance=..1] run particle minecraft:smoke ~ ~1.5 ~ 0 0 0 0.15 50 force
execute as @e[type=armor_stand,name=nightmare_skull_proj] at @s positioned ~ ~ ~ if entity @p[gamemode=adventure,distance=..1] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 2
execute as @e[type=armor_stand,name=nightmare_skull_proj] at @s positioned ~ ~ ~ if entity @p[gamemode=adventure,distance=..1] run kill @s
#
execute as @e[type=armor_stand,name=nightmare_skull_proj] at @s unless block ~ ~1 ~ #stuff:projectile_pass run summon area_effect_cloud ~ ~1.15 ~ {Particle:"large_smoke",ReapplicationDelay:25,Radius:2f,RadiusPerTick:-0.015f,RadiusOnUse:-0.25f,Duration:100,DurationOnUse:-10f,WaitTime:0,Effects:[{Id:7,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:33,Amplifier:0b,Duration:200,ShowParticles:0b}]}
execute as @e[type=armor_stand,name=nightmare_skull_proj] at @s unless block ~ ~1 ~ #stuff:projectile_pass run particle minecraft:smoke ~ ~1.5 ~ 0 0 0 0.15 50 force
execute as @e[type=armor_stand,name=nightmare_skull_proj] at @s unless block ~ ~1 ~ #stuff:projectile_pass run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 2
execute as @e[type=armor_stand,name=nightmare_skull_proj] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
#
execute as @e[type=armor_stand,name=nightmare_skull_proj,scores={generic_timer=120..}] run kill @s
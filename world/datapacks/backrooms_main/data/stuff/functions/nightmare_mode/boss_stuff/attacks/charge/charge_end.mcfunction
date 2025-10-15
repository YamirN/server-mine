data merge entity @e[name=Nightmare,limit=1] {NoAI:0b}
execute as @e[name=Nightmare] run scoreboard players set @s nightmare_charge 0
execute as @e[name=Nightmare] at @s run particle minecraft:large_smoke ~ ~3 ~ 0.5 0.5 0.5 0.15 25
execute as @e[name=Nightmare] at @s run summon area_effect_cloud ~ 9 ~ {Particle:"smoke",ReapplicationDelay:15,Radius:1f,RadiusPerTick:0.05f,RadiusOnUse:-0.5f,Duration:100,DurationOnUse:-5f,WaitTime:1,Effects:[{Id:7,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:33,Amplifier:0b,Duration:300,ShowParticles:0b}]}
execute as @e[name=Nightmare] at @s run playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 1.5 0.75
#
function stuff:nightmare_mode/boss_stuff/attacks/teleport_random_middle
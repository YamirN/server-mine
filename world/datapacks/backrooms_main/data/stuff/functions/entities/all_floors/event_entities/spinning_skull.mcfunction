execute as @e[name="spinning_skull"] at @s run tp @s ~ ~ ~ ~-2 ~
execute as @e[name="spinning_skull"] at @s run particle minecraft:enchant ~ ~2.85 ~ 0 0 0 10 2 force

#
execute as @e[team=spinning_skull] at @s if entity @p[gamemode=adventure,distance=10..] run effect give @s minecraft:glowing 1 0 true
#
execute as @e[name="spinning_skull",sort=random,limit=1] run scoreboard players add @s generic_timer 1
execute as @e[name="spinning_skull",scores={generic_timer=120}] at @s run playsound minecraft:entity.skeleton.hurt master @a ~ ~ ~ 3 0
execute as @e[name="spinning_skull",scores={generic_timer=120..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=wither_skeleton,name="The Reaper"] at @s run particle minecraft:smoke ~ ~1 ~ 1 1 1 0.05 2
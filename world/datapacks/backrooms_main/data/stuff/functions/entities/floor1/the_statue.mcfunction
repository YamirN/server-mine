execute as @e[name="Entity 173"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[name="Entity 173",scores={generic_timer=895}] at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 3 0
execute as @e[name="Entity 173",scores={generic_timer=895..}] run scoreboard players set @s generic_timer 0
#
execute as @a[gamemode=adventure] at @s positioned ^ ^ ^-1 facing entity @e[name="Entity 173"] eyes positioned ^ ^ ^1 if entity @s[distance=..0.8] run effect give @e[name="Entity 173",sort=nearest,limit=2] minecraft:resistance 1 1 true
execute as @e[name="Entity 173",nbt={ActiveEffects:[{Id:11,Amplifier:1b}]}] run data merge entity @s {NoAI:1b}
execute as @e[name="Entity 173",nbt=!{ActiveEffects:[{Id:11,Amplifier:1b}]}] run data merge entity @s {NoAI:0b}
execute as @e[name="Entity 173",nbt={HurtTime:10s}] at @p[gamemode=adventure] at @e[tag=clear_room,limit=1,sort=random,distance=..50] run tp @s ~ ~ ~
execute as @e[name="Entity 173",nbt={HurtTime:10s}] at @s run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1.25 0
#
execute as @a[gamemode=adventure] at @s positioned ^ ^ ^-1 facing entity @e[name="Entity 173"] eyes positioned ^ ^ ^1 unless entity @s[distance=..0.8] run effect clear @e[name="Entity 173",sort=nearest,limit=2] minecraft:resistance
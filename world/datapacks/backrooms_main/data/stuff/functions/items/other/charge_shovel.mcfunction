execute as @a[scores={shovel_timer=..500},nbt={SelectedItem:{id:"minecraft:diamond_shovel",tag:{chargeshovel:1b}}}] run scoreboard players add @s shovel_timer 1
execute as @a unless entity @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel",tag:{chargeshovel:1b}}}] run scoreboard players set @s shovel_timer 0
execute as @a[scores={shovel_timer=0,charge_shovel=1}] run effect clear @s minecraft:speed
#
execute as @a[scores={shovel_timer=100..200}] run effect give @s minecraft:speed 1 0 true
execute as @a[scores={shovel_timer=100}] at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.25
execute as @a[scores={shovel_timer=100}] at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.25 100
#
execute as @a[scores={shovel_timer=200..300}] run effect give @s minecraft:speed 1 1 true
execute as @a[scores={shovel_timer=200}] at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.5
execute as @a[scores={shovel_timer=200}] at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.25 100
#
execute as @a[scores={shovel_timer=300..499}] run effect give @s minecraft:speed 1 2 true
execute as @a[scores={shovel_timer=300}] at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.75
execute as @a[scores={shovel_timer=300}] at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.25 100
#
execute as @a[scores={shovel_timer=500..}] run effect give @s minecraft:speed 1 3 true
execute as @a[scores={shovel_timer=500..}] run effect give @s minecraft:hunger 1 17 true
execute as @a[scores={shovel_timer=500}] at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 2
execute as @a[scores={shovel_timer=500}] at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.5 200
execute as @a[scores={shovel_timer=500..}] at @s positioned ~ ~1 ~ run particle minecraft:dust_color_transition 1 1 1 1 0 0 1 ^ ^ ^0.25 0.5 0.35 0.5 0 3
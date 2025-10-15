execute as @a[tag=intro_scene] unless entity @a[tag=!intro_scene] run scoreboard players add @s intro_timer 1
execute as @a[scores={intro_timer=100..1000}] run gamemode spectator @s
#
execute as @a[scores={intro_timer=1}] run weather rain
execute as @a[scores={intro_timer=1}] run time set 18000
execute as @a[scores={intro_timer=1}] run clear @s
#
execute as @a[scores={intro_timer=100}] run title @s title {"text":"Survive the Backrooms","bold":true,"color":"yellow"}
execute as @a[scores={intro_timer=100}] run setblock -49 5 116 air
#
execute as @a[scores={intro_timer=100}] run summon armor_stand -50.5 5.5 116.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["intro_stand"]}
execute as @a[scores={intro_timer=100..1000}] run spectate @e[tag=intro_stand,sort=nearest,limit=1] @s
execute if entity @a[scores={intro_timer=100}] as @e[type=armor_stand,tag=intro_stand] at @s run tp @s ~ ~ ~ 90 0
execute if entity @a[scores={intro_timer=100..}] as @e[type=armor_stand,tag=intro_stand] at @s run tp @s ~-0.0825 ~ ~ ~ ~
execute if entity @a[scores={intro_timer=250..300}] as @e[type=armor_stand,tag=intro_stand] at @s run tp @s ~ ~ ~ ~-0.75 ~
execute if entity @a[scores={intro_timer=340..390}] as @e[type=armor_stand,tag=intro_stand] at @s run tp @s ~ ~ ~ ~0.75 ~
execute if entity @a[scores={intro_timer=680..700}] as @e[type=armor_stand,tag=intro_stand] at @s run tp @s ~ ~ ~ ~0.75 ~
execute if entity @a[scores={intro_timer=750..790}] as @e[type=armor_stand,tag=intro_stand] at @s run tp @s ~ ~ ~ ~-0.75 ~

#
tellraw @a[scores={intro_timer=200}] {"text":"People enter The Backrooms by no-clipping out of reality. This is often unpredictable as you just saw...","color":"gray"}
execute as @a[scores={intro_timer=200}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0.5
#
tellraw @a[scores={intro_timer=400}] ["",{"text":"The Backrooms consist of a supposedly endless corridor of rooms that are coated with mono-yellow wallpaper, and a constant buzzing sound from the fluorescent","color":"gray"},{"text":" lights always in your ears.","color":"gray"}]
execute as @a[scores={intro_timer=400}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0.5
#
tellraw @a[scores={intro_timer=600}] {"text":"This many randomly segmented, and typically empty rooms is enough to drive anybody mad. And if you somehow hear something roaming around, it may already be too late for you...","color":"gray"}
execute as @a[scores={intro_timer=600}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0.5
#
tellraw @a[scores={intro_timer=800}] {"text":"There are multiple floors in The Backrooms, and some are tamer than others. Now that you are here, you must use anything you can to keep yourself alive...","color":"gray"}
execute as @a[scores={intro_timer=800}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0.5
#
tellraw @a[scores={intro_timer=900}] ["",{"text":"Welcome, to ","color":"gray"},{"text":"Survive the Backrooms","bold":true,"color":"yellow"},{"text":"...","color":"gray"}]
execute as @a[scores={intro_timer=900}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0.5
#
execute as @a[scores={intro_timer=1001}] run tp @s 27.5 20 73.5 0 0
gamemode adventure @a[scores={intro_timer=1001..}]
#
effect give @a[scores={intro_timer=1001..}] minecraft:slow_falling 4 0 true
execute as @a[scores={intro_timer=1001..}] run stopsound @s record
tag @a[scores={intro_timer=1001..}] add in_lobby
scoreboard players set @a[scores={intro_timer=1001..}] music_timer 0
execute if entity @a[scores={intro_timer=1001..}] run setblock 43 4 53 minecraft:redstone_block
execute if entity @a[scores={intro_timer=1001..}] run scoreboard players set $number rooms_selected 100
scoreboard players set @a[scores={intro_timer=1001..}] minutes 0
execute if entity @a[scores={intro_timer=1001..}] run scoreboard players set $number selected_floor 0
execute if entity @a[scores={intro_timer=1001..}] run kill @e[tag=intro_stand]
execute if entity @a[scores={intro_timer=1001..}] run kill @e[type=falling_block]
#
tag @a[scores={intro_timer=1001..}] remove intro_scene
scoreboard players reset @a[scores={intro_timer=1001..}] intro_timer
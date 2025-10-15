#this function runs every 8 ticks
schedule function light:main 8t replace
#
execute as @a[tag=floor12] at @s run function light:get_light
execute as @a[gamemode=creative,tag=!nv,tag=floor12] run title @s actionbar ["",{"text":"Light Level: ","color":"gray"},{"score":{"name":"@s","objective":"light"},"color":"gray"}]
#
execute as @a[gamemode=adventure,tag=floor12,scores={light=8..,sanity_timer=..980}] run scoreboard players add @s sanity_timer 20
execute as @a[gamemode=adventure,tag=floor12,scores={light=..6,sanity_timer=10..}] run scoreboard players remove @s sanity_timer 10
#
execute as @a[gamemode=adventure,tag=floor12,scores={sanity_timer=..600}] run effect give @s minecraft:weakness 3 0 true
execute as @a[gamemode=adventure,tag=floor12,scores={sanity_timer=..400}] run effect give @s minecraft:slowness 3 1 true
execute as @a[gamemode=adventure,tag=floor12,scores={sanity_timer=-50..200}] run effect give @s minecraft:darkness 4 0 true
execute as @a[gamemode=adventure,tag=floor12,scores={sanity_timer=-50..0}] at @s run playsound minecraft:entity.ghast.ambient master @s ~ ~ ~ 0.5 0
execute as @a[gamemode=adventure,tag=floor12,scores={sanity_timer=-50..0}] at @s run particle minecraft:sculk_soul ^ ^ ^2 2 2 2 0.025 5 force @s
execute as @a[tag=dead] at @a[tag=alive,sort=nearest] run tp @s ~ ~ ~
execute as @a[tag=dead] run scoreboard players set @s deaths 0
execute as @a[tag=dead] run gamemode adventure @s
execute as @a[tag=dead] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.15 250
execute as @a[tag=dead] at @s run playsound minecraft:custom.noclip_sound master @a ~ ~ ~ 2 2
execute as @a[tag=dead] at @s run playsound minecraft:custom.the_end master @a ~ ~ ~ 2 2
execute as @a[tag=dead] run effect give @s minecraft:resistance 5 10 true
execute as @a[tag=dead] run tag @s remove dead
execute as @a[tag=alive] run tag @s remove alive
scoreboard players set time revive_timer 0
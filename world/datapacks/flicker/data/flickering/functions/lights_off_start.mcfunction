execute as @a at @s run playsound minecraft:entity.dolphin.ambient_water master @s ~ ~ ~ 0.5 0
execute as @a at @s run playsound minecraft:entity.dolphin.ambient_water master @s ~ ~ ~ 0.5 0
execute as @a at @s run playsound minecraft:entity.dolphin.ambient_water master @s ~ ~ ~ 0.5 0
execute at @a as @e[type=marker,name=remover,sort=nearest,limit=25] at @s run fill ~-6 ~4 ~-6 ~6 ~4 ~6 light[level=0] replace light
schedule function flickering:light_off_end 12s
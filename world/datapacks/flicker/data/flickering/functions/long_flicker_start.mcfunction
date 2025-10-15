execute as @a at @s run playsound minecraft:entity.dolphin.ambient_water master @s ~ ~ ~ 0.5 0.85
execute at @r as @e[type=marker,name=remover,sort=nearest,limit=30] at @s run fill ~-6 ~4 ~-6 ~6 ~4 ~6 light[level=12] replace light
schedule function flickering:long_flicker2 5t
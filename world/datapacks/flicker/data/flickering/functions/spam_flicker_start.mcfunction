execute as @a at @s run playsound minecraft:entity.dolphin.ambient_water master @s ~ ~ ~ 0.5 1.25
execute at @a as @e[type=marker,name=remover,sort=nearest,limit=40] at @s run fill ~-6 ~4 ~-6 ~6 ~4 ~6 light[level=0] replace light
schedule function flickering:spam_flicker_2 4t
execute as @a at @s run playsound minecraft:entity.dolphin.ambient_water master @s ~ ~ ~ 0.5 1
execute as @e[type=marker,name=remover,sort=random,limit=20] at @s run fill ~-6 ~4 ~-6 ~6 ~4 ~6 light[level=5] replace light
schedule function flickering:short_flicker_2 5t
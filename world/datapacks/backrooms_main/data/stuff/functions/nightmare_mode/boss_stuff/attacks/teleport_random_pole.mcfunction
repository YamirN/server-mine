effect give @e[name=Nightmare] slowness 3 10 true
execute as @e[name=Nightmare] at @e[type=marker,tag=nightmare_pole,limit=1,sort=random] run tp @s ~ ~ ~
execute as @e[name=Nightmare] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure] feet
execute as @e[name=Nightmare] at @s run particle minecraft:large_smoke ~ ~2.5 ~ 0 0 0 0.35 35
execute at @e[name=Nightmare] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2 0
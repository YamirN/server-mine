effect give @e[name=Nightmare] slowness 1 10 true
execute as @e[name=Nightmare] at @e[type=marker,tag=nightmare_middle,limit=1,sort=random] run tp @s ~ ~ ~
execute as @e[name=Nightmare] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure] feet
execute at @e[name=Nightmare] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2 0
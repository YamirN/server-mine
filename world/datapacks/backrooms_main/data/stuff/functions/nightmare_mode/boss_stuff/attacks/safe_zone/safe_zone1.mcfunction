execute as @e[type=marker,tag=nightmare_middle,limit=1,sort=random] run tag @s add safe_zone
schedule function stuff:nightmare_mode/boss_stuff/attacks/safe_zone/safe_zone2 250t replace
execute positioned 142.5 19 89.5 run kill @e[tag=bullet,limit=1,sort=nearest]
#
title @a[gamemode=adventure] subtitle {"text":"Get into the Safe Zones!","color":"green"}
title @a[gamemode=adventure] title {"text":""}
#
scoreboard players set @e[name=Nightmare] generic_timer3 40
execute as @e[type=marker,tag=nightmare_middle,limit=1,sort=random] run tag @s add safe_zone
schedule function stuff:nightmare_mode/boss_stuff/attacks/safe_zone/refresh_attack 250t replace
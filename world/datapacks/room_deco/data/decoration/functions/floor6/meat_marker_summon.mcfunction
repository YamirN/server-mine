execute as @a[gamemode=adventure,limit=3,sort=random] at @s unless block ~ ~-0.5 ~ #stuff:projectile_pass if entity @e[name=remover,distance=..30] run summon marker ~ ~ ~ {Tags:["bullet","new_meat"],CustomName:'{"text":"meat_marker"}'}
scoreboard players set timer meat_timer 0
scoreboard players set @e[type=marker,name=meat_marker,tag=new_meat] generic_timer 0
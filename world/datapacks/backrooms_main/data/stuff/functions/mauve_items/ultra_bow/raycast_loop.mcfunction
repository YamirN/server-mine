execute as @e[type=!player,type=!arrow,type=!item,type=!marker,type=!painting,type=!armor_stand,tag=!raycaster,dx=0] positioned ~-.25 ~-.25 ~-.25 if entity @s[dx=0] positioned ~.25 ~.25 ~.25 run function stuff:mauve_items/ultra_bow/raycast_collide
#
scoreboard players add distance raycast_time 1
#
execute if score distance raycast_time matches 20 run particle crit ~ ~ ~ 0 0 0 1 100 normal @a
execute if score distance raycast_time matches ..600 run particle end_rod ~ ~ ~ 0 0 0 0.005 1 force @a
#execute if score distance raycast_time matches ..600 run particle firework ~ ~ ~ ^ ^ ^600000 0.0000004 0 force

execute if score distance raycast_time matches ..600 positioned ^ ^ ^0.1 rotated ~ ~0.0095 if block ~ ~ ~ #stuff:projectile_pass run function stuff:mauve_items/ultra_bow/raycast_loop
execute if score distance raycast_time matches ..600 positioned ^ ^ ^0.1 rotated ~ ~0.0095 unless block ~ ~ ~ #stuff:projectile_pass run particle minecraft:firework ~ ~ ~ 0 0 0 0.25 25 force
execute if score distance raycast_time matches ..600 positioned ^ ^ ^0.1 rotated ~ ~0.0095 unless block ~ ~ ~ #stuff:projectile_pass run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 2
#execute if score distance raycast_time matches ..250 positioned ^ ^ ^0.1 rotated ~ ~0.05 run function stuff:mauve_items/ultra_bow/raycast_loop
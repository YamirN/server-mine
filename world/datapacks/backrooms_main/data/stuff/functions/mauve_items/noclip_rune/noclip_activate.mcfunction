#east
execute as @s[y_rotation=-134.5..-44.5] at @s run tp @s ~ ~ ~ -90 0
#south
execute as @s[y_rotation=-44.4..45.5] at @s run tp @s ~ ~ ~ 0 0
#west
execute as @s[y_rotation=45.6..135.5] at @s run tp @s ~ ~ ~ 90 0
#north
execute as @s[y_rotation=135.6..-134.4] at @s run tp @s ~ ~ ~ 180 0
#if it is invalid
execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #stuff:projectile_pass run tellraw @s {"text":"Not against a wall!","color":"red"}
execute at @s positioned ~ ~-0.5 ~ if block ~ ~ ~ #stuff:projectile_pass run tellraw @s {"text":"Need to be grounded!","color":"red"}
execute at @s unless entity @e[type=marker,name=remover,distance=..30] run tellraw @s {"text":"It seems you cannot clip in this location...","color":"red"}
execute at @s unless block ~ ~-0.5 ~ #stuff:projectile_pass positioned ^ ^ ^0.5 unless block ~ ~ ~ #stuff:projectile_pass positioned ^ ^ ^1 if block ~ ~-1 ~ #stuff:projectile_pass run tellraw @s {"text":"Nothing on other side!","color":"red"}
execute at @s unless block ~ ~-0.5 ~ #stuff:projectile_pass positioned ^ ^ ^0.5 unless block ~ ~ ~ #stuff:projectile_pass positioned ^ ^ ^2 unless block ~ ~ ~ #stuff:projectile_pass run tellraw @s {"text":"Wall is too thick!","color":"red"}
scoreboard players set @s noclip_cooldown 80
#if it is valid
execute at @s if entity @e[type=marker,name=remover,distance=..30] positioned ^ ^ ^0.5 unless block ~ ~ ~ #stuff:projectile_pass positioned ^ ^ ^1 unless block ~ ~-1 ~ #stuff:projectile_pass positioned ^ ^ ^1 if block ~ ~ ~ #stuff:projectile_pass run scoreboard players set @s noclip_cooldown 900
#
execute at @s if entity @e[type=marker,name=remover,distance=..30] positioned ^ ^ ^0.5 unless block ~ ~ ~ #stuff:projectile_pass positioned ^ ^ ^1 unless block ~ ~-1 ~ #stuff:projectile_pass positioned ^ ^ ^1 if block ~ ~ ~ #stuff:projectile_pass run particle minecraft:flash ~ ~1 ~ 3 2 3 0 45
execute at @s if entity @e[type=marker,name=remover,distance=..30] positioned ^ ^ ^0.5 unless block ~ ~ ~ #stuff:projectile_pass positioned ^ ^ ^1 unless block ~ ~-1 ~ #stuff:projectile_pass positioned ^ ^ ^1 if block ~ ~ ~ #stuff:projectile_pass run particle minecraft:effect ^ ^1 ^-1 0.35 0.5 0.35 0 200
execute at @s if entity @e[type=marker,name=remover,distance=..30] positioned ^ ^ ^0.5 unless block ~ ~ ~ #stuff:projectile_pass positioned ^ ^ ^1 unless block ~ ~-1 ~ #stuff:projectile_pass positioned ^ ^ ^1 if block ~ ~ ~ #stuff:projectile_pass run particle minecraft:effect ^ ^1 ^-2.5 0.35 0.5 0.35 0 200
execute at @s if entity @e[type=marker,name=remover,distance=..30] positioned ^ ^ ^0.5 unless block ~ ~ ~ #stuff:projectile_pass positioned ^ ^ ^1 unless block ~ ~-1 ~ #stuff:projectile_pass positioned ^ ^ ^1 if block ~ ~ ~ #stuff:projectile_pass run playsound minecraft:custom.noclip_sound master @a ~ ~ ~ 1.5 1.5
execute at @s if entity @e[type=marker,name=remover,distance=..30] positioned ^ ^ ^0.5 unless block ~ ~ ~ #stuff:projectile_pass positioned ^ ^ ^1 unless block ~ ~-1 ~ #stuff:projectile_pass positioned ^ ^ ^1 if block ~ ~ ~ #stuff:projectile_pass run effect give @s minecraft:nausea 6 0 true
execute at @s if entity @e[type=marker,name=remover,distance=..30] positioned ^ ^ ^0.5 unless block ~ ~ ~ #stuff:projectile_pass positioned ^ ^ ^1 unless block ~ ~-1 ~ #stuff:projectile_pass positioned ^ ^ ^1 if block ~ ~ ~ #stuff:projectile_pass run effect give @s minecraft:glowing 2 0 true
#
execute at @s if entity @e[type=marker,name=remover,distance=..30] positioned ^ ^ ^0.5 unless block ~ ~ ~ #stuff:projectile_pass positioned ^ ^ ^1 unless block ~ ~-1 ~ #stuff:projectile_pass positioned ^ ^ ^1 if block ~ ~ ~ #stuff:projectile_pass positioned ^ ^ ^-0.9 run tp @s ~ ~0.5 ~
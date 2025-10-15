#life timer
scoreboard players add @s generic_timer 1
#move rocket
execute at @s rotated as @p[distance=..2,scores={rocket_cooldown=398..}] run tp @s ~ ~ ~ ~ ~
execute at @s run tp @s ^ ^ ^0.4
execute as @s[tag=rocketR] at @s run tp @s ^0.075 ^ ^
execute as @s[tag=rocketL] at @s run tp @s ^-0.075 ^ ^
#homing
execute at @s if entity @e[distance=..6,team=small_entity] run tp @s ~ ~ ~ facing entity @e[team=small_entity,sort=nearest,limit=1] feet
execute at @s if entity @e[distance=..6,team=large_entity] run tp @s ~ ~ ~ facing entity @e[team=large_entity,sort=nearest,limit=1] feet
#damage and kill rocket
execute at @s run effect give @e[team=small_entity,limit=1,distance=..0.75] minecraft:instant_health 1 1 true
execute at @s run effect give @e[team=large_entity,limit=1,distance=..0.75] minecraft:instant_health 1 1 true
execute at @s if entity @e[team=small_entity,limit=1,distance=..0.75] run kill @s
execute at @s if entity @e[team=large_entity,limit=1,distance=..0.75] run kill @s
#particles
execute at @s if entity @e[distance=..6,team=small_entity] run particle minecraft:dust_color_transition 1 0.15 0 1.75 0.1 0.1 0.1 ~ ~ ~ 0 0 0 0 1
execute at @s if entity @e[distance=..6,team=large_entity] run particle minecraft:dust_color_transition 1 0.15 0 1.75 0.1 0.1 0.1 ~ ~ ~ 0 0 0 0 1
execute at @s unless entity @e[distance=..6,team=small_entity] run particle minecraft:dust_color_transition 0.55 0.55 0.55 1 0.1 0.1 0.1 ~ ~ ~ 0 0 0 0 2
execute at @s unless entity @e[distance=..6,team=large_entity] run particle minecraft:dust_color_transition 0.55 0.55 0.55 1 0.1 0.1 0.1 ~ ~ ~ 0 0 0 0 2
execute at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1
execute at @s run particle minecraft:small_flame ~ ~ ~ 0 0 0 0.015 1
#homing sounds
execute at @s if entity @e[distance=..6,team=small_entity] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 0.25 2
execute at @s if entity @e[distance=..6,team=large_entity] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 0.25 2
#hit block
execute at @s unless block ~ ~ ~ #stuff:projectile_pass run particle minecraft:large_smoke ~ ~ ~ 0.25 0.25 0.25 0.05 15 force
execute at @s unless block ~ ~ ~ #stuff:projectile_pass run playsound minecraft:item.axe.scrape master @a ~ ~ ~ 2 0.75
execute at @s unless block ~ ~ ~ #stuff:projectile_pass run kill @s
#life time expire
execute as @s[scores={generic_timer=80..}] run kill @s
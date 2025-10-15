scoreboard players set @s rocket_cooldown 400
#
execute at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 0.75
#
execute at @s positioned ^ ^ ^0.5 run summon marker ~ ~1.5 ~ {Tags:["bullet"],CustomName:'{"text":"rocket_proj"}'}
execute at @s positioned ^0.5 ^ ^0.5 run summon marker ~ ~1.5 ~ {Tags:["bullet","rocketR"],CustomName:'{"text":"rocket_proj"}'}
execute at @s positioned ^-0.5 ^ ^0.5 run summon marker ~ ~1.5 ~ {Tags:["bullet","rocketL"],CustomName:'{"text":"rocket_proj"}'}
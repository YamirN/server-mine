scoreboard players set @s barricade_cooldown 1500
#
execute at @s run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 0.75
#
execute at @s run tp @s ~ ~ ~ ~ 0
execute at @s positioned ^ ^ ^3 run summon marker ~ ~ ~ {Tags:["bullet"],CustomName:'{"text":"barricade_stand"}'}
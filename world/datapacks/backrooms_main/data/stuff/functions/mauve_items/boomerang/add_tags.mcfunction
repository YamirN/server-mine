tag @s add thrown_boomerang
tag @s add boomerang_out
execute at @s run playsound minecraft:entity.fishing_bobber.throw master @a ~ ~ ~ 0.5 0
execute store result score @s uuid run data get entity @s UUID[0]
scoreboard players set @s boomerang_cooldown 100
tp @a -2466.5 40 -2478.5
tag @a[gamemode=adventure] add boss_fight
execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0
effect give @a minecraft:blindness 4 0 true
effect give @a minecraft:slow_falling 2 0 true
fill -2542 33 -2539 -2536 37 -2539 air
#
setblock ~ ~ ~ air
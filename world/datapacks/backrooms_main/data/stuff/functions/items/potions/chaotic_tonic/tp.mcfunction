tp @s ~ ~ ~
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 2
stopsound @s voice
particle minecraft:witch ~ ~1 ~ 1 1 1 1 100
tag @s remove chaotic_tonic
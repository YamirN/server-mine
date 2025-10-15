title @s times 10 100 200
title @s subtitle {"text":"Created By: Phaic"}
#title @a title {"text":"Survive the Backrooms","bold":true,"color":"yellow"}
spawnpoint @a 27 8 73 180
scoreboard objectives setdisplay sidebar
function stuff:initial_score
tag @s remove in_lobby
tag @s add per_floor_spawning
tag @s remove nv
#
tag @s add intro_scene
#
tp @s -43.5 30 116.5 90 90
#
execute at @s run playsound minecraft:custom.backrooms_ambiance record @s ~ ~ ~ 1 1
#
function stuff:noclip_blocks/backrooms_ceiling
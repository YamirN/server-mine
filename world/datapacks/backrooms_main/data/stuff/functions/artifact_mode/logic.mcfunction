execute as @e[sort=nearest,type=item,nbt={Item:{id:"minecraft:end_crystal"}}] at @s at @p[gamemode=adventure] run tp @s ~ ~ ~
#
execute unless entity @a[tag=final_event] run function stuff:artifact_mode/count_artifacts
#
execute if entity @a[tag=artifact_mode] run function stuff:artifact_mode/win
#
execute as @e[type=marker,name=remover,tag=starting_room] at @s positioned ~ ~2 ~ if entity @p[gamemode=adventure,distance=..6,tag=all_artifact_function] run tag @a add final_event
execute as @e[type=marker,name=remover,tag=starting_room] at @s positioned ~ ~2 ~ if entity @a[tag=all_artifact_function] run particle minecraft:end_rod ~ ~ ~ 3.25 1.5 3.25 0 1 force
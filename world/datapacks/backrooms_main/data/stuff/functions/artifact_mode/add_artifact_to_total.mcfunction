scoreboard players add $number found_artifacts 1
tellraw @a ["",{"text":"---------","bold":true,"strikethrough":true,"color":"dark_purple"},{"text":"\n"},{"text":"+1 Artifact","bold":true,"color":"light_purple"},{"text":"\n"},{"text":"---------","bold":true,"strikethrough":true,"color":"dark_purple"}]
execute at @a run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.25
#
clear @s minecraft:end_crystal 1
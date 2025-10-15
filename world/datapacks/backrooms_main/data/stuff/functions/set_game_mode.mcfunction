tag @a remove artifact_mode
tag @a remove survival_mode
#
execute if score $number game_mode matches 0 run tag @a add artifact_mode
execute if score $number game_mode matches 1 run tag @a add survival_mode
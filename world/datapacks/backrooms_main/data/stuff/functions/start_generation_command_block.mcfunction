function stuff:set_game_mode
#
execute as @a run gamemode adventure @s
spawnpoint @a 27 8 73 180
scoreboard players set @a deaths 0
scoreboard players set @a shovel_timer 0
scoreboard players set @a crouch_time 0
scoreboard players set $number found_artifacts 0
scoreboard players set @a final_event_time 0
tag @a remove all_artifacts
tag @a remove final_event
scoreboard players set @a rightclick 0
#
tellraw @a ["",{"text":"You have ","color":"yellow"},{"text":"Floor ","color":"gold"},{"score":{"name":"$number","objective":"selected_floor"},"color":"gold"},{"text":" currently selected!","color":"yellow"}]
tellraw @a[tag=survival_mode] ["",{"text":"You are playing in: ","color":"yellow"},{"text":"Survival Mode","bold":true,"color":"dark_red"}]
tellraw @a[tag=artifact_mode] ["",{"text":"You are playing in: ","color":"yellow"},{"text":"Artifact Mode","bold":true,"color":"dark_purple"}]
tellraw @a[tag=escape_mode] ["",{"text":"You are playing in: ","color":"yellow"},{"text":"Escape Mode","bold":true,"color":"yellow"}]
tellraw @a[tag=hunt_mode] ["",{"text":"You are playing in: ","color":"yellow"},{"text":"Hunt Mode","bold":true,"color":"gold"}]
#
execute as @a run attribute @s minecraft:generic.max_health base set 20
#
function stuff:update_unlocked_items
function stuff:rune_scores
#
execute store result score @a total_players if entity @a
execute as @a run tellraw @s ["",{"text":"Auto Difficulty: ","color":"gold"},{"score":{"name":"@s","objective":"total_players"},"color":"gold"},{"text":" player(s)","color":"gold"}]
#
tellraw @a {"text":"Generation commencing...","color":"green"}
setblock 7 4 51 minecraft:redstone_block
effect give @a minecraft:resistance 999999 10 true
fill 13 182 15 15 182 15 air destroy
#
kill @e[tag=trophy]
#
execute if score $number nightmare_mode matches 0 run tag @a remove nightmare_mode
execute if score $number nightmare_mode matches 1 run tag @a add nightmare_mode
#
tp @a[gamemode=adventure] 14.5 181 18.5
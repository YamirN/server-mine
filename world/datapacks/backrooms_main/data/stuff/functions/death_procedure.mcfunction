execute as @a[scores={deaths=1..}] run gamemode spectator @s
execute as @a[scores={deaths=1..}] run clear @s
execute as @a[scores={deaths=1..}] run spawnpoint @a 27 8 73 180
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run setblock 9 4 51 minecraft:redstone_block
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove in_backrooms
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run scoreboard players set @s music_timer 0
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run gamemode adventure @s
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run stopsound @s
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run scoreboard players set @s timer 0
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run scoreboard players set @s min_entity_time 0
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run scoreboard players set @s maj_entity_time 0
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run scoreboard players set $number found_artifacts 0
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run scoreboard players set @s final_event_time 0
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tp @s 27.5 8 73.5
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run title @s title {"text":"YOU DIED","bold":true,"color":"#8B0004"}
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s add in_lobby
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove all_artifacts
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove all_artifact_function
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove final_event
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove floor5_pk
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove alley_chase
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove dilemma_curse
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove floor12
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove ikea_tag
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove dead
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove alive
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove fume_timer
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove boss_fight
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove fume_leak
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove hall_horror_music
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove partygoer_music
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tag @s remove tried_to_leave
#
execute as @a[scores={deaths=1..},limit=1] unless entity @a[scores={deaths=0}] run function stuff:update_trophies
#
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tellraw @s ["",{"text":"You have ","color":"yellow"},{"text":"Floor ","color":"gold"},{"score":{"name":"$number","objective":"selected_floor"},"color":"gold"},{"text":" currently selected!","color":"yellow"}]
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run tellraw @s ["",{"text":"Your time survived was ","color":"yellow"},{"text":"","color":"gold"},{"score":{"name":"@s","objective":"minutes"},"color":"gold"},{"text":" minutes!","color":"yellow"}]
#
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run scoreboard players set @s minutes 0
#
execute as @a[scores={deaths=1..}] unless entity @a[scores={deaths=0}] run scoreboard players set @s deaths 0
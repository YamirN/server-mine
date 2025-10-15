execute as @a[tag=final_event] unless entity @a[tag=boss_fight] unless entity @a[tag=nightmare_fight] run scoreboard players add @s final_event_time 1
#
execute as @a[tag=final_event,tag=boss_fight,tag=!tried_to_leave] run tellraw @a {"text":"Must defeat the boss before completing this floor! If nobody is in the boss arena the boss should despawn.","color":"light_purple"}
execute as @a[tag=final_event,tag=boss_fight,tag=!tried_to_leave] run tag @s add tried_to_leave
#
execute as @a[scores={final_event_time=1..}] run scoreboard players set @s min_entity_time 0
execute as @a[scores={final_event_time=1..}] run scoreboard players set @s maj_entity_time 0
#
execute as @a[scores={final_event_time=10}] run tellraw @s ["",{"text":"Faint Whisper: ","color":"gray"},{"text":"So, you collected all the required Artifacts...","italic":true,"color":"gray"}]
execute as @a[scores={final_event_time=11}] at @s run playsound minecraft:entity.vex.ambient master @s ~ ~ ~ 1 0
#
execute if entity @a[scores={final_event_time=10}] run kill @e[type=!player,type=!armor_stand,type=!marker,type=!item_frame,type=!glow_item_frame,type=!painting]
execute if entity @a[scores={final_event_time=11}] run kill @e[type=item]
#
execute if entity @a[scores={final_event_time=40}] run function stuff:update_unlocked_floors
#
execute as @a[scores={final_event_time=100}] if score $number unlocked_floor matches ..12 run tellraw @s ["",{"text":"Faint Whisper: ","color":"gray"},{"text":"You can now select Floor ","italic":true,"color":"gray"},{"score":{"name":"$number","objective":"unlocked_floor"},"italic":true,"color":"gray"},{"text":"...","italic":true,"color":"gray"}]
execute as @a[scores={final_event_time=100}] if score $number unlocked_floor matches 13.. run tellraw @s ["",{"text":"Faint Whisper: ","color":"gray"},{"text":"Well, that is the last floor... ","italic":true,"color":"gray"},{"text":"For now...","italic":true,"color":"dark_red"}]
execute as @a[scores={final_event_time=100}] at @s run playsound minecraft:entity.vex.ambient master @s ~ ~ ~ 1 0
#
execute as @a[scores={final_event_time=200}] run tellraw @s ["",{"text":"Faint Whisper: ","color":"gray"},{"text":"Best of luck... I'll see you here next time... Now perish...","italic":true,"color":"gray"}]
execute as @a[scores={final_event_time=200}] at @s run playsound minecraft:entity.vex.ambient master @s ~ ~ ~ 1 0
#
execute as @a[scores={final_event_time=300},tag=!nightmare_mode] run kill @s
#
#nightmare mode below this
#
execute as @a[scores={final_event_time=300},tag=nightmare_mode] run tellraw @s ["",{"text":"Faint Whisper: ","color":"gray"},{"text":"Wait a second... Something is... different...","italic":true,"color":"gray"}]
execute as @a[scores={final_event_time=300},tag=nightmare_mode] at @s run playsound minecraft:entity.vex.ambient master @s ~ ~ ~ 1 0
#
execute as @a[scores={final_event_time=350},tag=nightmare_mode] run tellraw @s ["",{"text":"Faint Whisper: ","color":"gray"},{"text":"You got here in Nightmare Mode? Heh, nicely done...","italic":true,"color":"gray"}]
execute as @a[scores={final_event_time=350},tag=nightmare_mode] at @s run playsound minecraft:entity.vex.ambient master @s ~ ~ ~ 1 0
#
execute as @a[scores={final_event_time=450},tag=nightmare_mode] run tellraw @s ["",{"text":"Faint Whisper: ","color":"gray"},{"text":"Unfortunately, I cannot let you off so easy then...","italic":true,"color":"gray"}]
execute as @a[scores={final_event_time=450},tag=nightmare_mode] at @s run playsound minecraft:entity.vex.ambient master @s ~ ~ ~ 1 0
#
execute as @a[scores={final_event_time=550},tag=nightmare_mode] run tellraw @s ["",{"text":"Faint Whisper: ","color":"gray"},{"text":"If you really want the trophy, you will have to go through me...","italic":true,"color":"gray"}]
execute as @a[scores={final_event_time=550},tag=nightmare_mode] at @s run playsound minecraft:entity.vex.ambient master @s ~ ~ ~ 1 0
#
execute as @a[scores={final_event_time=650},tag=nightmare_mode] run tellraw @s ["",{"text":"Faint Whisper: ","color":"gray"},{"text":"Let us begin. I bid you the best of luck, ","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"gray"}]
execute as @a[scores={final_event_time=650},tag=nightmare_mode] at @s run playsound minecraft:entity.vex.ambient master @s ~ ~ ~ 1 0
#
execute as @a[scores={final_event_time=720},tag=nightmare_mode] run tp @s 172.5 9 67.5 0 0
execute as @a[scores={final_event_time=720},tag=nightmare_mode] run effect give @s blindness 3 0 true
execute as @a[scores={final_event_time=720},tag=nightmare_mode,limit=1] as @e[name=remover] at @s positioned ~ ~10 ~ run fill ~ ~-7 ~ ~13 ~9 ~13 air
execute as @a[scores={final_event_time=720},tag=nightmare_mode,limit=1] as @e[name=remover] run kill @s
execute as @a[scores={final_event_time=720},tag=nightmare_mode,limit=1] as @e[team=small_entity] run kill @s
execute as @a[scores={final_event_time=720},tag=nightmare_mode,limit=1] as @e[team=large_entity] run kill @s
execute as @a[scores={final_event_time=725},tag=nightmare_mode,limit=1] run clear @s end_crystal
#
execute as @a[scores={final_event_time=800},tag=nightmare_mode] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 0
execute as @a[scores={final_event_time=820},tag=nightmare_mode,limit=1] positioned 172.5 9 67.5 run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1 0
execute as @a[scores={final_event_time=800..900},tag=nightmare_mode,limit=1] positioned 172.5 4 99.5 run particle block black_concrete ~ ~ ~ 1.5 0.25 1.5 1 50
execute as @a[scores={final_event_time=800..900},tag=nightmare_mode,limit=1] positioned 172.5 4 99.5 run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0
#
execute if entity @a[scores={final_event_time=800},tag=nightmare_mode] run scoreboard players set $number nightmare_music 0
execute if entity @a[scores={final_event_time=800},tag=nightmare_mode] run kill @e[type=item]
#
execute as @a[scores={final_event_time=820},tag=nightmare_mode,limit=1] positioned 172.5 4 99.5 run function stuff:nightmare_mode/summon_nightmare
#execute as @a[scores={final_event_time=850},tag=nightmare_mode,limit=1] as @e[name=Nightmare] run effect give @s minecraft:slow_falling 999999 0 true
execute as @a[scores={final_event_time=820..900},tag=nightmare_mode,limit=1] as @e[name=Nightmare] at @s run tp @s ~ ~0.055 ~ facing entity @p[gamemode=adventure]
#
execute as @a[scores={final_event_time=900},tag=nightmare_mode,limit=1] as @e[name=Nightmare] run data merge entity @s {NoAI:0b}
#
execute as @a[scores={final_event_time=900},tag=nightmare_mode] run tellraw @s ["",{"text":"Faint Whisper: ","color":"gray"},{"text":"Here we go.","italic":true,"color":"gray"}]
execute as @a[scores={final_event_time=900},tag=nightmare_mode] at @s run playsound minecraft:entity.vex.ambient master @s ~ ~ ~ 1 0
#
execute as @a[scores={final_event_time=910},tag=nightmare_mode] run tag @s add nightmare_fight
#
execute as @a[scores={final_event_time=960},tag=nightmare_mode] run tellraw @s ["",{"text":"Faint Whisper: ","color":"gray"},{"text":"You have done it.","italic":true,"color":"gray"}]
execute as @a[scores={final_event_time=960},tag=nightmare_mode] at @s run playsound minecraft:entity.vex.ambient master @s ~ ~ ~ 1 0
#
execute as @a[scores={final_event_time=1040},tag=nightmare_mode] run tellraw @s ["",{"text":"Faint Whisper: ","color":"gray"},{"text":"I doubt this will be the last time we meet...","italic":true,"color":"gray"}]
execute as @a[scores={final_event_time=1040},tag=nightmare_mode] at @s run playsound minecraft:entity.vex.ambient master @s ~ ~ ~ 1 0
#
execute as @a[scores={final_event_time=1100},tag=nightmare_mode] run tellraw @s ["",{"text":"Faint Whisper: ","color":"gray"},{"text":"However, in The Backrooms you can never truly win... heh...","italic":true,"color":"gray"}]
execute as @a[scores={final_event_time=1100},tag=nightmare_mode] at @s run playsound minecraft:entity.vex.ambient master @s ~ ~ ~ 1 0
#
execute as @a[scores={final_event_time=1160},tag=nightmare_mode] run tellraw @s ["",{"text":"Faint Whisper: ","color":"gray"},{"text":"Now, be gone with you!","italic":true,"color":"gray"}]
execute as @a[scores={final_event_time=1160},tag=nightmare_mode] at @s run playsound minecraft:entity.vex.ambient master @s ~ ~ ~ 1 0
#
execute as @a[scores={final_event_time=1200}] if score $number selected_floor matches 0..1 run scoreboard players set floor_1 trophy 1
execute as @a[scores={final_event_time=1200}] if score $number selected_floor matches 2 run scoreboard players set floor_2 trophy 1
execute as @a[scores={final_event_time=1200}] if score $number selected_floor matches 3 run scoreboard players set floor_3 trophy 1
execute as @a[scores={final_event_time=1200}] if score $number selected_floor matches 4 run scoreboard players set floor_4 trophy 1
execute as @a[scores={final_event_time=1200}] if score $number selected_floor matches 5 run scoreboard players set floor_5 trophy 1
execute as @a[scores={final_event_time=1200}] if score $number selected_floor matches 6 run scoreboard players set floor_6 trophy 1
execute as @a[scores={final_event_time=1200}] if score $number selected_floor matches 7 run scoreboard players set floor_7 trophy 1
execute as @a[scores={final_event_time=1200}] if score $number selected_floor matches 8 run scoreboard players set floor_8 trophy 1
execute as @a[scores={final_event_time=1200}] if score $number selected_floor matches 9 run scoreboard players set floor_9 trophy 1
execute as @a[scores={final_event_time=1200}] if score $number selected_floor matches 10 run scoreboard players set floor_10 trophy 1
execute as @a[scores={final_event_time=1200}] if score $number selected_floor matches 11 run scoreboard players set floor_11 trophy 1
execute as @a[scores={final_event_time=1200}] if score $number selected_floor matches 12 run scoreboard players set floor_12 trophy 1
execute as @a[scores={final_event_time=1200}] if score $number selected_floor matches 13 run scoreboard players set floor_13 trophy 1
#
execute as @a[scores={final_event_time=1220..}] run kill @s
#kill nightmare
kill @e[tag=nightmare_entity]
#set health
#floor1
execute if score $number selected_floor matches 0..1 run scoreboard players set $current_health nightmare_boss 240
execute if score $number selected_floor matches 0..1 run scoreboard players set $max_health nightmare_boss 240
#floor2
execute if score $number selected_floor matches 2 run scoreboard players set $current_health nightmare_boss 260
execute if score $number selected_floor matches 2 run scoreboard players set $max_health nightmare_boss 260
#floor3
execute if score $number selected_floor matches 3 run scoreboard players set $current_health nightmare_boss 280
execute if score $number selected_floor matches 3 run scoreboard players set $max_health nightmare_boss 280
#floor4
execute if score $number selected_floor matches 4 run scoreboard players set $current_health nightmare_boss 300
execute if score $number selected_floor matches 4 run scoreboard players set $max_health nightmare_boss 300
#floor5
execute if score $number selected_floor matches 5 run scoreboard players set $current_health nightmare_boss 320
execute if score $number selected_floor matches 5 run scoreboard players set $max_health nightmare_boss 320
#floor6
execute if score $number selected_floor matches 6 run scoreboard players set $current_health nightmare_boss 340
execute if score $number selected_floor matches 6 run scoreboard players set $max_health nightmare_boss 340
#floor7
execute if score $number selected_floor matches 7 run scoreboard players set $current_health nightmare_boss 360
execute if score $number selected_floor matches 7 run scoreboard players set $max_health nightmare_boss 360
#floor8
execute if score $number selected_floor matches 8 run scoreboard players set $current_health nightmare_boss 380
execute if score $number selected_floor matches 8 run scoreboard players set $max_health nightmare_boss 380
#floor9
execute if score $number selected_floor matches 9 run scoreboard players set $current_health nightmare_boss 400
execute if score $number selected_floor matches 9 run scoreboard players set $max_health nightmare_boss 400
#floor10
execute if score $number selected_floor matches 10 run scoreboard players set $current_health nightmare_boss 450
execute if score $number selected_floor matches 10 run scoreboard players set $max_health nightmare_boss 450
#floor11
execute if score $number selected_floor matches 11 run scoreboard players set $current_health nightmare_boss 500
execute if score $number selected_floor matches 11 run scoreboard players set $max_health nightmare_boss 500
#floor12
execute if score $number selected_floor matches 12 run scoreboard players set $current_health nightmare_boss 550
execute if score $number selected_floor matches 12 run scoreboard players set $max_health nightmare_boss 550
#floor13
execute if score $number selected_floor matches 13.. run scoreboard players set $current_health nightmare_boss 600
execute if score $number selected_floor matches 13.. run scoreboard players set $max_health nightmare_boss 600
#
#
#hitbox
summon zombie ~ ~1 ~ {NoGravity:1b,Silent:1b,DeathLootTable:"nothing",PersistenceRequired:1b,NoAI:1b,Health:1000f,Tags:["small_entity","nightmare_entity","nightmare_hitbox","small_entity"],CustomName:'{"text":"nightmare_hitbox_r1"}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:199999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000}]}
summon zombie ~ ~1 ~ {NoGravity:1b,Silent:1b,DeathLootTable:"nothing",PersistenceRequired:1b,NoAI:1b,Health:1000f,Tags:["small_entity","nightmare_entity","nightmare_hitbox","small_entity"],CustomName:'{"text":"nightmare_hitbox_r2"}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:199999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000}]}
summon zombie ~ ~1 ~ {NoGravity:1b,Silent:1b,DeathLootTable:"backrooms:chests/credit_chest",PersistenceRequired:1b,NoAI:1b,Health:1000f,Tags:["small_entity","nightmare_entity","nightmare_hitbox","small_entity"],CustomName:'{"text":"nightmare_hitbox_u1"}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:199999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000}]}
summon zombie ~ ~1 ~ {NoGravity:1b,Silent:1b,DeathLootTable:"nothing",PersistenceRequired:1b,NoAI:1b,Health:1000f,Tags:["small_entity","nightmare_entity","nightmare_hitbox","small_entity"],CustomName:'{"text":"nightmare_hitbox_l1"}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:199999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000}]}
summon zombie ~ ~1 ~ {NoGravity:1b,Silent:1b,DeathLootTable:"nothing",PersistenceRequired:1b,NoAI:1b,Health:1000f,Tags:["small_entity","nightmare_entity","nightmare_hitbox","small_entity"],CustomName:'{"text":"nightmare_hitbox_l2"}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:199999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000}]}
#main nightmare
summon zombie ~ ~1 ~ {Silent:1b,DeathLootTable:"backrooms:chests/credit_chest",PersistenceRequired:1b,NoAI:1b,Health:1000f,Tags:["boss","nightmare_entity","new_nightmare","large_entity"],CustomName:'{"text":"Nightmare"}',ArmorItems:[{},{},{},{id:'minecraft:carrot_on_a_stick',Count:1b,tag:{CustomModelData:43}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:199999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000},{Name:generic.follow_range,Base:99},{Name:generic.knockback_resistance,Base:0.8},{Name:generic.movement_speed,Base:0.3125},{Name:generic.attack_damage,Base:5.5},{Name:generic.armor,Base:3}]}
execute as @e[type=zombie,name="Entity 19"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 19",scores={generic_timer=515}] at @s run playsound minecraft:block.grindstone.use master @a ~ ~ ~ 5 0
execute as @e[type=zombie,name="Entity 19",scores={generic_timer=515..}] run scoreboard players set @s generic_timer 0
execute as @e[type=zombie,name="Entity 19"] at @s run particle minecraft:smoke ~ ~0.9 ~ 0 0 0 0 1
#
execute as @e[type=wolf,tag=pot_entity] run scoreboard players add @s generic_timer 1
execute as @e[type=wolf,tag=pot_entity,scores={generic_timer=1000..}] run kill @s
#
execute as @e[type=zombie,name="Entity 19"] at @s if entity @a[gamemode=adventure,distance=..26] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 19",scores={generic_timer2=220}] at @s run summon wolf ~ ~0.75 ~ {PersistenceRequired:1b,Health:40f,AngerTime:199999980,Motion:[0.0,0.65,0.0],Tags:["small_entity","pot_entity"],CustomName:'{"text":"Entity 19A"}',Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:22},{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}
execute at @e[type=zombie,name="Entity 19",scores={generic_timer2=220}] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1.5 0.75
execute at @e[type=zombie,name="Entity 19",scores={generic_timer2=220}] run particle minecraft:small_flame ~ ~1 ~ 0 0 0 0.15 100
execute as @e[type=zombie,name="Entity 19",scores={generic_timer2=220..}] run scoreboard players set @s generic_timer2 0
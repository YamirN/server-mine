execute as @e[type=wither_skeleton,name="Entity 32"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=wither_skeleton,name="Entity 32",scores={generic_timer=530}] at @s run playsound minecraft:entity.zombie.ambient master @a ~ ~ ~ 3.75 0
execute as @e[type=wither_skeleton,name="Entity 32",scores={generic_timer=530}] at @s run playsound minecraft:entity.skeleton.ambient master @a ~ ~ ~ 3.75 0
execute as @e[type=wither_skeleton,name="Entity 32",scores={generic_timer=530}] at @s run playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 3.75 0
execute as @e[type=wither_skeleton,name="Entity 32",scores={generic_timer=530}] at @s run playsound minecraft:entity.pillager.ambient master @a ~ ~ ~ 3.75 0
execute as @e[type=wither_skeleton,name="Entity 32",scores={generic_timer=530}] at @s run playsound minecraft:entity.drowned.ambient master @a ~ ~ ~ 3.75 0
execute as @e[type=wither_skeleton,name="Entity 32",scores={generic_timer=530}] at @s run playsound minecraft:entity.enderman.ambient master @a ~ ~ ~ 3.75 0
execute as @e[type=wither_skeleton,name="Entity 32",scores={generic_timer=530..}] run scoreboard players set @s generic_timer 0
execute as @e[type=minecraft:wither_skeleton,name="Entity 32"] at @s if entity @p[gamemode=adventure,distance=..15] run effect give @s minecraft:slowness 1 10 true
execute at @e[type=wither_skeleton,name="Entity 32"] run particle minecraft:warped_spore ~ ~2 ~ 0.025 0.025 0.025 0 1
#
execute as @e[type=wither_skeleton,name="Entity 32"] at @s if entity @a[gamemode=adventure,distance=..30] run scoreboard players add @s generic_timer2 1
execute as @e[type=minecraft:wither_skeleton,name="Entity 32",scores={generic_timer2=60}] at @s run summon zombie ^ ^1 ^2 {DeathLootTable:"backrooms:chests/nothing",PersistenceRequired:1b,Tags:["world_entity","small_entity"],CustomName:'{"text":"Entity 32A"}'}
execute as @e[type=minecraft:wither_skeleton,name="Entity 32",scores={generic_timer2=120}] at @s run summon skeleton ^ ^1 ^2 {DeathLootTable:"backrooms:chests/nothing",PersistenceRequired:1b,CustomName:'{"text":"Entity 32B"}',HandItems:[{id:"minecraft:bow",Count:1b},{}],Tags:["world_entity","small_entity"],HandDropChances:[-327.000F,0.085F]}
execute as @e[type=minecraft:wither_skeleton,name="Entity 32",scores={generic_timer2=180}] at @s run summon spider ^ ^1 ^2 {DeathLootTable:"backrooms:chests/nothing",PersistenceRequired:1b,Tags:["world_entity","small_entity"],CustomName:'{"text":"Entity 32C"}'}
execute as @e[type=minecraft:wither_skeleton,name="Entity 32",scores={generic_timer2=240}] at @s run summon cave_spider ^ ^1 ^2 {DeathLootTable:"backrooms:chests/nothing",PersistenceRequired:1b,Tags:["world_entity","small_entity"],CustomName:'{"text":"Entity 32D"}'}
execute as @e[type=minecraft:wither_skeleton,name="Entity 32",scores={generic_timer2=300}] at @s run summon pillager ^ ^1 ^2 {DeathLootTable:"backrooms:chests/nothing",PersistenceRequired:1b,CustomName:'{"text":"Entity 32E"}',HandItems:[{id:"minecraft:crossbow",Count:1b},{}],Tags:["world_entity","small_entity"],HandDropChances:[-327.000F,0.085F]}
execute as @e[type=wither_skeleton,name="Entity 32",scores={generic_timer2=340..}] run scoreboard players set @s generic_timer2 0
#
execute as @e[tag=world_entity] run scoreboard players add @s generic_timer 1
execute as @e[tag=world_entity,scores={generic_timer=340}] run kill @s
#
execute as @e[type=minecraft:wither_skeleton,name="Entity 32",scores={generic_timer2=60}] at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 50
execute as @e[type=minecraft:wither_skeleton,name="Entity 32",scores={generic_timer2=120}] at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 50
execute as @e[type=minecraft:wither_skeleton,name="Entity 32",scores={generic_timer2=180}] at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 50
execute as @e[type=minecraft:wither_skeleton,name="Entity 32",scores={generic_timer2=240}] at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 50
execute as @e[type=minecraft:wither_skeleton,name="Entity 32",scores={generic_timer2=300}] at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 50
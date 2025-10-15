execute as @s[scores={generic_timer=..200}] run scoreboard players add @s generic_timer 1
execute as @s[scores={generic_timer=2}] run tag @s remove new_meat
execute as @s[scores={generic_timer=200}] at @s run particle block nether_wart_block ~ ~ ~ 0 0.25 0 0 10
execute as @s[scores={generic_timer=200}] at @s run playsound minecraft:block.grass.place master @a ~ ~ ~ 2 1
#
execute as @s[scores={generic_timer=201}] at @s run particle minecraft:mycelium ~ ~ ~ 0 0.15 0 0 1
#
execute as @s[scores={generic_timer=201}] at @s if entity @a[gamemode=adventure,distance=..3] run summon zombie ~ ~-0.75 ~ {Silent:1b,DeathLootTable:"nothing",PersistenceRequired:1b,Health:20f,Motion:[0.0,0.65,0.0],Tags:["small_entity"],CustomName:'{"text":"Meat Demon"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7995392}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:9830400}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12845056}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1549526106,-405649984,-1808980118,-1541990674],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWJmZjY1MTcyOTIyYzYwNzdiY2I0NzQyODY4NDliNWRjNDQ0YTVmYTc5ZDNlZDJjZTQxMGVjNGYwMGVkZTYxMyJ9fX0="}]}}}}],ArmorDropChances:[-327.000F,-327.000F,-327.000F,-327.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:199999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.follow_range,Base:50},{Name:generic.attack_damage,Base:2.5},{Name:generic.movement_speed,Base:0.425}]}
execute as @s[scores={generic_timer=201}] at @s if entity @a[gamemode=adventure,distance=..3] run particle block nether_wart_block ~ ~ ~ 0.5 1 0.5 0 75
execute as @s[scores={generic_timer=201}] at @s if entity @a[gamemode=adventure,distance=..3] run playsound minecraft:block.grass.place master @a ~ ~ ~ 2 0.5
execute as @s[scores={generic_timer=201}] at @s if entity @a[gamemode=adventure,distance=..3] run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 1 2
execute as @s[scores={generic_timer=201}] at @s if entity @a[gamemode=adventure,distance=..3] run playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 0.75 0.75
execute as @s[scores={generic_timer=201}] at @s if entity @a[gamemode=adventure,distance=..3] run kill @s
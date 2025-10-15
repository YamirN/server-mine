execute as @e[type=zombie,name="Entity 1471"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 1471",scores={generic_timer=720}] at @s run playsound minecraft:entity.phantom.ambient master @a ~ ~ ~ 3 0
execute as @e[type=zombie,name="Entity 1471",scores={generic_timer=720}] at @s run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:24f,CustomName:'{"text":"Entity 1471 Orb"}',ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;996495624,-711569899,-1568483219,-1515968744],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDVhYTUyZWU4ZGRlZGE1N2FhM2Y2ZjcxMzcyMmFhOGE2YjAzYjZlZjZmMTU2OTMxMTVhM2IxNzM4YTY0YWYifX19"}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:24}]}
execute as @e[type=zombie,name="Entity 1471",scores={generic_timer=720..}] run scoreboard players set @s generic_timer 0
#
execute as @e[type=zombie,name="Entity 1471 Orb"] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=zombie,name="Entity 1471 Orb"] at @s run particle minecraft:dust 0 0 0 1.25 ^ ^1 ^7 0 0 0 0 1
execute as @e[type=zombie,name="Entity 1471 Orb"] at @s run particle minecraft:dust 0 0 0 1.25 ^ ^1 ^-7 0 0 0 0 1
execute as @e[type=zombie,name="Entity 1471 Orb"] at @s run effect give @a[distance=..7] minecraft:slowness 1 1 true
execute as @e[type=zombie,name="Entity 1471 Orb"] at @s if entity @a[gamemode=adventure,distance=..50] run scoreboard players add @s generic_timer 1
execute as @e[type=zombie,name="Entity 1471 Orb",scores={generic_timer=20}] at @s run effect give @a[distance=..7] minecraft:poison 2 0 true
execute as @e[type=zombie,name="Entity 1471 Orb",scores={generic_timer=20..}] run scoreboard players set @s generic_timer 0
execute as @e[type=zombie,name="Entity 1471 Orb"] run scoreboard players add @s generic_timer2 1
execute as @e[type=zombie,name="Entity 1471 Orb",scores={generic_timer2=2400..}] run kill @s
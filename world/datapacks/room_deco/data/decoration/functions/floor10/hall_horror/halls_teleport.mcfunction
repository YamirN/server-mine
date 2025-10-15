setblock ~ ~2 ~ air destroy
execute as @a[gamemode=adventure] run tp @s -4993.5 25 -4999.5 90 0
execute at @a run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0
effect give @a[gamemode=adventure] minecraft:blindness 3 0 true
summon wither_skeleton -5000 25 -5000 {NoGravity:1b,Silent:1b,PersistenceRequired:0b,NoAI:1b,Health:240f,Tags:["boss","new_hall_horror"],CustomName:'{"text":"Hall Horror"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7566195}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:10263708}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11908533}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;423623843,902710230,-1779681523,2046390555],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzM3NDMxZjgwYjBkMWNiYzE0ZjEyNjE2NDVmODYxMjQ5ODAxZTJjNzViYzY0OTU1YjQwZTM5YzliYjUzZTFmIn19fQ=="}]}}}}],ArmorDropChances:[-327.000F,-327.000F,-327.000F,-327.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:199999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:240},{Name:generic.armor,Base:4}],DeathLootTable:"nothing"}
setblock -5007 32 -4995 minecraft:redstone_block
tag @a add boss_fight
stopsound @a record
scoreboard players set @a hall_music_timer 0
tag @a add hall_horror_music
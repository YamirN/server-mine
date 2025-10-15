stopsound @s
summon marker ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"terrace_portal_remover"}'}
tp @s 87.5 31 -23.5
execute at @s run playsound minecraft:custom.terrace_ambiance voice @s ~ ~ ~ 0.5 1
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0
effect give @s blindness 9 0 true
effect give @s slowness 9 1 true
setblock 82 17 -47 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 82 17 -58 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 90 17 -35 barrel[facing=up]{LootTable:"backrooms:chests/weapon_chest"} destroy
kill @e[type=item]
kill @e[tag=partygoer_stand]
summon armor_stand 90.5 17 -98.5 {NoGravity:1b,Invulnerable:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["partygoer_stand"],DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:9543200}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15204173}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15204173}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1521629697,-179482862,-1456308631,1923408342],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTVlOGI4NTAzOGY2NGFmNjEyZWQyZGU5M2ZmNjU5ZmUyMjE2NGI4YWQ2YmNiMGQzYjUyNzY2MWZhNzU3MDhmNiJ9fX0="}]}}}}],CustomName:'{"text":"partygoer_stand"}'}
fill 83 17 -84 87 19 -84 air
tag @s add boss_fight
#
setblock 92 28 -73 purple_stained_glass
#
scoreboard players set @s generic_timer3 0
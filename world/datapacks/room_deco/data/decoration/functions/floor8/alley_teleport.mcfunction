summon marker ~ ~ ~ {CustomName:'{"text":"alley_portal_remover"}'}
tp @s 2500.5 1 2500.5 -180 0
time set 16000
effect give @s blindness 2 0 true
effect give @s slowness 3 3 true
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.75
execute at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.25 250
execute at @s run playsound minecraft:custom.alley_chase voice @s ~ ~ ~ 1 1
#
execute unless entity @e[type=wither_skeleton,name="Friend"] run summon wither_skeleton 2500.5 1 2468.5 {NoGravity:1b,Invulnerable:1b,NoAI:1b,Tags:["small_entity"],CustomName:'{"text":"Friend"}',ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:986895}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-414698433,-1138604475,-1554322879,459744186],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTRjZDBkYTU3ZDkxYzg1YmIxYTYxY2YyNjMyZDY4YTM1NDkzMTJhMzYyYTgxMmMyYzVjNzgzNmUwMWMzNDY4ZiJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,-327.000F,-327.000F]}
#
tag @s add alley_chase
stopsound @s record
#
execute at @s run kill @e[distance=..500,type=item]
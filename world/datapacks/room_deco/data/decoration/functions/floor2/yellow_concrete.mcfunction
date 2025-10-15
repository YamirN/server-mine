execute at @a run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 2
setblock ~ ~ ~1 air
particle minecraft:dust 1 1 0 1.75 ~ ~1 ~1 0.25 0.25 0.25 0 20
loot spawn ~ ~3 ~3 loot backrooms:chests/common_chest
loot spawn ~ ~3 ~3 loot backrooms:chests/common_chest
loot spawn ~ ~3 ~3 loot backrooms:chests/throwables_chest
loot spawn ~ ~3 ~3 loot backrooms:chests/weapon_chest
execute at @a run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0
tellraw @a {"text":"Nice","italic":true,"color":"gray"}
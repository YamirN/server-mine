summon marker ~ ~ ~ {CustomName:'{"text":"abyss_portal_remover"}'}
tp @s 7500 55 7500 0 ~
effect give @s blindness 3 0 true
effect give @s dolphins_grace 45 0 true
effect give @s water_breathing 2 0 true
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.75
execute at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.25 250
#
setblock 7461 16 7510 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 7458 18 7515 barrel[facing=up]{LootTable:"backrooms:chests/minor_entity_loot"} destroy
setblock 7459 17 7526 barrel[facing=up]{LootTable:"backrooms:chests/minor_entity_loot"} destroy
#
setblock 7574 12 7587 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 7571 11 7592 barrel[facing=up]{LootTable:"backrooms:chests/major_entity_loot"} destroy
setblock 7574 12 7577 barrel[facing=up]{LootTable:"backrooms:chests/credit_chest"} destroy
#
setblock 7548 10 7439 barrel[facing=up]{LootTable:"backrooms:chests/credit_chest"} destroy
setblock 7544 11 7437 barrel[facing=up]{LootTable:"backrooms:chests/major_entity_loot"} destroy
setblock 7534 11 7437 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
#
setblock 7573 43 7513 barrel[facing=up]{LootTable:"backrooms:chests/weapon_chest"} destroy
#
scoreboard players set @s abyss_timer 1600
tag @s add boss_fight
stopsound @s record
#
execute at @s run kill @e[distance=..500,type=item]
#
tellraw @s {"text":"Tip: Bubbles created magma blocks will refill your air","italic":true,"color":"gray"}
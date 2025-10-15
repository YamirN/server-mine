tp @s 9853.5 5 10082.5 -90 0
effect give @s blindness 3 0 true
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.75
execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.25 250
execute at @s run playsound minecraft:custom.poolroom_ambience voice @s ~ ~ ~ 0.5 1
tellraw @s {"text":"Reach the gold platform before time runs out...","italic":true,"color":"yellow"}
#
setblock 9866 10 10082 barrel[facing=up]{LootTable:"backrooms:chests/major_entity_loot"} destroy
setblock 9876 20 10071 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 9872 20 10071 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 9868 20 10071 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 9877 10 10054 barrel[facing=up]{LootTable:"backrooms:chests/credit_chest"} destroy
#
title @s times 0 20 20
title @s subtitle {"score":{"name":"@s","objective":"floor5_seconds"},"color":"gray"}
scoreboard players set @s floor5_seconds 71
tag @s add floor5_pk
#
execute at @s run kill @e[distance=..150,type=item]
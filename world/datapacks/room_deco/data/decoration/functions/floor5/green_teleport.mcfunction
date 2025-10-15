execute at @s run summon marker ~ ~ ~ {Tags:["bullet"],CustomName:'{"text":"f5_pk_marker"}'}
tp @s 9987.5 45 10017.5 180 90
effect give @s blindness 3 0 true
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.75
execute at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.25 250
execute at @s run playsound minecraft:custom.poolroom_ambience voice @s ~ ~ ~ 0.5 1
tellraw @s {"text":"Reach the gold platform before time runs out...","italic":true,"color":"yellow"}
#
setblock 10002 45 9994 barrel[facing=up]{LootTable:"backrooms:chests/major_entity_loot"} destroy
setblock 10002 46 9994 barrel[facing=up]{LootTable:"backrooms:chests/credit_chest"} destroy
setblock 9982 34 9982 barrel[facing=up]{LootTable:"backrooms:chests/major_entity_loot"} destroy
setblock 10000 34 9982 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
#
title @s times 0 20 20
title @s subtitle {"score":{"name":"@s","objective":"floor5_seconds"},"color":"gray"}
scoreboard players set @s floor5_seconds 51
tag @s add floor5_pk
#
execute at @s run kill @e[distance=..150,type=item]
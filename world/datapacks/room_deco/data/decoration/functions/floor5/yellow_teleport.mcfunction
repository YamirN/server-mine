execute at @s run summon marker ~ ~ ~ {Tags:["bullet"],CustomName:'{"text":"f5_pk_marker"}'}
tp @s 9898.5 34 9922.5 0 90
effect give @s blindness 3 0 true
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.75
execute at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.25 250
execute at @s run playsound minecraft:custom.poolroom_ambience voice @s ~ ~ ~ 0.5 1
tellraw @s {"text":"Reach the gold platform before time runs out...","italic":true,"color":"yellow"}
#
setblock 9932 29 9965 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 9932 29 9971 barrel[facing=up]{LootTable:"backrooms:chests/minor_entity_loot"} destroy
setblock 9924 29 9968 barrel[facing=up]{LootTable:"backrooms:chests/credit_chest"} destroy
setblock 9870 19 9968 barrel[facing=up]{LootTable:"backrooms:chests/major_entity_loot"} destroy
#
title @s times 0 20 20
title @s subtitle {"score":{"name":"@s","objective":"floor5_seconds"},"color":"gray"}
scoreboard players set @s floor5_seconds 61
tag @s add floor5_pk
#
execute at @s run kill @e[distance=..150,type=item]
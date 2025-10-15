execute at @s run summon marker ~ ~ ~ {Tags:["bullet"],CustomName:'{"text":"f5_pk_marker"}'}
tp @s 10118.5 27 9877.5 90 90
effect give @s blindness 3 0 true
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.75
execute at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.25 250
execute at @s run playsound minecraft:custom.poolroom_ambience voice @s ~ ~ ~ 0.5 1
tellraw @s {"text":"Reach the gold platform before time runs out...","italic":true,"color":"yellow"}
#
setblock 10110 13 9872 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 10066 13 9872 barrel[facing=up]{LootTable:"backrooms:chests/minor_entity_loot"} destroy
setblock 10114 13 9892 barrel[facing=up]{LootTable:"backrooms:chests/credit_chest"} destroy
#
title @s times 0 20 20
title @s subtitle {"score":{"name":"@s","objective":"floor5_seconds"},"color":"gray"}
scoreboard players set @s floor5_seconds 56
tag @s add floor5_pk
#
execute at @s run kill @e[distance=..150,type=item]
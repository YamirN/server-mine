execute at @s run summon marker ~ ~ ~ {Tags:["bullet"],CustomName:'{"text":"checker_marker"}'}
tp @s 7500.5 130 7382.5 0 0
effect give @s blindness 2 0 true
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.75
execute at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.25 250
execute at @s run playsound minecraft:custom.checkers voice @s ~ ~ ~ 1 1
tellraw @s {"text":"Use the Hyper Potion to your advantage...","italic":true,"color":"gray"}
#
setblock 7500 123 7422 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock 7469 89 7447 barrel[facing=up]{LootTable:"backrooms:chests/credit_chest"} destroy
setblock 7542 99 7478 barrel[facing=up]{LootTable:"backrooms:chests/credit_chest"} destroy
setblock 7529 103 7402 barrel[facing=up]{LootTable:"backrooms:chests/major_entity_loot"} destroy
setblock 7500 85 7542 barrel[facing=up]{LootTable:"backrooms:chests/major_entity_loot"} destroy
#
title @s times 0 20 20
title @s subtitle {"score":{"name":"@s","objective":"floor5_seconds"},"color":"gray"}
scoreboard players set @s floor5_seconds 71
tag @s add floor5_pk
#
execute at @s run kill @e[distance=..350,type=item]
time set 16000
give @s potion{display:{Name:'{"text":"Hyper Potion","italic":false}',Lore:['{"text":"A drink exclusive to","color":"gray","italic":false}','{"text":"Floor 9 of The Backrooms.","color":"gray","italic":false}','{"text":"When consumed, you become","color":"gray","italic":false}','{"text":"seperated from your physical","color":"gray","italic":false}','{"text":"self momentarily, slowing","color":"gray","italic":false}','{"text":"and weakening nearby entities","color":"gray","italic":false}','{"text":"and taking reduced damage.","color":"gray","italic":false}','{"text":" "}','{"text":"Hyper Sensitive - 12s","color":"yellow","italic":false}','{"text":" "}']},HideFlags:127,CustomPotionEffects:[{Id:13b,Amplifier:4b,Duration:1,ShowParticles:0b}],CustomPotionColor:10420090} 1

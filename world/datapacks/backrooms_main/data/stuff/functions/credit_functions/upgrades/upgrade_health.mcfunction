execute if entity @s[scores={credits=..0}] run tellraw @s {"text":"You don't have enough credits!","color":"red"}
execute if entity @s[scores={credits=..0}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0
#
execute if entity @s[tag=!max_hp,scores={credits=2..,upgrade_hp=..5}] run scoreboard players add @s upgrade_hp 1
execute if entity @s[tag=!max_hp,scores={credits=2..,upgrade_hp=..5}] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" upgraded their Base Hearts to ","color":"yellow"},{"text":"Level ","color":"green"},{"score":{"name":"@s","objective":"upgrade_hp"},"color":"green"},{"text":"!","color":"yellow"}]
execute if entity @s[tag=!max_hp,scores={credits=2..,upgrade_hp=..5}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.75
execute if entity @s[tag=!max_hp,scores={credits=2..,upgrade_hp=..5}] at @s run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 0 100
execute if entity @s[tag=!max_hp,scores={credits=2..,upgrade_hp=..5}] run scoreboard players remove @s credits 2
execute if entity @s[tag=!max_hp,scores={credits=2..,upgrade_hp=..5}] run tellraw @s ["",{"text":"You have ","color":"dark_aqua"},{"score":{"name":"@s","objective":"credits"},"bold":true,"color":"aqua"},{"text":" credits left","color":"dark_aqua"}]
#
execute if entity @s[scores={upgrade_hp=5}] run tag @s add max_hp
execute if entity @s[scores={upgrade_hp=5}] run tellraw @s {"text":"This upgrade is now at max level! (+5 Base Hearts)","color":"yellow"}
execute if entity @s[scores={upgrade_hp=5}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.5
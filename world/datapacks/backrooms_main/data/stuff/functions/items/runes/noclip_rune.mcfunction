execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_dye",tag:{noclip_rune:1b}}]},scores={crouch_time=1..,noclip_cooldown=0}] run function stuff:mauve_items/noclip_rune/noclip_activate
execute as @a[scores={noclip_cooldown=1..}] run scoreboard players remove @s noclip_cooldown 1
execute as @a[scores={noclip_cooldown=1}] run scoreboard players set @s crouch_time 0
execute as @a[scores={noclip_cooldown=1}] run tellraw @s {"text":"Noclip Rune ready!","color":"green"}
#
execute as @a[scores={noclip_cooldown=0,noclip_rune=1}] at @s run particle minecraft:ambient_entity_effect ~ ~ ~ 0.25 0 0.25 8 1 force @s
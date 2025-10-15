execute as @e[tag=nightmare_entity] run scoreboard players operation @s nightmare_prev_hp = @s nightmare_hp
execute as @e[tag=nightmare_entity] store result score @s nightmare_hp run data get entity @s Health
execute as @e[tag=nightmare_entity] if score @s nightmare_prev_hp > @s nightmare_hp run scoreboard players operation @s nightmare_hp_diff = @s nightmare_prev_hp
execute as @e[tag=nightmare_entity] if score @s nightmare_prev_hp > @s nightmare_hp run scoreboard players operation @s nightmare_hp_diff -= @s nightmare_hp
execute as @e[tag=nightmare_entity] if score @s nightmare_prev_hp > @s nightmare_hp run scoreboard players operation @s nightmare_dmg_taken = @s nightmare_hp_diff
#
execute as @e[tag=nightmare_entity] run scoreboard players operation $highest nightmare_dmg_taken > @s nightmare_dmg_taken
execute as @e[tag=nightmare_entity] if score @s nightmare_dmg_taken = $highest nightmare_dmg_taken run tag @s add damage_dealer
#
execute if entity @e[tag=nightmare_entity,tag=damage_dealer,limit=1,nbt={HurtTime:10s}] run tellraw phaic ["",{"text":"Damage Taken: "},{"score":{"name":"$highest","objective":"nightmare_dmg_taken"}}]
#
execute as @e[tag=nightmare_entity,tag=damage_dealer,limit=1] if score @s nightmare_prev_hp > @s nightmare_hp if score $current_health nightmare_boss matches 1.. run scoreboard players operation $current_health nightmare_boss -= @s nightmare_dmg_taken
execute as @e[tag=nightmare_entity,tag=damage_dealer,limit=1] run scoreboard players set $highest nightmare_dmg_taken 0
execute as @e[tag=nightmare_entity] run tag @s remove damage_dealer
#
execute as @e[tag=nightmare_entity] if score @s nightmare_prev_hp > @s nightmare_hp run scoreboard players set @s nightmare_dmg_taken 0
#
execute as @e[tag=nightmare_entity] run effect give @s instant_damage 1 0 true
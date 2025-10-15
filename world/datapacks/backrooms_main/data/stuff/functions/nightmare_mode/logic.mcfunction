function stuff:nightmare_mode/detect_damage_taken
#
function stuff:nightmare_mode/animations
#
execute if score $current_health nightmare_boss matches ..0 run kill @e[name=Nightmare]
#
execute as @e[name=Nightmare] run scoreboard players add @s generic_timer3 1
execute as @e[name=Nightmare,scores={generic_timer3=300..}] run scoreboard players set @s generic_timer3 0
#
execute as @e[tag=new_nightmare] run function stuff:nightmare_mode/boss_stuff/start
#
function stuff:nightmare_mode/boss_stuff/skull_loop
function stuff:nightmare_mode/boss_stuff/archer_loop
function stuff:nightmare_mode/boss_stuff/choose_attack
#
execute as @e[tag=nightmare_minion] at @s if block ~ ~-1 ~ reinforced_deepslate run kill @s
#
execute as @e[type=marker,tag=nightmare_center] at @s run tp @s ~ ~ ~ ~-3 ~
#
execute as @e[name=Nightmare,tag=leaping] at @s unless block ~ ~-0.5 ~ #stuff:projectile_pass run function stuff:nightmare_mode/boss_stuff/attacks/leap/leap_land
execute as @e[name=Nightmare,tag=leaping] at @s run particle minecraft:sculk_soul ~ ~2 ~ 0.05 0.05 0.05 0.025 5
#
execute as @e[name=Nightmare,scores={nightmare_spin=1..}] run scoreboard players remove @s nightmare_spin 1
execute as @e[name=Nightmare,scores={nightmare_spin=1..}] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure]
execute as @e[name=Nightmare,scores={nightmare_spin=1..}] at @s run particle minecraft:dust_color_transition 0.05 0.05 0.05 4 0 0 0 ~ ~2 ~ 1 1 1 0 3
execute as @e[name=Nightmare,scores={nightmare_spin=1..}] at @e[type=marker,tag=nightmare_center] positioned ^ ^6 ^24 run tp @s ~ ~ ~
#
execute as @e[name=Nightmare,tag=!bite] at @s if block ~ ~-1 ~ reinforced_deepslate at @e[type=marker,tag=nightmare_center] positioned ~ ~0.5 ~ run tp @s ~ ~ ~
#
execute as @e[name=Nightmare,scores={nightmare_charge=1..}] run scoreboard players remove @s nightmare_charge 1
execute as @e[name=Nightmare,scores={nightmare_charge=1..}] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure,distance=18..]
execute as @e[name=Nightmare,scores={nightmare_charge=5..}] at @s run tp @s ^ ^ ^0.8
execute as @e[name=Nightmare,scores={nightmare_charge=1..}] at @s positioned ~ ~2 ~ run particle minecraft:cloud ^ ^ ^-3.5 0.25 0.25 0.25 0.025 5
execute as @e[name=Nightmare,scores={nightmare_charge=1..}] at @s run effect give @a[distance=..3.25] instant_damage 1 0 true
execute as @e[name=Nightmare,scores={nightmare_charge=1..110}] at @s unless block ~ ~1 ~ #stuff:projectile_pass run function stuff:nightmare_mode/boss_stuff/attacks/charge/charge_end
execute as @e[name=Nightmare,scores={nightmare_charge=1}] run function stuff:nightmare_mode/boss_stuff/attacks/charge/charge_end
#
#safe zone
#
execute as @e[tag=nightmare_middle,tag=safe_zone] run scoreboard players add @s generic_timer 1
execute as @e[tag=nightmare_middle,tag=safe_zone] at @s run tp @s ~ ~ ~ ~5 ~
#
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=1..50}] at @s run particle dust 0 0.75 0 1 ^ ^0.25 ^5 0 0 0 0 2 force
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=1..50}] at @s run particle dust 0 0.75 0 1 ^ ^0.25 ^-5 0 0 0 0 2 force
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=1..50}] at @s run particle dust 0 0.75 0 1 ~ ~1 ~ 0 3 0 0 10 force
#
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=50..100}] at @s run particle dust 0.75 0.5 0 1 ^ ^0.25 ^5 0 0 0 0 2 force
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=50..100}] at @s run particle dust 0.75 0.5 0 1 ^ ^0.25 ^-5 0 0 0 0 2 force
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=50..100}] at @s run particle dust 0.75 0.5 0 1 ~ ~1 ~ 0 3 0 0 10 force
#
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=100..}] at @s run particle dust 0.75 0 0 1 ^ ^0.25 ^5 0 0 0 0 2 force
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=100..}] at @s run particle dust 0.75 0 0 1 ^ ^0.25 ^-5 0 0 0 0 2 force
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=100..}] at @s run particle dust 0.75 0 0 1 ~ ~1 ~ 0 3 0 0 10 force
#
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=1}] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2.5 1.5
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=140}] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 0
#
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=140}] at @s run effect give @a[gamemode=adventure,distance=5.25..] instant_damage 1 1 true
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=140}] at @s run effect give @a[gamemode=adventure,distance=5.25..] slowness 4 1 true
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=140}] at @s at @a[gamemode=adventure,distance=5.25..] run particle sculk_soul ~ ~1 ~ 0 0 0 0.05 50
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=140}] at @s as @a[gamemode=adventure,distance=..5.25] at @s run particle happy_villager ~ ~1 ~ 0.5 0.75 0.5 0.05 20 force @s
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=140}] at @s as @a[gamemode=adventure,distance=..5.25] at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0
#
execute as @e[tag=nightmare_middle,tag=safe_zone,scores={generic_timer=140..}] run tag @s remove safe_zone
execute as @e[tag=nightmare_middle,scores={generic_timer=140..}] run scoreboard players set @s generic_timer 0
#
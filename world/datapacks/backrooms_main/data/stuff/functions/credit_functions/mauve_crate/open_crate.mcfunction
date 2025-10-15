scoreboard players remove @s credits 1
setblock -2 11 74 air destroy
scoreboard players set @s crate_timer 120
#set total unlocks
scoreboard players set number total_mauve_unlocks 30
#
execute as @e[type=armor_stand,tag=chest_stand] at @s run tp @s ~ ~ ~ -90 ~
execute as @e[type=armor_stand,tag=chest_stand] at @s run effect give @a[distance=..10] blindness 3 0 true
execute as @e[type=armor_stand,tag=chest_stand] at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.75 0
execute as @e[type=armor_stand,tag=chest_stand] at @s run particle minecraft:witch ~ ~1 ~ 1 1 1 1 250
#
#weapon
#when facing west, stands go from left to right
execute unless entity @a[tag=mauve_ultra_sword] run summon armor_stand 49.5 34 77.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"weapon_random"}'}
execute unless entity @a[tag=mauve_nerton_sword] run summon armor_stand 49.5 34 75.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"weapon_random"}'}
execute unless entity @a[tag=mauve_electric_tennis_ball] run summon armor_stand 49.5 34 73.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"weapon_random"}'}
execute unless entity @a[tag=mauve_halogen_light_bulb] run summon armor_stand 49.5 34 71.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"weapon_random"}'}
execute unless entity @a[tag=mauve_boomerang] run summon armor_stand 49.5 34 69.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"weapon_random"}'}
execute unless entity @a[tag=mauve_ultra_bow] run summon armor_stand 49.5 34 67.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"weapon_random"}'}
execute unless entity @a[tag=mauve_chaos_ball] run summon armor_stand 49.5 34 65.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"weapon_random"}'}
execute unless entity @a[tag=mauve_stabby_dagger] run summon armor_stand 49.5 34 63.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"weapon_random"}'}
execute unless entity @a[tag=mauve_fallen_angel_blade] run summon armor_stand 49.5 34 61.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"weapon_random"}'}
execute unless entity @a[tag=mauve_entity_trap_2000] run summon armor_stand 49.5 34 59.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"weapon_random"}'}
#
#armor
#when facing west, stands go from left to right
execute unless entity @a[tag=mauve_mauve_helmet] run summon armor_stand 57.5 34 77.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"armor_random"}'}
execute unless entity @a[tag=mauve_mauve_chestplate] run summon armor_stand 57.5 34 75.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"armor_random"}'}
execute unless entity @a[tag=mauve_mauve_greaves] run summon armor_stand 57.5 34 73.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"armor_random"}'}
execute unless entity @a[tag=mauve_mauve_sandals] run summon armor_stand 57.5 34 71.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"armor_random"}'}
execute unless entity @a[tag=mauve_lavish_helmet] run summon armor_stand 57.5 34 69.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"armor_random"}'}
execute unless entity @a[tag=mauve_risky_boots] run summon armor_stand 57.5 34 67.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"armor_random"}'}
execute unless entity @a[tag=mauve_kevlar_plate] run summon armor_stand 57.5 34 65.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"armor_random"}'}
execute unless entity @a[tag=mauve_business_slacks] run summon armor_stand 57.5 34 63.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"armor_random"}'}
execute unless entity @a[tag=mauve_rambo_helmet] run summon armor_stand 57.5 34 61.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"armor_random"}'}
execute unless entity @a[tag=mauve_basic_boots] run summon armor_stand 57.5 34 59.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"armor_random"}'}
#
#utility
#when facing west, stands go from left to right
execute unless entity @a[tag=mauve_void_shield] run summon armor_stand 65.5 34 77.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"utility_random"}'}
execute unless entity @a[tag=mauve_memory_fluid] run summon armor_stand 65.5 34 75.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"utility_random"}'}
execute unless entity @a[tag=mauve_artifact_potion] run summon armor_stand 65.5 34 73.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"utility_random"}'}
execute unless entity @a[tag=mauve_shock_rune] run summon armor_stand 65.5 34 71.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"utility_random"}'}
execute unless entity @a[tag=mauve_rocket_rune] run summon armor_stand 65.5 34 69.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"utility_random"}'}
execute unless entity @a[tag=mauve_noclip_rune] run summon armor_stand 65.5 34 67.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"utility_random"}'}
execute unless entity @a[tag=mauve_barricade_rune] run summon armor_stand 65.5 34 65.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"utility_random"}'}
execute unless entity @a[tag=mauve_teleport_rune] run summon armor_stand 65.5 34 63.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"utility_random"}'}
execute unless entity @a[tag=mauve_healing_rune] run summon armor_stand 65.5 34 61.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"utility_random"}'}
execute unless entity @a[tag=mauve_seeker_rune] run summon armor_stand 65.5 34 59.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"utility_random"}'}
#
#reroll
#
summon armor_stand 49.5 40 77.5 {PersistenceRequired:1b,Tags:["mauve_crate_random"],CustomName:'{"text":"mauve_reroll"}'}
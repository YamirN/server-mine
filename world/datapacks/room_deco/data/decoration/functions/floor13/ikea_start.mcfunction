kill @e[tag=ikea_attack_stand]
kill @e[tag=ikea_powerup_stand]
kill @e[tag=bullet]
summon armor_stand -2436.5 51 -2604.5 {NoGravity:1b,Silent:1b,PersistenceRequired:1b,Tags:["ikea_attack_stand","bullet"],CustomName:'{"text":"ikea_attack"}'}
summon armor_stand -2436.5 51 -2602.5 {NoGravity:1b,Silent:1b,PersistenceRequired:1b,Tags:["ikea_attack_stand","bullet"],CustomName:'{"text":"ikea_attack"}'}
summon armor_stand -2436.5 51 -2600.5 {NoGravity:1b,Silent:1b,PersistenceRequired:1b,Tags:["ikea_attack_stand","bullet"],CustomName:'{"text":"ikea_attack"}'}
summon armor_stand -2436.5 51 -2598.5 {NoGravity:1b,Silent:1b,PersistenceRequired:1b,Tags:["ikea_attack_stand","bullet"],CustomName:'{"text":"ikea_attack"}'}
summon armor_stand -2436.5 51 -2596.5 {NoGravity:1b,Silent:1b,PersistenceRequired:1b,Tags:["ikea_attack_stand","bullet"],CustomName:'{"text":"ikea_attack"}'}
summon armor_stand -2436.5 51 -2594.5 {NoGravity:1b,Silent:1b,PersistenceRequired:1b,Tags:["ikea_attack_stand","bullet"],CustomName:'{"text":"ikea_attack"}'}
#
summon armor_stand -2436.5 60 -2598.5 {NoGravity:1b,Silent:1b,PersistenceRequired:1b,Tags:["ikea_powerup_stand","bullet"],CustomName:'{"text":"ikea_powerup"}'}
summon armor_stand -2436.5 60 -2596.5 {NoGravity:1b,Silent:1b,PersistenceRequired:1b,Tags:["ikea_powerup_stand","bullet"],CustomName:'{"text":"ikea_powerup"}'}
summon armor_stand -2436.5 60 -2594.5 {NoGravity:1b,Silent:1b,PersistenceRequired:1b,Tags:["ikea_powerup_stand","bullet"],CustomName:'{"text":"ikea_powerup"}'}
#
summon marker -2530.5 27 -2570.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor1"}'}
summon marker -2507.5 27 -2545.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor1"}'}
summon marker -2483.5 27 -2555.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor1"}'}
summon marker -2498.5 27 -2582.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor1"}'}
summon marker -2470.5 27 -2582.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor1"}'}
summon marker -2459.5 27 -2597.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor1"}'}
summon marker -2439.5 27 -2567.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor1"}'}
#
summon marker -2546.5 33 -2551.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor2"}'}
summon marker -2510.5 33 -2564.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor2"}'}
summon marker -2512.5 33 -2589.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor2"}'}
summon marker -2485.5 33 -2571.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor2"}'}
summon marker -2472.5 33 -2561.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor2"}'}
summon marker -2452.5 33 -2578.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor2"}'}
#
summon marker -2548.5 39 -2565.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor3"}'}
summon marker -2538.5 39 -2596.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor3"}'}
summon marker -2499.5 39 -2580.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor3"}'}
summon marker -2480.5 39 -2547.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor3"}'}
summon marker -2444.5 39 -2585.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor3"}'}
#
summon marker -2545.5 45 -2549.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor4"}'}
summon marker -2527.5 45 -2580.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor4"}'}
summon marker -2488.5 45 -2595.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor4"}'}
summon marker -2482.5 45 -2568.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor4"}'}
summon marker -2448.5 45 -2580.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor4"}'}
summon marker -2444.5 45 -2547.5 {Tags:["bullet","sign_marker"],CustomName:'{"text":"floor4"}'}
#
tp @a[gamemode=adventure] -2538.5 33 -2541.5 180 0
tag @a add ikea_tag
summon zombie -2521.5 33 -2570.5 {Silent:1b,DeathLootTable:"nothing",PersistenceRequired:0b,Health:500f,Tags:["large_entity","boss"],CustomName:'{"text":"IKEA Manager"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2368548},Enchantments:[{id:"minecraft:feather_falling",lvl:10s}]}},{id:'minecraft:leather_leggings',Count:1b,tag:{display:{color:1448304}}},{id:'minecraft:leather_chestplate',Count:1b,tag:{display:{color:16764163}}},{id:'minecraft:player_head',Count:1b,tag:{SkullOwner:{Id:[I;141202572,1734233725,-1527919737,-1702108175],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTk3NmJjY2FhODNiNDhmZGFmNDRhMzA5NzFkN2QyMDc2MTZiODRmOWRkZWNlNzg4OTk2MmJkYWIzZjE0NTkwZSJ9fX0='}]}}}}],ArmorDropChances:[-327.000F,-327.000F,-327.000F,-327.000F],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:1999999980,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:199999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:500},{Name:generic.follow_range,Base:999},{Name:generic.knockback_resistance,Base:0.75},{Name:generic.movement_speed,Base:0.41},{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:4}]}
setblock -2443 51 -2608 redstone_block
setblock -2441 51 -2608 redstone_block
fill -2542 33 -2539 -2536 37 -2539 barrier
##spawn loot
setblock -2545 33 -2557 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock -2482 25 -2536 barrel[facing=up]{LootTable:"backrooms:chests/weapon_chest"} destroy
setblock -2470 28 -2531 barrel[facing=up]{LootTable:"backrooms:chests/weapon_chest"} destroy
setblock -2448 25 -2537 barrel[facing=up]{LootTable:"backrooms:chests/weapon_chest"} destroy
setblock -2472 39 -2585 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock -2476 27 -2555 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock -2521 45 -2603 barrel[facing=up]{LootTable:"backrooms:chests/common_chest"} destroy
setblock -2549 33 -2533 barrel[facing=up]{LootTable:"backrooms:chests/weapon_chest"} destroy
setblock -2478 34 -2584 barrel[facing=up]{LootTable:"backrooms:chests/weapon_chest"} destroy
#
kill @e[type=item]
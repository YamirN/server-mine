execute as @e[name=hyper_warp_marker] run scoreboard players add @s generic_timer 1
execute as @e[name=hyper_warp_marker,scores={generic_timer=240}] at @s run particle minecraft:firework ~ ~1 ~ 0 0 0 0.175 150 force
execute as @e[name=hyper_warp_marker,scores={generic_timer=240}] at @s as @a[tag=hyper_potion] if score @s uuid = @e[name=hyper_warp_marker,limit=1,sort=nearest] uuid run tp @s ~ ~ ~
execute as @e[name=hyper_warp_marker,scores={generic_timer=240}] at @p[tag=hyper_potion] run playsound minecraft:entity.allay.hurt master @a ~ ~ ~ 2 0
execute as @e[name=hyper_warp_marker,scores={generic_timer=240}] at @s run tag @p remove hyper_potion
execute as @e[name=hyper_warp_marker,scores={generic_timer=240..}] run kill @s
#
execute at @e[name=hyper_warp_marker] run particle minecraft:firework ^ ^1.5 ^0.75 0 0 0 0 1 force
execute as @e[name=hyper_warp_marker] at @s run tp @s ~ ~ ~ ~12 ~
#
execute as @a[tag=hyper_potion] at @s run particle firework ~ ~.15 ~ 0 0 0 0 1
execute as @a[tag=hyper_potion] at @s run particle effect ~ ~1 ~ 0.35 0.45 0.35 0 1
#
execute as @a[tag=hyper_potion] at @s run effect give @e[team=small_entity,distance=..7] slowness 2 20 true
execute as @a[tag=hyper_potion] at @s run effect give @e[team=small_entity,distance=..7] weakness 2 20 true
#
execute as @a[tag=hyper_potion] at @s run effect give @e[team=large_entity,distance=..7] slowness 2 20 true
execute as @a[tag=hyper_potion] at @s run effect give @e[team=large_entity,distance=..7] weakness 2 20 true
#
execute as @e[name=hyper_warp_marker,scores={generic_timer=200..}] at @s as @a[tag=hyper_potion] at @s if score @s uuid = @e[name=hyper_warp_marker,limit=1,sort=nearest] uuid run particle minecraft:electric_spark ~ ~1 ~ 0.25 0.25 0.25 1 10 force @s
execute as @e[name=hyper_warp_marker,scores={generic_timer=200}] at @s as @a[tag=hyper_potion] at @s if score @s uuid = @e[name=hyper_warp_marker,limit=1,sort=nearest] uuid run playsound minecraft:entity.allay.ambient_with_item master @a ~ ~ ~ 1 0
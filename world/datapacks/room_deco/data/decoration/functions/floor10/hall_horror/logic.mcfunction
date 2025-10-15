execute at @e[type=wither_skeleton,name="Hall Horror"] if entity @p[gamemode=adventure,distance=..32] run function decoration:floor10/hall_horror/movement
function decoration:floor10/hall_horror/attack_random
#
execute as @e[type=wither_skeleton,name="Hall Horror",tag=new_hall_horror] run function decoration:floor10/hall_horror/boss_start
#
execute as @e[type=wither_skeleton,name="Hall Horror"] at @s if block ~ ~-1 ~ red_wool positioned ~ ~0.1 ~ run particle block red_wool ^ ^ ^-0.15 0.115 0.05 0.115 1 1
execute as @e[type=wither_skeleton,name="Hall Horror"] at @s if block ~ ~-1 ~ stone_bricks positioned ~ ~0.1 ~ run particle block stone_bricks ^ ^ ^-0.15 0.115 0.05 0.115 1 1
#
#projectiles
#
execute as @e[type=marker,name=hh_bullet] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name=hh_bullet,scores={generic_timer=1..5}] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure]
execute as @e[type=marker,name=hh_bullet,scores={generic_timer=1}] at @s run playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 1 1
execute as @e[type=marker,name=hh_bullet,scores={generic_timer=1}] at @s run particle minecraft:dust_color_transition 1 1 1 2 0.5 0.5 0.5 ~ ~ ~ 0 0 0 0 2
execute as @e[type=marker,name=hh_bullet,scores={generic_timer=1..}] at @s run particle minecraft:dust_color_transition 0.5 0.5 0.5 0.75 0.15 0.15 0.15 ~ ~ ~ 0 0 0 0.015 3 force
execute as @e[type=marker,name=hh_bullet,scores={generic_timer=1..}] at @s run tp @s ^ ^ ^0.225 ~ 0
execute as @e[type=marker,name=hh_bullet,scores={generic_timer=1..}] at @s unless block ~ ~ ~ #stuff:projectile_pass run kill @s
execute as @e[type=marker,name=hh_bullet,scores={generic_timer=1..}] at @s positioned ~ ~-0.75 ~ run effect give @p[gamemode=adventure,distance=..0.75] minecraft:instant_damage 1 0 true
execute as @e[type=marker,name=hh_bullet,scores={generic_timer=1..}] at @s positioned ~ ~-0.75 ~ run effect give @p[gamemode=adventure,distance=..0.75] minecraft:slowness 2 1 true
execute as @e[type=marker,name=hh_bullet,scores={generic_timer=1..}] at @s positioned ~ ~-0.75 ~ run effect give @p[gamemode=adventure,distance=..0.75] minecraft:darkness 7 1 true
execute as @e[type=marker,name=hh_bullet,scores={generic_timer=1..}] at @s positioned ~ ~-0.75 ~ if entity @p[gamemode=adventure,distance=..0.75] run kill @s
#
execute as @e[type=marker,name=hh_bullet,scores={generic_timer=100..}] run kill @s
#
#
#
execute as @e[type=marker,name=trip_wire] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name=trip_wire,scores={generic_timer=1},limit=1] at @s run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 1
execute as @e[type=marker,name=trip_wire,scores={generic_timer=1}] at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.25 100
execute as @e[type=marker,name=trip_wire,scores={generic_timer=1..}] at @s run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.05 2 force
execute as @e[type=marker,name=trip_wire,scores={generic_timer=1..}] at @s run effect give @p[distance=..0.5,gamemode=adventure] minecraft:instant_damage 1 0 true
execute as @e[type=marker,name=trip_wire,scores={generic_timer=1..}] at @s run effect give @p[distance=..0.5,gamemode=adventure] minecraft:slowness 1 10 true
execute as @e[type=marker,name=trip_wire,scores={generic_timer=1..}] at @s run effect give @p[distance=..0.5,gamemode=adventure] minecraft:jump_boost 1 160 true
execute as @e[type=marker,name=trip_wire,scores={generic_timer=1..}] at @s if entity @p[distance=..0.5,gamemode=adventure] run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 1 2
execute as @e[type=marker,name=trip_wire,scores={generic_timer=1..}] at @s if entity @p[distance=..0.5,gamemode=adventure] run kill @e[type=marker,name=trip_wire,distance=..2]
execute as @e[type=marker,name=trip_wire,scores={generic_timer=1..}] at @s if entity @p[distance=..0.5,gamemode=adventure] run kill @s
#
execute as @e[type=marker,name=trip_wire,scores={generic_timer=440..}] run kill @s
#
#
#
execute as @e[type=marker,name=hh_bullet2] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name=hh_bullet2,scores={generic_timer=160..180}] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure]
execute as @e[type=marker,name=hh_bullet2,scores={generic_timer=1}] at @s run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 2
execute as @e[type=marker,name=hh_bullet2,scores={generic_timer=1}] at @s run particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 0 5
execute as @e[type=marker,name=hh_bullet2,scores={generic_timer=1..}] at @s run particle minecraft:instant_effect ~ ~ ~ 0 0 0 0 2 force
execute as @e[type=marker,name=hh_bullet2,scores={generic_timer=160}] at @s run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 2.5 2
execute as @e[type=marker,name=hh_bullet2,tag=R,scores={generic_timer=160..}] at @s run tp @s ^0.075 ^ ^0.375 ~ 0
execute as @e[type=marker,name=hh_bullet2,tag=L,scores={generic_timer=160..}] at @s run tp @s ^-0.075 ^ ^0.375 ~ 0
#execute as @e[type=marker,name=hh_bullet2,scores={generic_timer=1..}] at @s unless block ~ ~ ~ #stuff:projectile_pass run kill @s
execute as @e[type=marker,name=hh_bullet2,scores={generic_timer=1..}] at @s positioned ~ ~-0.75 ~ run effect give @p[gamemode=adventure,distance=..0.75] minecraft:instant_damage 1 0 true
execute as @e[type=marker,name=hh_bullet2,scores={generic_timer=1..}] at @s positioned ~ ~-0.75 ~ run effect give @p[gamemode=adventure,distance=..0.75] minecraft:slowness 3 1 true
execute as @e[type=marker,name=hh_bullet2,scores={generic_timer=1..}] at @s positioned ~ ~-0.75 ~ if entity @p[gamemode=adventure,distance=..0.75] run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 1
execute as @e[type=marker,name=hh_bullet2,scores={generic_timer=1..}] at @s positioned ~ ~-0.75 ~ if entity @p[gamemode=adventure,distance=..0.75] run kill @s
#
execute as @e[type=marker,name=hh_bullet2,scores={generic_timer=400..}] run kill @s
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{seismicwave:1b}}},scores={rightclick=1..}] at @s if block ^ ^1 ^1 #stuff:projectile_pass run summon marker ^ ^ ^ {NoGravity:1b,Invulnerable:1b,Small:1b,NoBasePlate:1b,PersistenceRequired:1b,CustomName:'{"text":"seismic_wave"}',Tags:["new_wave","bullet"],Invisible:1b}
execute at @e[type=minecraft:marker,name="seismic_wave",tag=new_wave] as @p rotated as @s run tp @e[type=marker,name="seismic_wave",tag=new_wave] ~ ~ ~ ~ 0
execute as @e[type=minecraft:marker,name="seismic_wave",tag=new_wave] at @s run clear @p minecraft:carrot_on_a_stick{seismicwave:1b} 1
#execute as @e[type=minecraft:marker,name="seismic_wave",tag=new_wave] at @s run scoreboard players set @p rightclick 0
execute as @e[type=marker,tag=new_wave] run tag @s remove new_wave
#
execute as @e[type=minecraft:marker,name="seismic_wave"] at @s run tp @s ^ ^ ^0.5
execute as @e[type=marker,name="seismic_wave"] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name="seismic_wave",scores={generic_timer=16..}] run kill @s
#
execute as @e[type=marker,name="seismic_wave",scores={generic_timer=1}] at @s run playsound minecraft:entity.iron_golem.damage master @a ~ ~ ~ 0.5 0.5
execute as @e[type=marker,name="seismic_wave",scores={generic_timer=1..}] at @s run playsound minecraft:block.stone.hit master @a ~ ~ ~ 0.5 0
execute as @e[type=minecraft:marker,name="seismic_wave"] at @s unless block ~ ~-1 ~ air unless block ~ ~-0.75 ~ air unless block ~ ~-0.5 ~ air unless block ~ ~-0.25 ~ air run summon falling_block ^ ^-0.5 ^ {BlockState:{Name:"minecraft:sand"},Silent:1b,Time:1,DropItem:0b,HurtEntities:0b,Tags:["wave"]}
execute as @e[type=minecraft:marker,name="seismic_wave"] at @s unless block ~ ~-1 ~ air unless block ~ ~-0.75 ~ air unless block ~ ~-0.5 ~ air unless block ~ ~-0.25 ~ air run summon falling_block ^0.5 ^-0.5 ^ {BlockState:{Name:"minecraft:sand"},Silent:1b,Time:1,DropItem:0b,HurtEntities:0b,Tags:["wave"]}
execute as @e[type=minecraft:marker,name="seismic_wave"] at @s unless block ~ ~-1 ~ air unless block ~ ~-0.75 ~ air unless block ~ ~-0.5 ~ air unless block ~ ~-0.25 ~ air run summon falling_block ^-0.5 ^-0.5 ^ {BlockState:{Name:"minecraft:sand"},Silent:1b,Time:1,DropItem:0b,HurtEntities:0b,Tags:["wave"]}
execute as @e[type=minecraft:marker,name="seismic_wave"] at @s run particle minecraft:block sandstone ~ ~ ~ 0.5 0.5 0.5 0.5 20 force
execute as @e[type=minecraft:marker,name="seismic_wave"] at @s unless block ~ ~1 ~ #stuff:projectile_pass run kill @s
#
execute as @e[type=marker,name="seismic_wave"] at @s if entity @e[type=!player,type=!minecraft:falling_block,type=!marker,type=!marker,distance=..1] run playsound minecraft:entity.player.hurt master @a ~ ~ ~ 1 0.75
execute as @e[type=marker,name="seismic_wave"] at @s run effect give @e[type=!player,type=!minecraft:falling_block,type=!marker,type=!item,limit=1,distance=..1] minecraft:instant_health 1 3 true
execute as @e[type=marker,name="seismic_wave"] at @s run effect give @e[type=!player,type=!minecraft:falling_block,type=!marker,limit=1,distance=..1] minecraft:slowness 2 0 true
execute as @e[type=marker,name="seismic_wave"] at @s as @e[type=!player,type=!minecraft:falling_block,type=!marker,type=!marker,limit=1,distance=..1] run data merge entity @s {Motion:[0.0,0.75,0.0]}
execute as @e[type=marker,name="seismic_wave"] at @s if entity @e[type=!player,type=!falling_block,type=!marker,type=!marker,distance=..1] run execute positioned ~ ~ ~ run particle minecraft:damage_indicator ~ ~1 ~ 0 0 0 0.75 8
#
execute as @e[type=minecraft:falling_block] run scoreboard players add @s generic_timer 1
execute as @e[tag=wave,scores={generic_timer=5..}] run kill @s
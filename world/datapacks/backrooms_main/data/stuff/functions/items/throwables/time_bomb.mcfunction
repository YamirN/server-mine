execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{timebomb:1b}}},scores={rightclick=1..}] at @s run summon marker ^ ^0.5 ^1 {NoGravity:1b,Invulnerable:1b,Small:1b,NoBasePlate:1b,PersistenceRequired:1b,CustomName:'{"text":"time_bomb"}',Tags:["new_bomb","bullet"],Invisible:1b}
execute as @e[type=marker,name="time_bomb",tag=new_bomb] at @s run clear @p minecraft:carrot_on_a_stick{timebomb:1b} 1
#execute as @e[type=minecraft:marker,name="time_bomb",tag=new_bomb] at @s run scoreboard players set @p rightclick 0
execute as @e[type=marker,tag=new_bomb] run tag @s remove new_bomb
#
execute as @e[type=marker,name="time_bomb",scores={generic_timer=..49}] at @s if entity @e[type=!player,type=!item,type=!marker,type=!armor_stand,distance=..1] run scoreboard players set @s generic_timer 50
#
execute as @e[type=marker,name="time_bomb"] run scoreboard players add @s generic_timer 1
execute as @e[type=marker,name="time_bomb",scores={generic_timer=70}] at @s run summon creeper ~ ~1 ~ {Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:1f,ExplosionRadius:4b,Fuse:1,ignited:1b,CustomName:'{"text":"Time Bomb"}',Attributes:[{Name:generic.max_health,Base:1}]}
execute as @e[type=marker,name="time_bomb",scores={generic_timer=71..}] run kill @s
#
execute as @e[type=marker,name="time_bomb",scores={generic_timer=1}] at @s run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 5 0
execute as @e[type=minecraft:marker,name="time_bomb"] at @s run particle minecraft:smoke ~ ~1 ~ 0 1 0 0.075 3 force
execute as @e[type=minecraft:marker,name="time_bomb",scores={generic_timer=70}] at @s run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.35 250 force
execute as @e[type=minecraft:marker,name="time_bomb",scores={generic_timer=0..60}] at @s run particle minecraft:dust_color_transition 0 0 0 1 1 0 0 ~ ~1 ~ 0 1 0 0 5 force
execute as @e[type=minecraft:marker,name="time_bomb",scores={generic_timer=60..}] at @s run particle minecraft:electric_spark ~ ~1 ~ 0 1 0 1.5 5 force
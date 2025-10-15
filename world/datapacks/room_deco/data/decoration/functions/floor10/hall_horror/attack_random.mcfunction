execute as @e[name="Hall Horror"] run scoreboard players add @s generic_timer 1
execute as @e[name="Hall Horror",scores={generic_timer=300..}] at @e[type=armor_stand,name=hall_random,sort=random,limit=1] run setblock ~ ~ ~-1 redstone_block
execute as @e[name="Hall Horror",scores={generic_timer=300..}] run scoreboard players set @s generic_timer 0
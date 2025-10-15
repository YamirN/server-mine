scoreboard players add @a join 1
execute as @a[scores={join=-1..}] unless score @s join matches 2 run tag @s add justJoined
scoreboard objectives remove join
scoreboard objectives add join dummy
scoreboard players add @a join 1
execute as @a[tag=justJoined] run function stuff:join_detect/on_join
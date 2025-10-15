execute at @e[tag=clear_room,sort=random,limit=1] run tp @s[tag=in_backrooms] ~ ~ ~
effect give @s blindness 2 0 true
execute at @s run playsound minecraft:entity.illusioner.mirror_move master @s ~ ~ ~ 1 0
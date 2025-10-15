execute as @e[name=Nightmare] at @e[tag=nightmare_pole,sort=random,limit=1] run tp @s ^ ^3 ^-12
execute as @e[name=Nightmare] at @s rotated as @e[tag=nightmare_pole,sort=random,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @e[name=Nightmare] at @s at @e[tag=nightmare_pole,sort=nearest,limit=1] run particle minecraft:large_smoke ~ ~3 ~ 0 1 0 0.5 100 force
execute as @e[name=Nightmare] at @s at @e[tag=nightmare_pole,sort=nearest,limit=1] run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 2 2
#
execute as @e[name=Nightmare] run scoreboard players set @s nightmare_charge 130
#
function stuff:nightmare_mode/bite_animation
#
data merge entity @e[name=Nightmare,limit=1] {NoAI:1b}
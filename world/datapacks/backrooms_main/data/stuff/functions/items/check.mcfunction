execute if score $number lag_reduction matches 0 run function stuff:items/logic
#
#below active regardless of lag reduction
#
#charge_shovel
execute as @a store result score @s charge_shovel run clear @s diamond_shovel{chargeshovel:1b} 0
execute as @a if score @s charge_shovel matches 1.. run function stuff:items/other/charge_shovel
#
#runes
#
#shock_rune
execute as @a store result score @s shock_rune run clear @s cyan_dye{shock_rune:1b} 0
execute as @a if score @s shock_rune matches 1.. run function stuff:items/runes/shock_rune
#teleport_rune
execute as @a store result score @s teleport_rune run clear @s pink_dye{teleport_rune:1b} 0
execute as @a if score @s teleport_rune matches 1.. run function stuff:items/runes/teleport_rune
#healing_rune
execute as @a store result score @s healing_rune run clear @s honeycomb{healing_rune:1b} 0
execute as @a if score @s healing_rune matches 1.. run function stuff:items/runes/healing_rune
#rocket_rune
execute unless entity @e[type=marker,name=rocket_proj] as @a store result score @s rocket_rune run clear @s light_gray_dye{rocket_rune:1b} 0
execute as @a if score @s rocket_rune matches 1.. run function stuff:items/runes/rocket_rune
#barricade_rune
execute unless entity @e[type=marker,name=barricade_stand] as @a store result score @s barricade_rune run clear @s brown_dye{barricade_rune:1b} 0
execute as @a if score @s barricade_rune matches 1.. run function stuff:items/runes/barricade_rune
#noclip_rune
execute as @a store result score @s noclip_rune run clear @s red_dye{noclip_rune:1b} 0
execute as @a if score @s noclip_rune matches 1.. run function stuff:items/runes/noclip_rune
#shock_rune
execute as @a store result score @s seeker_rune run clear @s green_dye{seeker_rune:1b} 0
execute as @a if score @s seeker_rune matches 1.. run function stuff:items/runes/seeker_rune
scoreboard players set @s healing_cooldown 600
#
effect give @s minecraft:regeneration 1 4 true
#
execute at @s run function stuff:mauve_items/healing_rune/heal_ring1
execute at @s run function stuff:mauve_items/healing_rune/heal_ring2
execute at @s run function stuff:mauve_items/healing_rune/heal_ring3
execute at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.75
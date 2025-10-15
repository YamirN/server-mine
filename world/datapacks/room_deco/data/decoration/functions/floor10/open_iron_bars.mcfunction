fill ~3 ~2 ~3 ~7 ~4 ~7 air replace minecraft:iron_bars
execute as @a[distance=..20] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.5 2
setblock ~ ~ ~ air
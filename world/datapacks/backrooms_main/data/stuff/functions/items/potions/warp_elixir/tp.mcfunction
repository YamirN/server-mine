execute at @s at @a[gamemode=adventure,tag=!boss_fight,limit=1,sort=random,distance=2..] if entity @e[type=marker,name=remover,distance=..30] run tp @s ~ ~0.25 ~
execute at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0
execute at @s run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 0
stopsound @s voice
execute at @s run particle minecraft:flame ~ ~1 ~ 0 1 0 0.015 150
execute at @s run function stuff:items/potions/warp_elixir/ring
tag @s remove warp_elixir
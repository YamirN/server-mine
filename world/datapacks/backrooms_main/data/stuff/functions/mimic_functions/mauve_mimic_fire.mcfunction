execute if entity @a[gamemode=adventure,distance=..30] run summon marker ~ ~1 ~ {Tags:["bullet"],CustomName:'{"text":"mauve_projectile"}'}
execute at @s run playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 1 1.25
execute at @s run particle minecraft:dust_color_transition 1 1 1 1 1 0 1 ~ ~ ~ 1 1 1 0 25
scoreboard players set @s generic_timer2 0
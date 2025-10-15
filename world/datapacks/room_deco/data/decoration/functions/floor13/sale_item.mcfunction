effect give @s minecraft:regeneration 10 2 true
effect give @s minecraft:saturation 40 2 true
effect give @s minecraft:speed 10 1 true
effect give @e[name="IKEA Manager"] minecraft:instant_health 1 1 true
effect give @e[name="IKEA Manager"] minecraft:slowness 1 8 true
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute at @s run particle minecraft:firework ~ ~1 ~ 0 0 0 0.25 100 force
kill @e[name=sale_item,distance=..2]
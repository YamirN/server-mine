execute at @s run kill @e[name=boomerang_proj,limit=1,sort=nearest]
execute at @s run playsound minecraft:entity.armor_stand.hit master @s ~ ~ ~ 1 1.5
tag @s remove boomerang_out
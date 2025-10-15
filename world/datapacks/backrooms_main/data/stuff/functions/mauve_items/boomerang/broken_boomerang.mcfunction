execute at @s run kill @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{boomerang:1b}}}]
execute at @s at @e[type=armor_stand,limit=1,sort=nearest,name=boomerang_proj] run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 1.4
execute at @s at @e[type=armor_stand,limit=1,sort=nearest,name=boomerang_proj] run particle item warped_fungus_on_a_stick{CustomModelData:1} ~ ~1 ~ 0 0 0 0.35 100
execute at @s run kill @e[type=armor_stand,limit=1,sort=nearest,name=boomerang_proj]
scoreboard players set @s dmg_boomerang 0
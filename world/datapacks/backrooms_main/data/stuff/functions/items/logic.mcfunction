#
#right-clickables
#
#magic_bullet
execute as @a unless entity @e[type=marker,name=magic_bullet] store result score @s magic_bullet run clear @s carrot_on_a_stick{magicbullet:1b} 0
execute if entity @a[scores={magic_bullet=1..}] run function stuff:items/throwables/magic_bullet
#throwing_knife
execute as @a unless entity @e[type=marker,name=flying_knife] store result score @s throwing_knife run clear @s carrot_on_a_stick{knife:1b} 0
execute if entity @a[scores={throwing_knife=1..}] run function stuff:items/throwables/throwing_knife
#time_bomb
execute as @a unless entity @e[type=marker,name=time_bomb] store result score @s time_bomb run clear @s carrot_on_a_stick{timebomb:1b} 0
execute if entity @a[scores={time_bomb=1..}] run function stuff:items/throwables/time_bomb
#seismic_wave
execute as @a unless entity @e[type=marker,name=seismic_wave] store result score @s seismic_wave run clear @s carrot_on_a_stick{seismicwave:1b} 0
execute if entity @a[scores={seismic_wave=1..}] run function stuff:items/throwables/seismic_wave
#
#snowballs
#
#electrical_tennis_ball
execute as @a unless entity @e[type=area_effect_cloud,tag=tennis_cloud] unless entity @e[type=snowball] store result score @s tennis_ball run clear @s snowball{tennis_ball:1b} 0
execute if entity @a[scores={tennis_ball=1..}] run function stuff:items/throwables/electrical_tennis_ball
#chaos_ball
execute as @a unless entity @e[type=area_effect_cloud,tag=chaos_cloud] unless entity @e[type=snowball] store result score @s chaos_ball run clear @s snowball{chaos_ball:1b} 0
execute if entity @a[scores={chaos_ball=1..}] run function stuff:items/throwables/chaos_ball
#halogen_light_bulb
execute as @a unless entity @e[type=area_effect_cloud,tag=halogen_cloud] unless entity @e[type=snowball] store result score @s halogen_bulb run clear @s snowball{halogen_bulb:1b} 0
execute if entity @a[scores={halogen_bulb=1..}] run function stuff:items/throwables/halogen_light_bulb
#entity_trap_2000
execute as @a unless entity @e[type=area_effect_cloud,tag=trap_cloud] unless entity @e[type=snowball] unless entity @e[type=marker,name=entity_trap] store result score @s entity_trap_2000 run clear @s snowball{entity_trap:1b} 0
execute if entity @a[scores={entity_trap_2000=1..}] run function stuff:items/throwables/entity_trap_2000
#
execute as @a unless entity @e[type=armor_stand,name=boomerang_proj] unless entity @e[type=item,nbt={Item:{tag:{boomerang:1b}}}] store result score @s boomerang run clear @s warped_fungus_on_a_stick{boomerang:1b} 0
execute if entity @a[scores={boomerang=1..}] run function stuff:items/throwables/boomerang
#
execute as @a if score @s rightclick matches 1.. run scoreboard players set @s rightclick 0
execute as @a if score @s rightclick2 matches 1.. run scoreboard players set @s rightclick2 0
#phaic was here
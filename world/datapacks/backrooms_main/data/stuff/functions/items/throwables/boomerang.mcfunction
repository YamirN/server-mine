execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{boomerang:1b}}},scores={rightclick2=1..},tag=!boomerang_out] run function stuff:mauve_items/boomerang/add_tags
execute as @a[tag=thrown_boomerang] at @s positioned ~ ~1.15 ~ run summon armor_stand ^ ^ ^0.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["new_bullet","bullet"],DisabledSlots:4144959,Passengers:[{id:"minecraft:item",PickupDelay:10,Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Boomerang","color":"white","italic":false}',Lore:['{"text":"Well, it is probably better","color":"gray","italic":false}','{"text":"than throwing knives...","color":"gray","italic":false}','{"text":" "}','{"text":"6 Damage","color":"yellow","italic":false}','{"text":" "}']},PersistenceRequired:1b,HideFlags:127,CustomModelData:1,boomerang:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-10,Operation:0,UUID:[I;589450216,-2061024104,-1909537111,271504468],Slot:"mainhand"}]}}}],CustomName:'{"text":"boomerang_proj"}'}
execute as @a[tag=thrown_boomerang] at @e[name="boomerang_proj",tag=new_bullet] rotated as @s run tp @e[name="boomerang_proj",tag=new_bullet] ~ ~ ~ ~ ~
execute as @a[tag=thrown_boomerang] store result score @s dmg_boomerang run data get entity @s SelectedItem.tag.Damage
#
execute as @e[name=boomerang_proj,tag=new_bullet] at @s store result entity @e[type=item,nbt={Item:{tag:{boomerang:1b}}},limit=1,sort=nearest] Item.tag.Damage int 1 run scoreboard players get @p[tag=boomerang_out] dmg_boomerang
#
execute as @a[tag=thrown_boomerang] run item replace entity @s weapon.mainhand with air
execute as @e[name="boomerang_proj",tag=new_bullet] at @s run scoreboard players operation @s uuid = @p uuid
execute as @e[name=boomerang_proj,tag=new_bullet] run tag @s remove new_bullet
execute as @a[tag=thrown_boomerang] run tag @s remove thrown_boomerang
#
function stuff:mauve_items/boomerang/boomerang_loop
#
execute at @e[name=boomerang_proj] run particle minecraft:sweep_attack ~ ~0.15 ~ 0 0 0 0.15 1 force
execute at @e[name=boomerang_proj] run particle minecraft:dust_color_transition 1 1 1 1 1 0.9 0 ~ ~0.25 ~ 0.05 0.05 0.05 0.25 5 force
execute at @e[name=boomerang_proj] run playsound minecraft:entity.cat.hiss master @a ~ ~ ~ 0.0425 2
#
execute as @e[type=item,nbt={Item:{tag:{boomerang:1b}}}] at @p[gamemode=adventure,scores={boomerang=1..}] run tp @s ~ ~ ~
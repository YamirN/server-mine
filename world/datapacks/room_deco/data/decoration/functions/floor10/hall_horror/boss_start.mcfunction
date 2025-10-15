kill @e[type=armor_stand,name="hall_random"]
#
summon armor_stand -4993.5 35 -4992.5 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["bullet"],CustomName:'{"text":"hall_random"}'}
summon armor_stand -4997.5 35 -4992.5 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["bullet"],CustomName:'{"text":"hall_random"}'}
summon armor_stand -5001.5 35 -4992.5 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["bullet"],CustomName:'{"text":"hall_random"}'}
summon armor_stand -4993.5 41 -4992.5 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["bullet"],CustomName:'{"text":"hall_random"}'}
summon armor_stand -4997.5 41 -4992.5 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["bullet"],CustomName:'{"text":"hall_random"}'}
summon armor_stand -5001.5 41 -4992.5 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["bullet"],CustomName:'{"text":"hall_random"}'}
#
execute as @e[type=wither_skeleton,name="Hall Horror",tag=new_hall_horror] run tag @s remove new_hall_horror
setblock ~ ~ ~ air destroy
kill @e[type=item,distance=..2]
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 2 0
playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 2 0
particle minecraft:large_smoke ~ ~0.5 ~ 0.25 0.25 0.25 0.15 100 force
summon slime ~ ~0.05 ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"backrooms:chests/common_chest",Passengers:[{id:"minecraft:zombie",Silent:1b,DeathLootTable:"backrooms:chests/mauve_mimic",Health:84f,Tags:["small_entity"],CustomName:'{"text":"Mauve Mimic"}',ArmorItems:[{},{},{},{id:'minecraft:carrot_on_a_stick',Count:1b,tag:{Unbreakable:1b,CustomModelData:30}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:199999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:84},{Name:generic.follow_range,Base:30},{Name:generic.movement_speed,Base:0.5},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1000}]}],CustomName:'{"text":"mauve_mimic_mount"}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:199999980,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:60},{Name:generic.movement_speed,Base:0.85}]}
kill @s
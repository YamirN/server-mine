bossbar set minecraft:nightmare players @a
execute store result bossbar minecraft:nightmare max run scoreboard players get $max_health nightmare_boss
execute store result bossbar minecraft:nightmare value run scoreboard players get $current_health nightmare_boss
execute unless entity @e[name=Nightmare] run bossbar set minecraft:nightmare visible false
execute if entity @e[name=Nightmare] run bossbar set minecraft:nightmare visible true
execute if entity @e[name="Nightmare",nbt={HurtTime:10s}] run bossbar set minecraft:nightmare color white
execute if entity @e[name="Nightmare",nbt={HurtTime:5s}] run bossbar set minecraft:nightmare color red
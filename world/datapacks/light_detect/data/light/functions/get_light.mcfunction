setblock ~ 250 ~ chest
execute as @p at @s run execute store result score @s light run loot insert ~ 250 ~ loot light:light_level
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:0b}]} run scoreboard players set @s light 0
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:1b}]} run scoreboard players set @s light 1
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:2b}]} run scoreboard players set @s light 2
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:3b}]} run scoreboard players set @s light 3
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:4b}]} run scoreboard players set @s light 4
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:5b}]} run scoreboard players set @s light 5
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:6b}]} run scoreboard players set @s light 6
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:7b}]} run scoreboard players set @s light 7
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:8b}]} run scoreboard players set @s light 8
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:9b}]} run scoreboard players set @s light 9
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:10b}]} run scoreboard players set @s light 10
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:11b}]} run scoreboard players set @s light 11
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:12b}]} run scoreboard players set @s light 12
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:13b}]} run scoreboard players set @s light 13
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:14b}]} run scoreboard players set @s light 14
execute if block ~ 250 ~ chest{Items:[{Slot:0b,id:"minecraft:dirt",Count:15b}]} run scoreboard players set @s light 15
setblock ~ 250 ~ air
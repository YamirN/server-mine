#to set total unlocks go to open_crate function
scoreboard players add number mauve_unlocks 1
execute as @a run tellraw @s ["",{"text":"You currently have ","color":"aqua"},{"score":{"name":"number","objective":"mauve_unlocks"},"color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"number","objective":"total_mauve_unlocks"},"color":"yellow"},{"text":" Mauve unlocks","color":"aqua"}]
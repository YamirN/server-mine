clear @s diamond 1
scoreboard players add @s credits 1
tellraw @s ["",{"text":"---------","bold":true,"strikethrough":true,"color":"dark_aqua"},{"text":"\n"},{"text":"+1 Credit","bold":true,"color":"aqua"},{"text":"\n"},{"text":"Total: ","color":"aqua"},{"score":{"name":"@s","objective":"credits"},"color":"aqua"},{"text":"\n"},{"text":"---------","bold":true,"strikethrough":true,"color":"dark_aqua"}]
execute at @s run playsound minecraft:custom.credit master @s ~ ~ ~ 0.5 1
execute at @s run function stuff:credit_functions/credit_ring1
execute at @s run function stuff:credit_functions/credit_ring2
execute at @s run function stuff:credit_functions/credit_ring3
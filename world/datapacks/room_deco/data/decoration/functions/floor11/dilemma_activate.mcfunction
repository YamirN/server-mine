execute unless entity @a[tag=dilemma_curse] run tag @p[gamemode=adventure] add dilemma_curse
execute as @a[tag=dilemma_curse] run scoreboard players set @s slaughter_timer 1500
setblock ~ ~2 ~ air destroy
tellraw @a ["",{"text":"8888888888888","bold":true,"obfuscated":true,"color":"dark_gray"},{"text":"\n\n","bold":true},{"text":"NOW CONSUME ALL","bold":true,"color":"gray"},{"text":"\n\n","bold":true},{"text":"8888888888888","bold":true,"obfuscated":true,"color":"dark_gray"},{"text":"\n\n","bold":true},{"text":"OR PERISH","bold":true,"color":"gray"},{"text":"\n\n","bold":true},{"text":"8888888888888","bold":true,"obfuscated":true,"color":"dark_gray"}]
execute at @a run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 0
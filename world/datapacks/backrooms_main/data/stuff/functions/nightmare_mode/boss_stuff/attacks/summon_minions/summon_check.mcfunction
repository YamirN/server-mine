execute if entity @e[tag=nightmare_minion] run scoreboard players set @e[name=Nightmare] generic_timer3 180
execute unless entity @e[tag=nightmare_minion,tag=melee] run function stuff:nightmare_mode/boss_stuff/attacks/summon_minions/melee
execute unless entity @e[tag=nightmare_minion,tag=archer] run function stuff:nightmare_mode/boss_stuff/attacks/summon_minions/ranged
effect give @e[name=Nightmare] slowness 3 1 true
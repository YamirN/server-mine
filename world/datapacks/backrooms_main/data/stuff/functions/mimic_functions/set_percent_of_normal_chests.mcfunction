#percent is for the percent of chests that will be NORMAL
#eg if percent is set to 40 then 40% of chests are normal and 60% of them are mimics
execute if entity @a[tag=nightmare_mode] run scoreboard players set percent total_mimics 65
execute if entity @a[tag=!nightmare_mode] run scoreboard players set percent total_mimics 92
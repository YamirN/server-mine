execute unless entity @s[tag=in_backrooms] if entity @a[tag=in_backrooms] run function stuff:join_detect/joined_while_in_backrooms
execute unless entity @s[tag=in_backrooms] if entity @a[tag=in_lobby] run function stuff:join_detect/joined_while_in_lobby
#
tag @s remove justJoined
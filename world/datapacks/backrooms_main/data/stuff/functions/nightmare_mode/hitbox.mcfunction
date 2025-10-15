execute as @e[type=zombie,name=nightmare_hitbox_r1] at @e[type=zombie,name=Nightmare] run tp @s ^0.75 ^ ^ ~ ~
execute as @e[type=zombie,name=nightmare_hitbox_r2] at @e[type=zombie,name=Nightmare] positioned ~ ~2 ~ run tp @s ^0.75 ^ ^ ~ ~
execute as @e[type=zombie,name=nightmare_hitbox_u1] at @e[type=zombie,name=Nightmare] positioned ~ ~2 ~ run tp @s ~ ~ ~ ~ ~
execute as @e[type=zombie,name=nightmare_hitbox_l1] at @e[type=zombie,name=Nightmare] run tp @s ^-0.75 ^ ^ ~ ~
execute as @e[type=zombie,name=nightmare_hitbox_l2] at @e[type=zombie,name=Nightmare] positioned ~ ~2 ~ run tp @s ^-0.75 ^ ^ ~ ~
#
execute as @e[tag=nightmare_hitbox] unless entity @e[type=zombie,name=Nightmare] run kill @s
#
execute as @e[tag=nightmare_entity] if entity @e[name="seismic_wave"] run effect give @s resistance 1 2 true
execute as @e[tag=nightmare_entity] if entity @e[name="magic_bullet"] run effect give @s resistance 1 1 true
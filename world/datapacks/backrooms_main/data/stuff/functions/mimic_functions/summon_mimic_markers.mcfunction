kill @e[type=marker,name=mimic_marker]
#
#north
#
execute at @e[tag=n_tunnel5_chest] run summon marker ~3 ~ ~4 {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=n_tunnel5_chest] run summon marker ~-3 ~ ~-4 {CustomName:'{"text":"mimic_marker"}'}
#
execute at @e[tag=n_tunnel6_chest] run summon marker ~3 ~ ~-3 {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=n_tunnel6_chest] run summon marker ~-3 ~ ~3 {CustomName:'{"text":"mimic_marker"}'}
#
execute at @e[tag=n_tunnel8_chest] run summon marker ~-4 ~ ~4 {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=n_tunnel8_chest] run summon marker ~4 ~ ~-4 {CustomName:'{"text":"mimic_marker"}'}
#
execute at @e[tag=n_end2_chest] run summon marker ~5 ~ ~-4 {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=n_end2_chest] run summon marker ~2 ~ ~-1 {CustomName:'{"text":"mimic_marker"}'}
#
#east
#
execute at @e[tag=e_tunnel5_chest] run summon marker ~-5 ~ ~ {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=e_tunnel5_chest] run summon marker ~5 ~ ~ {CustomName:'{"text":"mimic_marker"}'}
#
execute at @e[tag=e_tunnel6_chest] run summon marker ~ ~ ~3 {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=e_tunnel6_chest] run summon marker ~ ~ ~-3 {CustomName:'{"text":"mimic_marker"}'}
#
execute at @e[tag=e_tunnel8_chest] run summon marker ~4 ~ ~4 {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=e_tunnel8_chest] run summon marker ~-4 ~ ~-4 {CustomName:'{"text":"mimic_marker"}'}
#
execute at @e[tag=e_end2_chest] run summon marker ~3 ~ ~-5 {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=e_end2_chest] run summon marker ~3 ~ ~5 {CustomName:'{"text":"mimic_marker"}'}
#
#south
#
execute at @e[tag=s_tunnel5_chest] run summon marker ~ ~ ~2 {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=s_tunnel5_chest] run summon marker ~ ~ ~-2 {CustomName:'{"text":"mimic_marker"}'}
#
execute at @e[tag=s_tunnel6_chest] run summon marker ~3 ~ ~5 {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=s_tunnel6_chest] run summon marker ~-3 ~ ~-5 {CustomName:'{"text":"mimic_marker"}'}
#
execute at @e[tag=s_tunnel8_chest] run summon marker ~4 ~ ~4 {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=s_tunnel8_chest] run summon marker ~-4 ~ ~-4 {CustomName:'{"text":"mimic_marker"}'}
#
execute at @e[tag=s_end2_chest] run summon marker ~-5 ~ ~ {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=s_end2_chest] run summon marker ~5 ~ ~ {CustomName:'{"text":"mimic_marker"}'}
#
#west
#
execute at @e[tag=w_tunnel5_chest] run summon marker ~ ~ ~4 {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=w_tunnel5_chest] run summon marker ~ ~ ~-4 {CustomName:'{"text":"mimic_marker"}'}
#
execute at @e[tag=w_tunnel6_chest] run summon marker ~ ~ ~4 {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=w_tunnel6_chest] run summon marker ~ ~ ~-4 {CustomName:'{"text":"mimic_marker"}'}
#
execute at @e[tag=w_tunnel8_chest] run summon marker ~4 ~ ~4 {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=w_tunnel8_chest] run summon marker ~-4 ~ ~-4 {CustomName:'{"text":"mimic_marker"}'}
#
execute at @e[tag=w_end2_chest] run summon marker ~1 ~ ~-4 {CustomName:'{"text":"mimic_marker"}'}
execute at @e[tag=w_end2_chest] run summon marker ~-1 ~ ~4 {CustomName:'{"text":"mimic_marker"}'}
#
#mimic math
#
scoreboard players set amount total_mimics 0
scoreboard players set marker_amount total_mimics 0
scoreboard players set math total_mimics 100
execute as @e[type=marker,name="mimic_marker"] run scoreboard players add amount total_mimics 1
execute as @e[type=marker,name="mimic_marker"] run scoreboard players add marker_amount total_mimics 1
#
scoreboard players operation math total_mimics -= percent total_mimics
scoreboard players operation amount total_mimics *= math total_mimics
scoreboard players operation amount total_mimics /= x100 total_mimics
scoreboard players operation marker_amount total_mimics -= amount total_mimics
scoreboard players operation normal_chests total_mimics = marker_amount total_mimics
#
scoreboard players set marker_amount total_mimics 0
scoreboard players add amount total_mimics 1
execute as @e[type=marker,name="mimic_marker"] run scoreboard players add marker_amount total_mimics 1
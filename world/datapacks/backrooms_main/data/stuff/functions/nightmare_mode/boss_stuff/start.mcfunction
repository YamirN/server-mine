#executing as the nightmare
tag @s remove new_nightmare
#
kill @e[tag=bullet]
#
summon armor_stand 142.5 13 81.5 {NoGravity:1b,Tags:["bullet"],CustomName:'{"text":"nightmare_random"}'}
summon armor_stand 142.5 13 85.5 {NoGravity:1b,Tags:["bullet"],CustomName:'{"text":"nightmare_random"}'}
summon armor_stand 142.5 13 89.5 {NoGravity:1b,Tags:["bullet"],CustomName:'{"text":"nightmare_random"}'}
summon armor_stand 142.5 13 93.5 {NoGravity:1b,Tags:["bullet"],CustomName:'{"text":"nightmare_random"}'}
summon armor_stand 142.5 19 81.5 {NoGravity:1b,Tags:["bullet"],CustomName:'{"text":"nightmare_random"}'}
summon armor_stand 142.5 19 85.5 {NoGravity:1b,Tags:["bullet"],CustomName:'{"text":"nightmare_random"}'}
summon armor_stand 142.5 19 89.5 {NoGravity:1b,Tags:["bullet"],CustomName:'{"text":"nightmare_random"}'}
summon armor_stand 142.5 19 93.5 {NoGravity:1b,Tags:["bullet"],CustomName:'{"text":"nightmare_random"}'}
#
summon marker 149.5 12 84.5 {NoGravity:1b,Tags:["bullet","nightmare_pole"],CustomName:'{"text":"nightmare_pole1"}'}
summon marker 156.5 12 68.5 {NoGravity:1b,Tags:["bullet","nightmare_pole"],CustomName:'{"text":"nightmare_pole2"}'}
summon marker 172.5 12 61.5 {NoGravity:1b,Tags:["bullet","nightmare_pole"],CustomName:'{"text":"nightmare_pole3"}'}
summon marker 188.5 12 68.5 {NoGravity:1b,Tags:["bullet","nightmare_pole"],CustomName:'{"text":"nightmare_pole4"}'}
summon marker 195.5 12 84.5 {NoGravity:1b,Tags:["bullet","nightmare_pole"],CustomName:'{"text":"nightmare_pole5"}'}
summon marker 188.5 12 100.5 {NoGravity:1b,Tags:["bullet","nightmare_pole"],CustomName:'{"text":"nightmare_pole6"}'}
summon marker 172.5 12 107.5 {NoGravity:1b,Tags:["bullet","nightmare_pole"],CustomName:'{"text":"nightmare_pole7"}'}
summon marker 156.5 12 100.5 {NoGravity:1b,Tags:["bullet","nightmare_pole"],CustomName:'{"text":"nightmare_pole8"}'}
#
summon marker 160.5 9 84.5 {NoGravity:1b,Tags:["bullet","nightmare_middle"],CustomName:'{"text":"nightmare_middle1"}'}
summon marker 172.5 9 72.5 {NoGravity:1b,Tags:["bullet","nightmare_middle"],CustomName:'{"text":"nightmare_middle2"}'}
summon marker 184.5 9 84.5 {NoGravity:1b,Tags:["bullet","nightmare_middle"],CustomName:'{"text":"nightmare_middle3"}'}
summon marker 172.5 9 96.5 {NoGravity:1b,Tags:["bullet","nightmare_middle"],CustomName:'{"text":"nightmare_middle4"}'}
#
summon marker 172.5 9 84.5 {NoGravity:1b,Tags:["bullet","nightmare_center"],CustomName:'{"text":"nightmare_center"}'}
#
execute as @e[tag=nightmare_pole] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=nightmare_center,limit=1,sort=nearest]
#
setblock 142 5 85 redstone_block
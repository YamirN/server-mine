execute as @a[nbt={ActiveEffects:[{Id:13,Amplifier:1b}]}] run tag @s add chaotic_tonic
execute as @a[tag=chaotic_tonic] at @e[tag=clear_room] run function stuff:items/potions/chaotic_tonic/tp
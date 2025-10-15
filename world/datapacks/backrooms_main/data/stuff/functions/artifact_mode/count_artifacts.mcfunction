execute as @a[tag=in_backrooms] store result score @s count_artifacts run clear @s end_crystal 0
execute as @a[tag=in_backrooms] if score @s count_artifacts matches 1.. run function stuff:artifact_mode/add_artifact_to_total
#
execute as @a[tag=in_backrooms] if score $number found_artifacts = $number artifact_rooms run function stuff:artifact_mode/all_artifacts
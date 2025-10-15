execute as @a store result score @s check_credits run clear @s diamond{credit:1b} 0
execute as @a if score @s check_credits matches 1.. run function stuff:credit_functions/update_credits
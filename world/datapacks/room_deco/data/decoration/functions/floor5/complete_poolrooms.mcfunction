execute as @s run function stuff:random_tp
execute as @s at @s run playsound minecraft:entity.illusioner.mirror_move master @s ~ ~ ~ 1 0
effect give @s minecraft:blindness 3 0 true
stopsound @s voice
give @s diamond{display:{Name:'{"text":"Backrooms Credit","color":"aqua","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"+1 Credit","color":"aqua","italic":false}','{"text":" "}','{"text":"Can be used to unlock things","color":"gray","italic":false}','{"text":"at the Credit Marketplace.","color":"gray","italic":false}','{"text":" "}','{"text":"When picked up automatically","color":"gray","italic":false}','{"text":"gets added to your credit","color":"gray","italic":false}','{"text":"total.","color":"gray","italic":false}']},HideFlags:95,credit:1b,Enchantments:[{}]} 1
tag @s remove floor5_pk
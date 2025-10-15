execute as @s run function stuff:random_tp
stopsound @s voice
give @s diamond{display:{Name:'{"text":"Backrooms Credit","color":"aqua","bold":true,"italic":false}',Lore:['{"text":" "}','{"text":"+1 Credit","color":"aqua","italic":false}','{"text":" "}','{"text":"Can be used to unlock things","color":"gray","italic":false}','{"text":"at the Credit Marketplace.","color":"gray","italic":false}','{"text":" "}','{"text":"When picked up automatically","color":"gray","italic":false}','{"text":"gets added to your credit","color":"gray","italic":false}','{"text":"total.","color":"gray","italic":false}']},HideFlags:95,credit:1b,Enchantments:[{}]} 1
tag @s remove alley_chase
time set 0
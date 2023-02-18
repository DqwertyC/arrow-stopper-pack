# Destroy the article, play a sound, and summon particles
kill @e[type=arrow,sort=nearest,limit=1]
playsound minecraft:block.scaffolding.break player @s ~ ~ ~ 1 1.1
particle minecraft:item minecraft:arrow ~ ~0.5 ~ 0 0 0 0.1 10
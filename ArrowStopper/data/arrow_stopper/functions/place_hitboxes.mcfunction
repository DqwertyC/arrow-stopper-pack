# Summon the hitbox
execute as @e[type=arrow,nbt=!{inGround:1b}] at @s run summon minecraft:interaction ~ ~-0.3 ~ {Tags:["arrow_killer"],width:0.6,height:0.6}

# Store the hitbox position
execute as @e[tag=arrow_killer] at @s store result score @s pos_x run data get entity @s Pos[0] 10
execute as @e[tag=arrow_killer] at @s store result score @s pos_y run data get entity @s Pos[1] 10
execute as @e[tag=arrow_killer] at @s store result score @s pos_z run data get entity @s Pos[2] 10

# Store the arrow motion
execute as @e[type=arrow] at @s store result score @s vel_x run data get entity @s Motion[0] 10
execute as @e[type=arrow] at @s store result score @s vel_y run data get entity @s Motion[1] 10
execute as @e[type=arrow] at @s store result score @s vel_z run data get entity @s Motion[2] 10

# Add arrow velocity to hitbox position
execute as @e[tag=arrow_killer] at @s run scoreboard players operation @s pos_x += @e[type=arrow,sort=nearest,limit=1] vel_x
execute as @e[tag=arrow_killer] at @s run scoreboard players operation @s pos_y += @e[type=arrow,sort=nearest,limit=1] vel_y
execute as @e[tag=arrow_killer] at @s run scoreboard players operation @s pos_z += @e[type=arrow,sort=nearest,limit=1] vel_z

# Store score to position
execute as @e[tag=arrow_killer] store result entity @s Pos[0] double 0.1 run scoreboard players get @s pos_x
execute as @e[tag=arrow_killer] store result entity @s Pos[1] double 0.1 run scoreboard players get @s pos_y
execute as @e[tag=arrow_killer] store result entity @s Pos[2] double 0.1 run scoreboard players get @s pos_z
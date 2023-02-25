# Destroy arrows that have been hit
# Remove the "if predicate" term to allow bare-handed punching
# Modify "tags/item/can_stop_arrows" to add tools that can block arrows
execute as @e[tag=arrow_killer] at @s on attacker if predicate arrow_stopper:can_stop_arrows run function arrow_stopper:destroy_arrow

# Destroy the old interaction boxes (they're cheap and teleporting them is a pain)
kill @e[tag=arrow_killer]

# Create and place new interaction entities
execute if entity @e[type=arrow,nbt=!{inGround:1b}] run function arrow_stopper:place_hitboxes
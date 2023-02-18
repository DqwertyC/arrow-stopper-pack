# Arrow Stopper Datapack

This datapack allows arrows to be hit out of the air.
Uses features from Minecraft Snapshot 23w07a.

To change what tools can stop arrows, modify the file `ArrowStopper/data/arrow_stopper/tags/items/can_stop_arrows.json`.

To remove the requirement for a tool, remove the `if predicate arrow_stopper:can_stop_arrows` predicate from line 4 of `tick.mcfunction`

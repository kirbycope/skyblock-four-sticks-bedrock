# Tag the player so this only runs once
tag @s add init


# Check for how many players are online
scoreboard objectives add player dummy
scoreboard players add @s player 0

execute as @s[scores={player=0}] unless entity @a[scores={player=1}] run scoreboard players set @s player 1
execute as @s[scores={player=0}] unless entity @a[scores={player=2}] run scoreboard players set @s player 2
execute as @s[scores={player=0}] unless entity @a[scores={player=3}] run scoreboard players set @s player 3
execute as @s[scores={player=0}] unless entity @a[scores={player=4}] run scoreboard players set @s player 4
execute as @s[scores={player=0}] run scoreboard players set @s player 5

# 1. Top-Left
execute if score @s player matches 1 run tp @s -32 66 -32
execute if score @s player matches 1 run spawnpoint @s -32 66 -32
# 2. Top-right
execute if score @s player matches 2 run tp @s 32 66 -32
execute if score @s player matches 2 run spawnpoint @s 32 66 -32
# 3. Bottom-right
execute if score @s player matches 3 run tp @s -32 66 32
execute if score @s player matches 3 run spawnpoint @s -32 66 32
# 4. Bottom-left
execute if score @s player matches 4 run tp @s 32 66 32
execute if score @s player matches 4 run spawnpoint @s 32 66 32
# 5. Center
execute if score @s player matches 5.. run tp @s 0 66 0
execute if score @s player matches 5.. run spawnpoint @s 0 66 0

# ensure all players can trigger chatitem
execute unless score @s chatitem matches -2147483648.. run scoreboard players enable @s chatitem

execute if score @s chatitem matches 1.. run function xz.chatitem:share_item/main
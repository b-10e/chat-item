scoreboard players reset @s chatitem
scoreboard players enable @s chatitem

# terminate if no item held
execute unless items entity @s weapon.mainhand * run return fail

# clear data
data modify storage xz.chatitem:temp components set value {}
data remove storage xz.chatitem:temp name

# spawn item as entity for fast data fetching
kill a0eb863a-38b2-447f-bfef-4574519d264e
summon minecraft:item ~ ~ ~ {\
    Item:{\
        id:"minecraft:acacia_boat",\
    },\
    Invulnerable:true,\
    PickupDelay:-32768,\
    Age:-32768,\
    UUID:[I; -1595177414, 951207039, -1074838156, 1369253454],\
}
item replace entity a0eb863a-38b2-447f-bfef-4574519d264e container.0 from entity @s weapon.mainhand

# get item id and components for macro
data modify storage xz.chatitem:temp components set from entity a0eb863a-38b2-447f-bfef-4574519d264e Item.components
data modify storage xz.chatitem:temp id set from entity a0eb863a-38b2-447f-bfef-4574519d264e Item.id

# determine item name
data modify storage xz.chatitem:temp name set value {"selector":"a0eb863a-38b2-447f-bfef-4574519d264e"}
execute if data entity a0eb863a-38b2-447f-bfef-4574519d264e Item.components."minecraft:item_name" \
    run data modify storage xz.chatitem:temp name set from entity a0eb863a-38b2-447f-bfef-4574519d264e Item.components."minecraft:item_name"
execute if data entity a0eb863a-38b2-447f-bfef-4574519d264e Item.components."minecraft:custom_name" \
    run data modify storage xz.chatitem:temp name set from entity a0eb863a-38b2-447f-bfef-4574519d264e Item.components."minecraft:custom_name"

# print and cleanup
function xz.chatitem:share_item/print with storage xz.chatitem:temp
kill a0eb863a-38b2-447f-bfef-4574519d264e

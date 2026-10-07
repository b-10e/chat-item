$tellraw @a [\
    {"text":"<"},{"selector":"@s"},{"text":"> "},\
    {"text":"[","color":"gray"},\
    {"storage":"xz.chatitem:temp","nbt":"name","interpret":true,"hover_event":{"action":"show_item","components":$(components),"id":"$(id)"}},\
    {"text":"]","color":"gray"}\
]

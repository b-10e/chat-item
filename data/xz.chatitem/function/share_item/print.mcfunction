$tellraw @a [\
    {"text":"<"},{"selector":"@s"},{"text":"> "},\
    {"text":"[","color":"dark_gray"},\
    {\
        "storage":"xz.chatitem:temp","nbt":"name","interpret":true,\
        "hover_event":{\
            "action":"show_item",\
            "id":"$(id)",\
            "components":$(components)\
        }\
    },\
    {"text":"]","color":"dark_gray"}\
]
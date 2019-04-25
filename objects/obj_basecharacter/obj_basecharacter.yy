{
    "id": "7419a4d1-bf5b-4886-bd79-5cebcf529ffe",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_basecharacter",
    "eventList": [
        {
            "id": "1fd380d0-6b8c-4884-9a2a-e1b5bfef8dd0",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "7419a4d1-bf5b-4886-bd79-5cebcf529ffe"
        },
        {
            "id": "75877958-377b-494c-aa73-23420d599a6e",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "7419a4d1-bf5b-4886-bd79-5cebcf529ffe"
        },
        {
            "id": "b51909af-00c7-4db1-bb17-e697927a5ade",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "7419a4d1-bf5b-4886-bd79-5cebcf529ffe"
        },
        {
            "id": "9c7fa221-f8c7-4e06-b860-f138f91402d5",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 4,
            "eventtype": 7,
            "m_owner": "7419a4d1-bf5b-4886-bd79-5cebcf529ffe"
        },
        {
            "id": "29a17841-dd18-4ad4-b992-d530e5063d96",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 12,
            "m_owner": "7419a4d1-bf5b-4886-bd79-5cebcf529ffe"
        }
    ],
    "maskSpriteId": "6b1c400a-ab1d-487e-b4ce-f6bb6557e111",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "4903c6f3-95be-459e-806e-0427cc571e22",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": [
                "\"male\"",
                "\"female\""
            ],
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "\"male\"",
            "varName": "gender",
            "varType": 6
        },
        {
            "id": "7f450d0b-8f24-42bc-aa29-219a01b8193e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": [
                "\"noone\"",
                "\"random\"",
                "\"obj_item_startgun\"",
                "\"obj_item_lesser_warden_gun\"",
                "\"obj_item_medium_warden_gun\"",
                "\"obj_item_higher_warden_gun\"",
                "\"obj_item_draco_buster\"",
                "\"obj_item_warden_baton\""
            ],
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "\"noone\"",
            "varName": "startitem",
            "varType": 6
        },
        {
            "id": "833e829c-d472-46a4-be43-fa07f3ac6b34",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": true,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "walksp",
            "varType": 0
        },
        {
            "id": "6b8cd215-28ff-4f75-8404-0a690bad853c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "lvl",
            "varType": 1
        }
    ],
    "solid": false,
    "spriteId": "6b1c400a-ab1d-487e-b4ce-f6bb6557e111",
    "visible": true
}
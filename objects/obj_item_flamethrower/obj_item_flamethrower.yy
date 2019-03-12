{
    "id": "e0157cdb-394c-4a58-b292-49edec4510f8",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_item_flamethrower",
    "eventList": [
        {
            "id": "b0876540-935f-436b-b6cb-8f20acd42124",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 11,
            "eventtype": 7,
            "m_owner": "e0157cdb-394c-4a58-b292-49edec4510f8"
        },
        {
            "id": "37f2bc30-cdbf-4c56-aa66-a4e8bb4cdc04",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 10,
            "eventtype": 7,
            "m_owner": "e0157cdb-394c-4a58-b292-49edec4510f8"
        },
        {
            "id": "f82cae5a-eb7e-4827-81ce-19e86717c4a3",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "e0157cdb-394c-4a58-b292-49edec4510f8"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        {
            "id": "573cc5d8-15eb-4abd-a60b-0de4b3d589d6",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "18a1d1e9-2746-45d8-b693-b60787bb647b",
            "propertyId": "785ca590-aceb-42ab-a53d-310880224076",
            "value": "FlameThrower"
        },
        {
            "id": "d8abe839-3119-4dba-a8d2-66cfee0096e6",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "18a1d1e9-2746-45d8-b693-b60787bb647b",
            "propertyId": "11d268fc-e8cc-4a84-a7b8-49c0df187a73",
            "value": "10"
        },
        {
            "id": "c5583180-0520-4798-b193-26d8a5efb8a3",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "18a1d1e9-2746-45d8-b693-b60787bb647b",
            "propertyId": "e8001e46-3f89-493a-a058-52953b77033f",
            "value": "False"
        }
    ],
    "parentObjectId": "18a1d1e9-2746-45d8-b693-b60787bb647b",
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
            "id": "55b75af7-eb67-4876-b0a7-6e1ac8354c12",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "5",
            "varName": "flame_power",
            "varType": 1
        },
        {
            "id": "2515cc96-326a-4d27-a096-8e532ede3a53",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": true,
            "rangeMax": 40,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "15",
            "varName": "flamespawnposition",
            "varType": 1
        },
        {
            "id": "19953ce5-cf0b-4ffb-affd-8c5e5af6c8d7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "5",
            "varName": "flame_speed",
            "varType": 1
        },
        {
            "id": "f384bed4-edcb-4990-af00-90b82052b046",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "3",
            "varName": "miss",
            "varType": 0
        },
        {
            "id": "e4a4bba9-4b2f-4d13-a4ca-0fea24bc6ef8",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "recoil",
            "varType": 1
        }
    ],
    "solid": false,
    "spriteId": "f1cd8401-4a85-412b-bdf2-e9987fb3b461",
    "visible": true
}
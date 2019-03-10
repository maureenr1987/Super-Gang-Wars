{
    "id": "1e2a3d62-a113-4e8d-8e4b-26f22732bdff",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_item_missilelauncher",
    "eventList": [
        {
            "id": "e8a8e0aa-f9f1-4ec9-90a8-06dedcb0f76c",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 11,
            "eventtype": 7,
            "m_owner": "1e2a3d62-a113-4e8d-8e4b-26f22732bdff"
        },
        {
            "id": "a0b30416-de59-4371-8b1b-591c054fc5f5",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 10,
            "eventtype": 7,
            "m_owner": "1e2a3d62-a113-4e8d-8e4b-26f22732bdff"
        },
        {
            "id": "d1137c87-24ad-4b68-8e2c-204e0b8bdb67",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 12,
            "eventtype": 7,
            "m_owner": "1e2a3d62-a113-4e8d-8e4b-26f22732bdff"
        },
        {
            "id": "054fff2f-387e-469c-8536-2b86d9dfd4c7",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 13,
            "eventtype": 7,
            "m_owner": "1e2a3d62-a113-4e8d-8e4b-26f22732bdff"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        {
            "id": "fd157934-44dc-46cf-b0f3-1dbf38d4b856",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "18a1d1e9-2746-45d8-b693-b60787bb647b",
            "propertyId": "050578ed-fa1a-4d84-8820-14b36c387f40",
            "value": "800"
        },
        {
            "id": "545e704d-35e0-4e6e-89c2-d59872819a3e",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "18a1d1e9-2746-45d8-b693-b60787bb647b",
            "propertyId": "e8001e46-3f89-493a-a058-52953b77033f",
            "value": "True"
        },
        {
            "id": "fa0e9702-6365-4e44-b734-a68c84b28992",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "18a1d1e9-2746-45d8-b693-b60787bb647b",
            "propertyId": "e5cfb039-6129-413e-8186-006ed9f2475d",
            "value": "True"
        },
        {
            "id": "e0a9e5b8-f832-4d5d-99f2-1816bd83dee9",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "18a1d1e9-2746-45d8-b693-b60787bb647b",
            "propertyId": "785ca590-aceb-42ab-a53d-310880224076",
            "value": "Missile Launcher"
        },
        {
            "id": "dbb57a85-d996-4b3f-b5a4-07e73926b39c",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "18a1d1e9-2746-45d8-b693-b60787bb647b",
            "propertyId": "a6932145-547b-4be8-bcf6-4ad8c4df3152",
            "value": "snd_RPG"
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
            "id": "b882e9dd-1c51-47d6-b0d4-682222b5660d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "200",
            "varName": "missile_power",
            "varType": 1
        },
        {
            "id": "df9c56bc-5e07-47f7-ba3d-328edcd2a1c6",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": true,
            "rangeMax": 40,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "22",
            "varName": "missile_spawnposition",
            "varType": 1
        },
        {
            "id": "fcfd2796-eb1f-4e05-9460-1e3b7551b29f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2",
            "varName": "missile_speed",
            "varType": 1
        },
        {
            "id": "890cd759-5e2b-40ec-a604-3c71257b704d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1000",
            "varName": "missile_lifespan",
            "varType": 1
        },
        {
            "id": "6819d84b-e7c1-4731-8ae6-f120f55c3fcf",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "4",
            "varName": "recoil",
            "varType": 1
        },
        {
            "id": "ae1c1413-a1e9-4e81-b92a-fb9c70676ea5",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "20",
            "varName": "hitreach",
            "varType": 0
        },
        {
            "id": "636ed8b8-1818-40c8-90cd-4d0eefa16703",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "20",
            "varName": "hitspeed",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "fa8d8670-5002-4f1e-9292-74d822ae9972",
    "visible": true
}
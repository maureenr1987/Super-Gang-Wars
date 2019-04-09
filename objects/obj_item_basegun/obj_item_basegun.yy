{
    "id": "31e10c66-239b-4158-87a0-68c55ee37915",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_item_basegun",
    "eventList": [
        {
            "id": "2c8930dd-aa59-4dfe-ba94-a5b413923436",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 11,
            "eventtype": 7,
            "m_owner": "31e10c66-239b-4158-87a0-68c55ee37915"
        },
        {
            "id": "e5e550b0-6801-4798-bc43-0cd275260f3c",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 10,
            "eventtype": 7,
            "m_owner": "31e10c66-239b-4158-87a0-68c55ee37915"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        {
            "id": "a71dca97-d21a-462e-b6a2-a584b8167dad",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "18a1d1e9-2746-45d8-b693-b60787bb647b",
            "propertyId": "785ca590-aceb-42ab-a53d-310880224076",
            "value": "Base Gun"
        },
        {
            "id": "9fbd4672-9336-4eb8-b06f-136819ffe79c",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "18a1d1e9-2746-45d8-b693-b60787bb647b",
            "propertyId": "a6932145-547b-4be8-bcf6-4ad8c4df3152",
            "value": "snd_Gunshot_pop"
        },
        {
            "id": "f76ab0d4-8ec8-4a55-b308-82140d2b0f7c",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "18a1d1e9-2746-45d8-b693-b60787bb647b",
            "propertyId": "e8001e46-3f89-493a-a058-52953b77033f",
            "value": "True"
        },
        {
            "id": "46c206f3-f847-4620-9708-32cf3b6fb10e",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "18a1d1e9-2746-45d8-b693-b60787bb647b",
            "propertyId": "e1f7db88-1a9a-4f75-9ec8-6007cb84dbb0",
            "value": "A basic gun. It's low price makes it a popular for beginerszz3"
        },
        {
            "id": "496bb9fb-5269-4f6b-a9c7-d5db6f5e9228",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "18a1d1e9-2746-45d8-b693-b60787bb647b",
            "propertyId": "693c44b5-5586-4cd6-8e7b-809d6573ab30",
            "value": "obj_item_basegun"
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
            "id": "3df17ba0-3103-4c51-8cab-bcf775d20297",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "obj_basebullet",
            "varName": "projectile_type",
            "varType": 5
        },
        {
            "id": "ea4937a3-cebd-4539-a068-af5d21175eed",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "5",
            "varName": "projectile_power",
            "varType": 1
        },
        {
            "id": "d4057939-e8f4-4908-8273-67941b454822",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": true,
            "rangeMax": 40,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "20",
            "varName": "projectile_spawnposition",
            "varType": 1
        },
        {
            "id": "c33c5a2b-29c7-41cf-8756-8fa6a0f2f33c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "15",
            "varName": "projectile_speed",
            "varType": 1
        },
        {
            "id": "fd1ebc15-ff82-4346-96c1-ab3fbd712a37",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "150",
            "varName": "projectile_lifespan",
            "varType": 1
        },
        {
            "id": "6f46328c-02c9-448c-9d11-7a94752609d9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "7",
            "varName": "miss",
            "varType": 0
        },
        {
            "id": "0842d314-8894-4295-953b-55dec6b9d83c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2",
            "varName": "recoil",
            "varType": 1
        }
    ],
    "solid": false,
    "spriteId": "54e4e5f4-27be-4d72-8b9c-391cd9c7ba5d",
    "visible": true
}
// instance_nth_position(x, y, object, inst-id)
/*
    Returns: the n-th position if the instance is found, else -1.
*/
{
    var pointx,pointy,object,n,list,instid;
    pointx = argument0;
    pointy = argument1;
    object = argument2;
    instid = argument3;
    list = ds_priority_create();
    n = 0;
    with (object) ds_priority_add(list,id,distance_to_point(pointx,pointy));

    while(!ds_priority_empty(list)) {
        n ++;
        if (instid == ds_priority_delete_min(list)) {
            ds_priority_destroy(list);
            return n;
        }
    }

    ds_priority_destroy(list);
    return -1;
}
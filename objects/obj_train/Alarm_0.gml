/// @description Draw smoke!

if (path_speed>0) {
	if (layer_exists("Effects")){
		var offset_distance = 30;
		var spawn_x = obj_train.x + lengthdir_x(offset_distance, obj_train.direction);
		var spawn_y = obj_train.y + lengthdir_y(offset_distance, obj_train.direction) - 30;
		instance_create_layer(spawn_x, spawn_y,"Effects", obj_train_smoke);
	}
	else
	{
		layer_create(0,"Effects");
	}
	alarm[0] = beat;
}
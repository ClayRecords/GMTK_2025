/// @description Draw smoke!

if (path_speed > 0) {
	if (not layer_exists("Effects")) {
		layer_create(0, "Effects");
	}
	
	// Add smoke
	var smoke_offset_distance = 30;
	smoke_spawn_x = obj_train.x + lengthdir_x(smoke_offset_distance, obj_train.direction);
	smoke_spawn_y = obj_train.y + lengthdir_y(smoke_offset_distance, obj_train.direction) - 30;
	instance_create_layer(smoke_spawn_x, smoke_spawn_y, "Effects", obj_train_smoke);
}

alarm[0] = beat;
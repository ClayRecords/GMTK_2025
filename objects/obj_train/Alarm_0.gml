/// @description Draw smoke!

if (path_speed>0) {
	if (layer_exists("Effects")){
		instance_create_layer(smoke_spawn_x, smoke_spawn_y,"Effects", obj_train_smoke);
	}
	else
	{
		layer_create(0,"Effects");
	}
	alarm[0] = beat;
}
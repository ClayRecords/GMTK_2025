debug = false;
global.one_second = game_get_speed(gamespeed_fps);
gold = 0;

instance_create_layer(x, y, "Instances", obj_pause_controller);
instance_create_layer(x, y, "Instances", obj_building_manager);
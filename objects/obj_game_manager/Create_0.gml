debug = false;
global.one_second = game_get_speed(gamespeed_fps);

cents = 0;
imagination = 0;
global.default_font = fnt_ui;
global.default_text_color = c_blue;

instance_create_layer(x, y, "Instances", obj_pause_controller);
instance_create_layer(x, y, "Instances", obj_building_manager);
instance_create_layer(x, y, "Instances", obj_carpet);

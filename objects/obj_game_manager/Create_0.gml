debug = false;
global.one_second = game_get_speed(gamespeed_fps);
global.model_scale = 2;

pennies = 0;
imagination = 1;
global.default_font = fnt_ui;
global.default_text_color = c_blue;


instance_create_layer(x, y, "Instances", obj_pause_controller);
instance_create_layer(x, y, "Instances", obj_building_manager);
instance_create_layer(x, y, "Instances", obj_carpet);
instance_create_layer(x, y, "Instances", obj_notifications_manager);
layer_set_visible("HotbarUI", true);
layer_set_visible("PauseButton", true);
layer_set_visible("SpeedControlUI", true);
layer_set_visible("NotificationsUI", true);

function kickoff() {
	obj_enemy_spawner.kickoff();
}
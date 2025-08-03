debug = false;
global.one_second = game_get_speed(gamespeed_fps);
global.model_scale = 2;

pennies = 0;
imagination = 0;
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

function end_game(win_bool) {
		
	// Clear notifications
	with(obj_notification) {
		instance_destroy(self);
	}
		
	layer_set_visible("NotificationsUI", false);
	layer_set_visible("HotbarUI", false);
	layer_set_visible("PauseUI", false);
	layer_set_visible("PauseButton", false);
	layer_set_visible("SpeedControlUI", false);
	layer_set_visible("HelpPage", false);
	layer_set_visible("AboutPage", false);
	
	room_goto(EndRoom)
	layer_set_visible("MainMenuBackground", true);

	if (win_bool) {
		layer_set_visible("WinPage", true);

	}
	else if (!win_bool) {
		layer_set_visible("LosePage", true);
	}
}
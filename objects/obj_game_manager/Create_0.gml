global.model_scale = 2;

pennies = 0;
imagination = 1;

instance_create_layer(x, y, "Instances", obj_pause_controller);
instance_create_layer(x, y, "Instances", obj_building_manager);
instance_create_layer(x, y, "Instances", obj_carpet);
instance_create_layer(x, y, "Instances", obj_notifications_manager);
layer_set_visible("HotbarUI", true);
layer_set_visible("CurrencyUI", true);
layer_set_visible("PauseButton", true);
layer_set_visible("SpeedControlUI", true);
layer_set_visible("NotificationsUI", true);

function kickoff() {
	obj_enemy_spawner.kickoff();
}

function end_game(win_bool) {
		
	// Clear notifications
	with(obj_notification) {
		instance_destroy(self);
	}
		
	layer_set_visible("NotificationsUI", false);
	layer_set_visible("HotbarUI", false);
	layer_set_visible("CurrencyUI", false);
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


function update_currency_ui() {
    var root_node = layer_get_flexpanel_node("CurrencyUI");

    // Update Pennies
    var pennies_node = flexpanel_node_get_child(root_node, "Pennies");
    var pennies_struct = flexpanel_node_get_struct(pennies_node);
    var pennies_id = pennies_struct.layerElements[0].elementId;
    layer_text_text(pennies_id, string(pennies) + "©");

    // Update Imagination
    var imagination_node = flexpanel_node_get_child(root_node, "Imagination");
    var imagination_struct = flexpanel_node_get_struct(imagination_node);
    var imagination_id = imagination_struct.layerElements[0].elementId;
    layer_text_text(imagination_id, string(imagination));
}

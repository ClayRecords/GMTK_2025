global.model_scale = 2;

pennies = 0;
imagination = 1;

instance_create_layer(x, y, "Instances", obj_pause_controller);
instance_create_layer(x, y, "Instances", obj_building_manager);
instance_create_layer(x, y, "Instances", obj_carpet);
instance_create_layer(x, y, "Instances", obj_notifications_manager);
layer_set_visible("HotbarUI", true);
layer_set_visible("CurrencyUI", true);
layer_set_visible("WaveTrackerUI", true);
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
		
	// Set all layers not visible
	var all_layers = layer_get_all();
	for (var i = 1; i < array_length(all_layers); i++) {
		layer_set_visible(all_layers[i], false);
	}
	
	room_goto(EndRoom)
	layer_set_visible("MainMenuBackground", true);

	global.did_win = win_bool;
	if (win_bool) {
		layer_set_visible("WinPage", true);
	}
	else if (!win_bool) {
		layer_set_visible("LosePage", true);
	}
}


function update_currency_ui_and_wave_tracker() {
    var currency_root_node = layer_get_flexpanel_node("CurrencyUI");
	var wave_root_node = layer_get_flexpanel_node("WaveTrackerUI");

    // Update Pennies
    var pennies_node = flexpanel_node_get_child(currency_root_node, "Pennies");
    var pennies_struct = flexpanel_node_get_struct(pennies_node);
    var pennies_id = pennies_struct.layerElements[0].elementId;
    layer_text_text(pennies_id, string(pennies) + "©");

    // Update Imagination
    var imagination_node = flexpanel_node_get_child(currency_root_node, "Imagination");
    var imagination_struct = flexpanel_node_get_struct(imagination_node);
    var imagination_id = imagination_struct.layerElements[0].elementId;
    layer_text_text(imagination_id, string(imagination));
	
	var current_top_text = obj_enemy_spawner.top_text;
	var current_bottom_text = obj_enemy_spawner.bottom_text
	if (obj_tutorial_manager.is_active()) {
		current_top_text = "";
		current_bottom_text = "";
	}
	// Update Wave Status
    var wave_node = flexpanel_node_get_child(wave_root_node, "WaveStatus");
    var wave_struct = flexpanel_node_get_struct(wave_node);
    var wave_id = wave_struct.layerElements[0].elementId;
    layer_text_text(wave_id, string(current_top_text));
	
	// Update Counter
    var counter_node = flexpanel_node_get_child(wave_root_node, "Counter");
    var counter_struct = flexpanel_node_get_struct(counter_node);
    var counter_id = counter_struct.layerElements[0].elementId;
    layer_text_text(counter_id, string(current_bottom_text));
}

just_entered = false;
building_layer_name = noone;
distance_to_stop_at_building = 100;
option_descriptions = [];

function enter_building() {
	// Open Menu
	if (not just_entered) {
		print("Entered building");
		obj_train.train_speed = 0;
		obj_building_manager.current_building = self;
		prepare_building();
		toggle_interact_menu(); // Generic building interaction function to be defined in child class
		just_entered = true
	}

}

function toggle_interact_menu() {
    if (is_string(building_layer_name)) {
        var current_state = layer_get_visible(building_layer_name);
        layer_set_visible(building_layer_name, !current_state);
    }
}

function leave_building() {
	print("Left building")
	toggle_interact_menu();
	obj_train.train_speed = 5;
}



// Add do_building_interaction function4
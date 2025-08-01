just_entered = false

function enter_building() {
	// Open Menu
	print("Tried to enter building");
	if (not just_entered) {
		print("Entered building");
		obj_train.train_speed = 0;
		obj_buildings_controller.current_building = self
		toggle_interact_menu(); // Generic building interaction function to be defined in child class
		just_entered = true
	}

};

function toggle_interact_menu() {
	var current_state = layer_get_visible(building_layer_name);
    layer_set_visible(building_layer_name, !current_state);
}

function leave_building() {
	toggle_interact_menu();
	obj_train.train_speed = 5;
	// DO NOT OVERRIDE
	// Close menu
	// Resume train canMove
}



// Add do_building_interaction function4
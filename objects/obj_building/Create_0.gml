just_passed_or_entered = false;
building_layer_name = noone;
distance_to_stop_at_building = 100;
option_descriptions = [];
stopsign = instance_create_layer(x+68, y, "Instances", obj_stopsign);

function pass_or_enter_building() {
	just_passed_or_entered = true
	reach_building();
	if (stopsign.should_stop) {
		print("Stopped at building");
		obj_train.train_speed = 0;
		obj_building_manager.current_building = self;
		toggle_interact_menu(); // Generic building interaction function to be defined in child class
	}
	else {
		print("Passed building");
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
	stopsign.should_stop = false;
	obj_train.train_speed = 5;
}



// Add do_building_interaction function4
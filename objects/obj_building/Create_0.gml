just_passed_or_entered = false;
building_layer_name = noone;
distance_to_stop_at_building = 75;
option_descriptions = [];
stopsign = instance_create_layer(x + 70, y - 40, "Buildings", obj_go);
stopsign.image_xscale = 2
stopsign.image_yscale = 2

function pass_or_enter_building() {
	just_passed_or_entered = true
	reach_building();
	if (stopsign.should_stop) {
		print("Stopped at building");
		obj_train.train_speed = 0;
		obj_train.should_move = false;
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
	obj_train.should_move = true;
	obj_train.train_speed = 5;

	if (obj_tutorial_manager.is_active()) {
		obj_train.should_move = false;
		obj_tutorial_manager.next_step();
	}
}


self.max_health = 100;
self.current_health = self.max_health;
image_angle = 190;
building_layer_name = "ToyBoxUI";

function toggle_interact_menu() {
    if (is_string(building_layer_name)) {
        var current_state = layer_get_visible(building_layer_name);
        layer_set_visible(building_layer_name, !current_state);
    }
}
function open_toy_box_UI() {
	prepare_toybox();
	toggle_interact_menu();
	obj_building_manager.current_building = self;	
}
function leave_building() {
	print("Left building");
	toggle_interact_menu();
}


// Purchase dart gun
function do_option1() {
	if (obj_game_manager.cents < dart_gun_cost or !train_has_empty_car()) {
		return;
	}
	obj_game_manager.cents -= dart_gun_cost;
	dart_gun_cost += dart_gun_cost_increment;
	obj_train.add_weapon_to_next_car(obj_turret_basic);
}

// Upgrade dart gun
function do_option2() {
	if (obj_game_manager.cents < dart_gun_upgrade_cost) {
		return;
	}
	obj_game_manager.cents -= dart_gun_upgrade_cost;
	dart_gun_upgrade_cost += dart_gun_upgrade_cost_increment;
	add_turret_damage_range(obj_turret_basic, dart_gun_damage_increment, dart_gun_range_increment)
	
	
}

// 
function do_option3() {
	return;
}

function prepare_toybox() {
	set_text();
}
function set_text() {
	option1_description = "1";
	option2_description = "2";
	option3_description = "3";
	option_descriptions = [option1_description, option2_description, option3_description];
}

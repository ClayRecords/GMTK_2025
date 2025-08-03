// Inherit the parent event
event_inherited();
image_angle = -45

building_layer_name = "CraneUI"; 


dart_gun_cost = 5;
dart_gun_upgrade_cost = 30;
dart_gun_cost_increment = 5;
dart_gun_upgrade_cost_increment = 5;
dart_gun_damage_increment = 10;
dart_gun_range_increment = 10;

water_gun_cost = 5;
water_gun_upgrade_cost = 1;
water_gun_cost_increment = 5;
water_gun_upgrade_cost_increment = 5;
water_gun_damage_increment = 1;
water_gun_range_increment = 10;
water_gun_effect_area_increment = 1;


stopsign.x -= 35;
stopsign.y -= 55;

function reach_building() {
	obj_tutorial_manager.resolve_step("stop_at_crane");
}

// Purchase dart gun
function do_option1() {
	if (obj_game_manager.pennies < dart_gun_cost or !train_has_empty_car()) {
		return;
	}
	obj_game_manager.pennies -= dart_gun_cost;
	dart_gun_cost += dart_gun_cost_increment;
	obj_train.add_weapon_to_next_car(obj_turret_basic);
	obj_tutorial_manager.resolve_step("buy_turret");
}

// Upgrade dart gun
function do_option2() {
	if (obj_game_manager.pennies < dart_gun_upgrade_cost) {
		return;
	}
	obj_game_manager.pennies -= dart_gun_upgrade_cost;
	dart_gun_upgrade_cost += dart_gun_upgrade_cost_increment;
	add_turret_damage_range(obj_turret_basic, dart_gun_damage_increment, dart_gun_range_increment)
	
}

// 
function do_option3() {
	if (obj_game_manager.pennies < water_gun_cost or !train_has_empty_car()) {
		return;
	}
	obj_game_manager.pennies -= water_gun_cost;
	water_gun_cost += water_gun_cost_increment;
	obj_train.add_weapon_to_next_car(obj_turret_water);
	obj_tutorial_manager.resolve_step("buy_turret");
}

// 
function do_option4() {
	if (obj_game_manager.pennies < water_gun_upgrade_cost) {
		return;
	}
	obj_game_manager.pennies -= water_gun_upgrade_cost;
	water_gun_upgrade_cost += water_gun_upgrade_cost_increment;
	add_turret_damage_range(obj_turret_water, water_gun_damage_increment, water_gun_range_increment)
	obj_turret_water.area_of_effect += water_gun_effect_area_increment;
	return;
}

// 
function do_option5() {
	return;
}

// 
function do_option6() {
	return;
}

function add_turret_damage_range(turret_type, damage_increment, range_increment) {
	for (var i = 0; i < instance_number(obj_turret_basic); i++) {
		var turret = instance_find(turret_type, i);
		turret.bullet_damage += damage_increment;
		// Add range support
	}
}

function train_has_empty_car () {
	empty_car = false;
	train_cars = obj_train.train_cars;
	for (i=0; i < array_length(train_cars); i++) {
		if (train_cars[i].weapon) {
			continue;
		}
		empty_car = true;
	}
	return empty_car;

}

function set_text() {
	if (train_has_empty_car()) {
		car_available_str = "Purchase Dart Gun for: " + str(dart_gun_cost) + "©\n";
		water_available_str = "Purchase Dart Gun for: " + str(dart_gun_cost) + "©\n";
	}
	else {
		car_available_str = "NO EMPTY CAR!\n";
		water_available_str = "NO EMPTY CAR!\n";
	}
	
	option1_description = car_available_str + "Damage: " + (str(obj_turret_basic.bullet_damage)) + "\nRange: RANGE HERE";
	option2_description = "Cost: " + str(dart_gun_upgrade_cost);
	option3_description = water_available_str + "Damage: " + (str(obj_turret_water.bullet_damage)) + "\nRange: RANGE HERE";
	option4_description = "Cost: " + str(water_gun_upgrade_cost);;
	option5_description = "";
	option6_description = "";
	
	
	option_descriptions = [option1_description, option2_description, option3_description, option4_description, option5_description, option6_description];
}
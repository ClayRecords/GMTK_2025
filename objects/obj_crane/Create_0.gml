// Inherit the parent event
event_inherited();

building_layer_name = "CraneUI"; 


dart_gun_cost = 5;
dart_gun_upgrade_cost = 30;
dart_gun_cost_increment = 5;
dart_gun_damage_increment = 10;
dart_gun_range_increment = 10;

function reach_building() {
	return;
}

// Purchase dart gun
function do_option1() {
	obj_train.add_weapon_to_next_car(obj_turret_basic);
}

// Upgrade dart gun
function do_option2() {
	return
}

// 
function do_option3() {
	return;
}

// 
function do_option4() {
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


function set_text() {
	empty_car = false;
	car_available_str = "";
	train_cars = obj_train.train_cars;
	for (i=0; i < array_length(train_cars); i++) {
		if (train_cars[i].weapon) {
			continue;
		}
		empty_car = true;
	}
	if (!empty_car) {
		car_available_str = "NO EMPTY CAR!\n"
	}
	option1_description = car_available_str + "Purchase Dart Gun for: " + str(dart_gun_cost);
	option2_description = "Cost: " + str(dart_gun_upgrade_cost);
	option3_description = "";
	option4_description = "";
	option5_description = "";
	option6_description = "";
	
	
	option_descriptions = [option1_description, option2_description, option3_description];
}
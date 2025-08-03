// Inherit the parent event
event_inherited();
image_angle = 180;
self.image_xscale = 1.75
self.image_yscale = 1.75
building_layer_name = "TrainUpgradeUI"; 
option1_cost = 200;
option2_cost = 20;
option3_cost = 25;
looped_before = false;

function reach_building(){
	obj_sound_manager.play_random_from_folder("choochoo", 0.3);
	obj_tutorial_manager.resolve_step("stop_at_station");
	
	if (looped_before) {
		var imagination_str = "You got 1 Imagination for making a loop!";
		reward_imagination(imagination_str);
	}
	else {
		looped_before = true;
	}
}

// Speed
function do_option1() {
	if(option1_cost > obj_game_manager.pennies){
		return;	
	}
	if (train_at_max_gear()) {
		return;
	}
	obj_train.max_train_gear += 1
	obj_game_manager.pennies -= option1_cost;
	option1_cost += 10;
}
// Ramming
function do_option2() {
	if(option2_cost > obj_game_manager.pennies){
		return;	
	}
	obj_game_manager.pennies -= option2_cost;
	option2_cost += 50;
	obj_train.train_ramming_damage++;
}
// Number of cars
function do_option3() {
	if(option3_cost > obj_game_manager.pennies){
		return;	
	}
	obj_game_manager.pennies -= option3_cost;
	option3_cost += 15;
	obj_train.add_car();
	obj_tutorial_manager.resolve_step("buy_car");
}

function train_at_max_gear() {
	if (obj_train.max_train_gear == 3){
		return true;
	}
	return false;
}

function set_text() {
	option1_description = "Current Max Gear Range: "+string(4 - obj_train.max_train_gear)+"-"+string(4 + obj_train.max_train_gear)+
	"\nCost: "+string(option1_cost);
	if (train_at_max_gear()) {
		option1_description = "Max Gear Reached!";	
	}
	option2_description = "Current Power: "+string(obj_train.train_ramming_damage)+
	"\nCost: "+string(option2_cost);

	option3_description = "Current # of Cars: "+string(array_length(obj_train.train_cars))+
	"\nCost: "+string(option3_cost);
	option_descriptions = [option1_description, option2_description, option3_description];
}
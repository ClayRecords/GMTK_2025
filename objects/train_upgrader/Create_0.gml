// Inherit the parent event
event_inherited();
building_layer_name = "TrainUpgradeUI"; 
option1_cost = 10;
option2_cost = 20;
option3_cost = 15;

function prepare_building(){
	return;
}

function do_option1() {
	if(option1_cost > obj_game_manager.gold){
		exit;	
	}
	obj_game_manager.gold -= option1_cost;
	option1_cost += 10;
	obj_train.min_train_speed = max(obj_train.min_train_speed - 2, 0);
	obj_train.max_train_speed += 2;
}
function do_option2() {
	if(option2_cost > obj_game_manager.gold){
		exit;	
	}
	obj_game_manager.gold -= option2_cost;
	option2_cost += 30;
	obj_train.train_power_level++;
}
function do_option3() {
	if(option3_cost > obj_game_manager.gold){
		exit;	
	}
	obj_game_manager.gold -= option1_cost;
	option3_cost += 15;
	obj_train.add_car();
}


function set_text() {
	option1_description = "Current Range: "+string(obj_train.min_train_speed)+"-"+string(obj_train.max_train_speed)+
	"\nCost: "+string(option1_cost);
	option2_description = "Current Power: "+string(obj_train.train_power_level)+
	"\nCost: "+string(option2_cost);
	option3_description = "Current # of Cars: "+string(array_length(obj_train.train_cars))+
	"\nCost: "+string(option3_cost);
	option_descriptions = [option1_description, option2_description, option3_description];
}
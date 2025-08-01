// Inherit the parent event
event_inherited();
building_layer_name = "BuildingUI"; 
account = 0
gold_rate = 

function prepare_building() {
	
}

// collect gold
function do_option1() {
	obj_game_manager.gold += 100;
}
// Invest
function do_option2() {
	obj_game_manager.gold += 2;
}
// Upgrade
function do_option3() {
	obj_game_manager.gold += 3;
}


// Inherit the parent event
event_inherited();
building_layer_name = "BuildingUI"; 
account = 0;
gold_per_loop = 100;

investment_account = 0;
investment_rate = 0.03;

function prepare_building() {
	set_text()
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

function set_text() {
	option1_description = "";
	option2_description = "";
	option3_description = "";
}
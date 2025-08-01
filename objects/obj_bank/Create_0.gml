// Inherit the parent event
event_inherited();
building_layer_name = "BuildingUI"; 
gold_ready = 0;
gold_per_loop = 100;

investment_account = 0;
investment_rate = 0.03;

function prepare_building() {
	gold_ready += gold_per_loop;
	set_text();
}

// collect gold
function do_option1() {
	obj_game_manager.gold += gold_ready;
	gold_ready = 0;
	set_text();
}
// Invest
function do_option2() {
	obj_game_manager.gold += 2;
	set_text();
}
// Upgrade
function do_option3() {
	obj_game_manager.gold += 3;
	set_text();
}

function set_text() {
	option1_description = "Collect " + str(gold_ready) + " gold!"
	option2_description = "";
	option3_description = "";
	option_descriptions = [option1_description, option2_description, option3_description];
}
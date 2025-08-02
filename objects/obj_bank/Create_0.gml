// Inherit the parent event
event_inherited();
building_layer_name = "BankUI"; 
gold_ready = 0;
gold_per_loop = 100;

investment_account = 0;
investment_rate = 0.03;

cost_to_upgrade = 60;
cost_increment = 30;
gold_upgrade_increment = 10;
investment_rate_upgrade_increment = 0.01;

function prepare_building() {
	gold_ready += gold_per_loop;
	investment_account += investment_account * investment_rate;
}

// collect gold
function do_option1() {
	obj_game_manager.gold += gold_ready;
	gold_ready = 0;
}
// Invest
function do_option2() {
	var investment_amount = gold_per_loop;
	if (obj_game_manager.gold < investment_amount) {
		return;
	}
	obj_game_manager.gold -= investment_amount;
	investment_account += investment_amount;
}
// Collect investment
function do_option4() {
	obj_game_manager.gold += investment_account;
	investment_account = 0;
}
// Upgrade
function do_option3() {
	if (obj_game_manager.gold < cost_to_upgrade) {
		return;	
	}
	obj_game_manager.gold -= cost_increment
	cost_to_upgrade += cost_increment
	gold_per_loop += gold_upgrade_increment;
	investment_rate += investment_rate_upgrade_increment;
}

function set_text() {
	option1_description = "Collect " + str(gold_ready) + " gold!"
	option2_description = "Invest " + str(gold_per_loop) + " gold, at a rate of " + str(investment_rate) + "\nCurrent Assets: " + str(investment_account);
	option3_description = "Upgrade for: " + str(cost_to_upgrade) + "\nCurrent: Gold / Loop: " + str(gold_per_loop) + " | Investment Rate: " + str(investment_rate) + "\nUpgrade: Gold / Loop: " + str(gold_per_loop + gold_upgrade_increment) + " | Investment Rate: " + str(investment_rate + investment_rate_upgrade_increment);
	option_descriptions = [option1_description, option2_description, option3_description];
}
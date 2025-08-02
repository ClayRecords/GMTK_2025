// Inherit the parent event
event_inherited();
building_layer_name = "BankUI"; 
cents_ready = 0;
cents_per_loop = 100;

investment_account = 0;
investment_rate = 0.03;

cost_to_upgrade = 60;
cost_increment = 30;
cents_upgrade_increment = 10;
investment_rate_upgrade_increment = 0.01;

function reach_building() {
	cents_ready += cents_per_loop;
	investment_account += investment_account * investment_rate;
}

// collect cents
function do_option1() {
	obj_game_manager.cents += cents_ready;
	cents_ready = 0;
}
// Invest
function do_option2() {
	var investment_amount = cents_per_loop;
	if (obj_game_manager.cents < investment_amount) {
		return;
	}
	obj_game_manager.cents -= investment_amount;
	investment_account += investment_amount;
}
// Collect investment
function do_option4() {
	obj_game_manager.cents += investment_account;
	investment_account = 0;
}
// Upgrade
function do_option3() {
	if (obj_game_manager.cents < cost_to_upgrade) {
		return;	
	}
	obj_game_manager.cents -= cost_increment
	cost_to_upgrade += cost_increment
	cents_per_loop += cents_upgrade_increment;
	investment_rate += investment_rate_upgrade_increment;
}

function set_text() {
	option1_description = "Collect " + str(cents_ready) + " !"
	option2_description = "Invest " + str(cents_per_loop) + " 🥇, at a rate of " + str(investment_rate) + "\nCurrent Assets: " + str(investment_account);
	option3_description = "Upgrade cents / Loop & Rate for: " + str(cost_to_upgrade) + "\nNext Level:\ncents / Loop: " + str(cents_per_loop + cents_upgrade_increment) + "\nRate: " + str(investment_rate + investment_rate_upgrade_increment)
	option_descriptions = [option1_description, option2_description, option3_description];
}
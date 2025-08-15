// Angle the pig
image_angle = 85;

// Inherit the parent event
event_inherited();

building_layer_name = "BankUI"; 
pennies_ready = 0;
pennies_per_loop = 100;

investment_account = 0;
investment_rate = 0.03;

cost_to_upgrade = 1;
cost_increment = 1;
pennies_upgrade_increment = 10;
investment_rate_upgrade_increment = 0.01;

function reach_building() {
	pennies_ready += pennies_per_loop;
	investment_account += investment_account * investment_rate;
	obj_tutorial_manager.resolve_step("stop_at_bank");
}

function do_option1() {
	// Collect pennies
	obj_game_manager.pennies += pennies_ready;
	pennies_ready = 0;
	
	obj_tutorial_manager.resolve_step("get_pennies");
}

function do_option2() {
	// Invest
	if (obj_tutorial_manager.is_active()) { return; }
	
	var investment_amount = pennies_per_loop;
	if (obj_game_manager.pennies < investment_amount) {
		return;
	}
	obj_game_manager.pennies -= investment_amount;
	investment_account += investment_amount;
}

function do_option4() {
	// Collect investment
	obj_game_manager.pennies += investment_account;
	investment_account = 0;
}

function do_option3() {
	// Upgrade
	if (obj_game_manager.imagination < cost_to_upgrade) {
		return; // No funds
	}
	obj_game_manager.imagination -= cost_increment
	cost_to_upgrade += cost_increment
	pennies_per_loop += pennies_upgrade_increment;
	investment_rate += investment_rate_upgrade_increment;
}

function set_text() {
	option1_description = "Collect " + str(pennies_ready) + "!\nCurrently collecting " + str(pennies_per_loop) + " pennies / Loop. Stop at the bank to collect."
	option2_description = "Invest " + str(pennies_per_loop) + " ©, at a rate of " + str(investment_rate) + "\nCurrent Assets: " + str(investment_account) + "\nAssets accumulate interest over time.";
	option3_description = "Upgrade pennies / Loop & Rate for: " + str(cost_to_upgrade) + " Imagination" + "\nNext Level:\n    © / Loop: " + str(pennies_per_loop + pennies_upgrade_increment) + " Rate: " + str(investment_rate + investment_rate_upgrade_increment)
	option_descriptions = [option1_description, option2_description, option3_description];
}
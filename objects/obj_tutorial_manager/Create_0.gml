event_inherited();

obj_train.should_move = false;

step_names = [
	"welcome",
	"stop_at_bank",
	"get_pennies",
	"bank_info",
	"stop_at_station",
	"buy_car",
	"station_info",
	"stop_at_crane",
	"buy_turret",
	"crane_info",
	"open_toy_box",
	"get_item",
	"kill_enemies",
	"win_info",
	"good_luck"
]

step_text = [
	"Welcome to Chugga Chugga Loop Loop!",
	"Click on the Piggy Bank to schedule a stop there.",
	"Get some Pennies!",
	"You can upgrade the Piggy Bank more later. Close the menu to continue.",
	"Click on the Train Station to schedule a stop there.",
	"Buy a new car for your train!",
	"You can upgrade the Train Station more later. Close the menu to continue.",
	"Click on the Crane to schedule a stop there.",
	"Buy a Dart Gun for your new train car!",
	"You can upgrade the Crane more later. Close the menu to continue.",
	"Click on the Toy Box in the center of the loop.",
	"Use your Imagination to Pick a Random Toy!",
	"Defeat enemies to gain more Imagination.",
	"If you have enough Imagination, you can win the game!",
	"Good luck, and full steam ahead!"
]

function resolve_step(step_name) {
	if (at_step(step_name)) {
		next_step();
	}
}

function at_step(step_name) {
	return step_names[step_index] == step_name;
}

function next_step() {
	if (is_active()) {
		step_index++;
		obj_notifications_manager.show(spr_question_mark, step_text[step_index], 5);
	}
	else {
		end_tutorial();
	}
}


function is_active() {
	return step_index < array_length(step_text) - 1;
}

function is_menu_close_active() {
	var valid_close_steps = [
		"bank_info", "station_info", "crane_info"
	];
	return array_contains(valid_close_steps, step_names[step_index]);
}

function end_tutorial() {
	step_index = array_length(step_text) - 1;
	obj_train.should_move = true;
	obj_game_manager.kickoff();
	
	// Clear notifications
	with(obj_notification) {
		instance_destroy(self);
	}
}

next_step()
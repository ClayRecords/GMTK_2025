obj_train.should_move = false;

step_names = [
	"welcome",
	"stop_at_bank",
	"get_pennies",
	"bank_info",
	"stop_at_station",
	"buy_car",
	"stop_at_crane",
	"buy_turret",
	"open_toybox",
	"get_item",
	"win_info",
	"good_luck"
]

step_text = [
	"Welcome to Chugga Chugga Loop Loop!",
	"Click on the Piggy Bank to schedule a stop there.",
	"Get some Pennies!",
	"Upgrade the Piggy Bank with the other options later.",
	"Click on the Train Station to schedule a stop there.",
	"Buy a new car for your train!",
	"Click on the Crane to schedule a stop there.",
	"Buy a turret for your new train car!",
	"Click on the Toy Box in the center of the loop.",
	"Use your Imagination to get a random item!",
	"If you have enough Imagination, you can win the game!",
	"Good luck, and full steam ahead!"
]

function at_step(step_name) {
	return step_names[step_index] == step_name;
}

function next_step() {
	step_index++;
	obj_notifications_manager.show(spr_question_mark, step_text[step_index]);
}

function skip_tutorial() {
	step_index = array_length(step_text) - 1;
}

function is_active() {
	return step_index < array_length(step_text) - 1;
}

next_step()
next_step()
image_angle = 190;
building_layer_name = "ToyBoxUI";

random_toy_cost = 1;
heal_cost = 3;
heal_amount = max_health / 4;
win_cost = 100;

possible_toys = ["Baseball", "MouseTrap", "Block"]

function toggle_interact_menu() {
    if (is_string(building_layer_name)) {
        var current_state = layer_get_visible(building_layer_name);
        layer_set_visible(building_layer_name, !current_state);
    }
}
function open_toy_box_UI() {
	prepare_toybox();
	obj_building_manager.current_building = self;
	toggle_interact_menu();
	obj_tutorial_manager.resolve_step("open_toy_box");
}
function leave_building() {
	toggle_interact_menu();
}

function do_option1() {
	// Pick a random toy from the toy box
	if (obj_game_manager.imagination < random_toy_cost) {
		return; // No funds
	}
	
	var random_trap = pick_random_valid_toy(possible_toys)
	if (!instance_exists(random_trap)) {
		return; // At max traps
	}
	
	random_trap.quantity += 1;
	obj_game_manager.imagination -= random_toy_cost;

	obj_tutorial_manager.resolve_step("get_item");
	obj_tutorial_manager.resolve_step("kill_enemies");
	obj_tutorial_manager.resolve_step("win_info");
	obj_tutorial_manager.resolve_step("good_luck");
}

function do_option2() {
	// Heal toy box
	if (current_health == max_health) {
		return; // Already at full health
	}
	
	if (obj_game_manager.imagination < heal_cost) {
		return; // No funds
	}
	
	obj_game_manager.imagination -= heal_cost;
	current_health += heal_amount;
	if (current_health > max_health) {
		current_health = max_health;
	}
}

function do_option3() {
	// Win
	if (obj_game_manager.imagination < win_cost) {
		return; // No funds
	}
	obj_game_manager.imagination -= win_cost;
	obj_game_manager.end_game(true);
}

function pick_random_valid_toy(possible_toys) {
    var traps = array_create(0); // valid options

    // 1. Collect all trap instances that match conditions
    with (obj_hotbar_button) {
        if (
            array_contains(other.possible_toys, trap_name) &&
            quantity < max_quantity
        ) {
            array_push(traps, id);
        }
    }

    // 2. Return random one if any
    if (array_length(traps) > 0) {
        var rand_index = irandom(array_length(traps) - 1);
        return traps[rand_index];
    }

    return noone; // nothing valid
}

function prepare_toybox() {
	set_text();
}

function set_text() {
	option1_description = "Pick a random toy from the toy box!\nCosts " + str(random_toy_cost) + " Imagination";
	option2_description = "Heal your toy box!\nCosts " + str(heal_cost) + " Imagination";
	option3_description = "Use " + str(win_cost) + " Imagination to win!";
	option_descriptions = [option1_description, option2_description, option3_description];
}
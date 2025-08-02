self.max_health = 100;
self.current_health = self.max_health;
building_layer_name = "ToyBoxUI";

function toggle_interact_menu() {
    if (is_string(building_layer_name)) {
        var current_state = layer_get_visible(building_layer_name);
        layer_set_visible(building_layer_name, !current_state);
    }
}
function open_toy_box_UI() {
	prepare_toybox();
	toggle_interact_menu();
	obj_building_manager.current_building = self;	
}
function leave_building() {
	print("Left building");
	toggle_interact_menu();
}

function prepare_toybox() {
	set_text();
}
function set_text() {
	option1_description = "1";
	option2_description = "2";
	option3_description = "3";
	option_descriptions = [option1_description, option2_description, option3_description];
}

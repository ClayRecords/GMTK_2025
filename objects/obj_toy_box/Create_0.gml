self.max_health = 100;
self.current_health = self.max_health;
building_layer_name = "ToyBoxUI";
function toggle_interact_menu() {
    if (is_string(building_layer_name)) {
        var current_state = layer_get_visible(building_layer_name);
        layer_set_visible(building_layer_name, !current_state);
    }
}

function leave_building() {
	print("Left building")
	toggle_interact_menu();
}

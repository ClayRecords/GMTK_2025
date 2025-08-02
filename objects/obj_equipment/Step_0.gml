if (!is_active) {
	x = mouse_x;
	y = mouse_y;

	//drop on click		
	if (mouse_check_button_pressed(mb_left)) {
		var hotbar_ui = layer_get_flexpanel_node("HotbarUI");
		var hotbar_panel = flexpanel_node_get_child(hotbar_ui, "Hotbar");
		var hotbar_position = flexpanel_node_layout_get_position(hotbar_panel, false);
		var clicked_on_hotbar = point_in_rectangle(
			mouse_x, mouse_y,
			hotbar_position.left,
			hotbar_position.top,
			hotbar_position.left + hotbar_position.width,
			hotbar_position.top + hotbar_position.height
		)
		
		var my_trap_name = trap_name;

		if (clicked_on_hotbar) {
			with(obj_hotbar_button) {
				if (trap_name == my_trap_name) {
					quantity += 1;
				}
			}
			
			instance_destroy(self)
		} else {
			is_active = true;
		}
	}
}
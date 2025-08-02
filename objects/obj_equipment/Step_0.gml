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

		if (clicked_on_hotbar) {
		} else {
			
		is_active = true;
		}
	}
}
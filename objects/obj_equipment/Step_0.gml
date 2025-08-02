if (!is_active) {
	x = mouse_x;
	y = mouse_y;

	//drop on click		
	if (mouse_check_button_pressed(mb_left)) {
		is_active = true;
	}
}
if (obj_tutorial_manager.is_active()) {
	if (obj_tutorial_manager.close_menu_active()) {
		obj_building_manager.current_building.leave_building();
	}
	return;
}

obj_building_manager.current_building.leave_building();
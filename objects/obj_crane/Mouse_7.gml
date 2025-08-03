event_inherited();

if (obj_tutorial_manager.at_step("stop_at_crane") && stopsign.should_stop) {
	obj_train.should_move = true;
}
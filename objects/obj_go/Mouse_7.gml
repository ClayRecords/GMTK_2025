should_stop = !should_stop;

if (should_stop) {
	if (obj_tutorial_manager.at_step("stop_at_bank") && self.id == obj_bank.stopsign.id) {
		obj_train.should_move = true;
	}

	else if (obj_tutorial_manager.at_step("stop_at_station") && self.id == obj_train_upgrader.stopsign.id) {
		obj_train.should_move = true;
	}
	
	else if (obj_tutorial_manager.at_step("stop_at_crane") && self.id == obj_crane.stopsign.id) {
		obj_train.should_move = true;
	}
}
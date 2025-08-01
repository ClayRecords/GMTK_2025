enter_building = function() {
	// Stop train
	// Open Menu
	do_building_interaction() // Generic building interaction function to be defined in child class
};

leave_building = function() {
	// DO NOT OVERRIDE
	// Close menu
	// Resume train canMove
}

if (keyboard_check_pressed(ord("E"))) {
    enter_building();
}

// Add do_building_interaction function
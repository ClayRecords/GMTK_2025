just_entered = false

function enter_building() {
	// Stop train
	// Open Menu
	print("Tried to enter building");
	if (not just_entered) {
		print("Entered building");
		do_building_interaction(); // Generic building interaction function to be defined in child class
	}
	just_entered = true
};

function leave_building() {
	just_entered = false
	// DO NOT OVERRIDE
	// Close menu
	// Resume train canMove
}



// Add do_building_interaction function
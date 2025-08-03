// Play
if (option_num == 1) {
	layer_set_visible("MainMenu", false);
	layer_set_visible("MainMenuBackground", false);
	room_goto(Room_TrainTrack);
}
// Help
else if (option_num == 2) {
	layer_set_visible("MainMenu", false);
	layer_set_visible("HelpPage", true);
	
}
// About
else if (option_num == 3) {
	layer_set_visible("MainMenu", false);
	layer_set_visible("AboutPage", true);
}
// Quit
else if (option_num == 4) {
	game_end();
}

// Back
else if (option_num == 5) {
	if (room == Room1) {
		layer_set_visible("MainMenu", true);

	}
	layer_set_visible("HelpPage", false);
	layer_set_visible("AboutPage", false);
}
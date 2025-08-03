// resume
if (option_num == 1) {
	global.pause = !global.pause;
	layer_set_visible(obj_pause_controller.pause_layer, global.pause);
}
// Help
else if (option_num == 2) {
	layer_set_visible("MainMenu", false);
	layer_set_visible("HelpPage", true);
}
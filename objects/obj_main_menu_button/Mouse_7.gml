// Set all layers not visible
var all_layers = layer_get_all();
for (var i = 1; i < array_length(all_layers); i++) {
	layer_set_visible(all_layers[i], false);
}

// Go home
room_goto(Room1)
global.pause = false;
layer_set_visible("NotificationsUI", false);
layer_set_visible("HotbarUI", false);
layer_set_visible("CurrencyUI", false);
layer_set_visible("WaveTrackerUI", false);
layer_set_visible("PauseUI", false);
layer_set_visible("WinPage", false);
layer_set_visible("LosePage", false);
layer_set_visible("HelpPage", false);
layer_set_visible("AboutPage", false);

layer_set_visible("MainMenu", true);

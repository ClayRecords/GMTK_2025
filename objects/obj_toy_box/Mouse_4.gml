if (!global.pause) {
	for (var i = 0; i < array_length(obj_building_manager.building_layers); i++) {
		var is_vis = layer_get_visible(obj_building_manager.building_layers[i]);
		if (is_vis) { return; }
	}
	open_toy_box_UI();
}
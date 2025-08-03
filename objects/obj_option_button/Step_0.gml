if (room == EndRoom) {
	return;
}
var opened_building = obj_building_manager.current_building

if (opened_building) {
	var option_descriptions = opened_building.option_descriptions;
	opened_building.set_text()
	for (var i = 1; i < array_length(option_descriptions) + 1; i++) {
		update_description(i, option_descriptions[i-1]);
	}
}
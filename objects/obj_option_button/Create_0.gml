function update_description(option_num, new_description) {
    var current_building = obj_building_manager.current_building;
	if (not current_building) {
		return
		}
    var building_menu_ui_layer_name = current_building.building_layer_name;

    // Get the root flex node from the UI layer name
    var root_node = layer_get_flexpanel_node(str(building_menu_ui_layer_name));

    // Get the panel node for the selected option (e.g., "Option1", "Option2", etc.)
    var option_panel = flexpanel_node_get_child(root_node, "Option" + string(option_num));

    // Get the description node inside the selected option panel
    var text_panel = flexpanel_node_get_child(option_panel, "Description");

    // Get the struct associated with the description node
    var text_struct = flexpanel_node_get_struct(text_panel);

    // Get the element ID of the font item inside the description node
    var text_element_id = text_struct.layerElements[0].elementId;

    // Update the displayed text
    layer_text_text(text_element_id, new_description);
}


debug = false;
global.one_second = game_get_speed(gamespeed_fps);
gold = 0;
global.default_font = fnt_ui;
global.default_text_color = c_blue;

instance_create_layer(x, y, "Instances", obj_pause_controller);
instance_create_layer(x, y, "Instances", obj_building_manager);

UI_layer_names = ["BankUI"];
font_name = fnt_ui
apply_font_to_ui_panels(UI_layer_names, font_name);

function apply_font_to_ui_panels(panel_names, font) {
    for (var i = 0; i < array_length(panel_names); i++) {
        // Each panel name is assumed to be a top-level node in the flexpanel layer
        var panel_node = layer_get_flexpanel_node(panel_names[i]);
        var struct = flexpanel_node_get_struct(panel_node);

        // Apply font to each FontItem in the panel
        for (var j = 0; j < array_length(struct.layerElements); j++) {
            var element = struct.layerElements[j];
            layer_text_font(element.elementId, font);
        }
    }
}
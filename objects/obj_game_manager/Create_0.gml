global.model_scale = 2;

pennies = 0;
imagination = 0;

instance_create_layer(x, y, "Instances", obj_pause_controller);
instance_create_layer(x, y, "Instances", obj_building_manager);
instance_create_layer(x, y, "Instances", obj_carpet);
instance_create_layer(x, y, "Instances", obj_notifications_manager);
layer_set_visible("HotbarUI", true);
layer_set_visible("PauseButton", true);
layer_set_visible("SpeedControlUI", true);
layer_set_visible("NotificationsUI", true);

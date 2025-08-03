notification_height = 100;
notification_width = display_get_width();

function show(sprite, text) {
	print(notification_height)
	
	var min_y = 0;
	with (obj_notification) {
		min_y = min(y, min_y);
	}

	var notification = instance_create_layer(
		0, min_y - notification_height,
		"NotificationsUI",
		obj_notification,
		{
			sprite: sprite_duplicate(sprite),
			text: text
		}
	)
	set_obj_sprite_size(notification, notification_width, notification_height);
	
	var _notification_height = notification_height;
	with (obj_notification) {
		move_progress = 0;
		start_y = y;
		target_y += _notification_height;
		end_y = target_y;
	}
}
/// @description Change train speed

function increase_train_speed() {
	var new_train_speed = max(train_speed - 1, min_train_speed);
	train_speed = new_train_speed;
}

function decrease_train_speed() {
	var new_train_speed = min(train_speed + 1, max_train_speed);
	train_speed = new_train_speed;
}

// Increase train speed on left arrow press
if (keyboard_check(vk_left) && alarm[0] < 0) {
	increase_train_speed()
	alarm[0] = duration_between_speed_change
}

// Decrease train speed on right arrow press
if (keyboard_check(vk_right) && alarm[1] < 0) {
    decrease_train_speed()
	alarm[1] = duration_between_speed_change
}
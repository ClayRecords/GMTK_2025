/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_left)) {
    // Code to execute when the left arrow key is pressed
	var new_train_speed = max(train_speed - 1, min_train_speed);
	train_speed = new_train_speed;
}

if (keyboard_check_pressed(vk_right)) {
    // Code to execute when the right arrow key is pressed
    var new_train_speed = min(train_speed + 1, max_train_speed);
	train_speed = new_train_speed;
}
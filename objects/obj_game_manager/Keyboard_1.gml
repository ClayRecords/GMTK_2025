

/// @description Change room by key press
if(global.pause){
	exit;	
}

if (keyboard_check(ord("0"))) {
	room_goto(Room_TrainTrack)
}

if (keyboard_check(ord("1"))) {
    room_goto(0);
}

if (keyboard_check(ord("2"))) {
    room_goto(1);
}

if (keyboard_check(ord("3"))) {
    room_goto(2);
}

if (keyboard_check(ord("4"))) {
    room_goto(3);
}

if (keyboard_check(ord("5"))) {
    room_goto(4);
}

if (keyboard_check(ord("6"))) {
    room_goto(5);
}

if (keyboard_check_pressed(ord("M"))) {
	var shop_layer_name = "ShopUI"; 
	var current_state = layer_get_visible(shop_layer_name);
    layer_set_visible(shop_layer_name, !current_state);
}
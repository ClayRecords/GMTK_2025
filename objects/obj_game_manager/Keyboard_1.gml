

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
    room_goto(Dane_Room);
}

if (keyboard_check(ord("3"))) {
    room_goto(Josiah_Room);
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

if(keyboard_check(ord("K"))){
var px = mouse_x;
var py = mouse_y;

var lyr = layer_get_id("Equipment");
instance_create_layer(px, py, lyr, obj_mouse_trap);
}

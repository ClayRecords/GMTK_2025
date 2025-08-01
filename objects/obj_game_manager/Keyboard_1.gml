

/// @description Change room by key press
if(global.pause){
	exit;	
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
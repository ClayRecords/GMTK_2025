/// @description Draw current room name

var room_name = room_get_name(room);

draw_text(x, y, room_name);
draw_text(x + 60, y, "Gold:  " + str(gold));

if (debug) {
	draw_text(room_width - 20, y, "*")
}
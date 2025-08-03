var distance_to_train = point_distance(stopsign.x, stopsign.y, obj_train.x, obj_train.y);

if (distance_to_train < distance_to_stop_at_building && !just_passed_or_entered){
    pass_or_enter_building();
}

else if (distance_to_train > distance_to_stop_at_building && just_passed_or_entered == true) {
	just_passed_or_entered = false;
}


var inst = clickbox; // instance ID of the clickbox in variable definition
if (instance_exists(inst)) {
    var spr = inst.sprite_index;

    var ox = sprite_get_xoffset(spr);
    var oy = sprite_get_yoffset(spr);
    var w = sprite_get_width(spr) * inst.image_xscale;
    var h = sprite_get_height(spr) * inst.image_yscale;

    var left   = inst.x - ox * inst.image_xscale;
    var top    = inst.y - oy * inst.image_yscale;
    var right  = left + w;
    var bottom = top + h;

    mouse_over = point_in_rectangle(mouse_x, mouse_y, left, top, right, bottom);

	//if (mouse_over) {
	//    // Hide system cursor and draw custom one in Draw GUI
	//    window_set_cursor(cr_none);
	//    cursor_sprite = spr_cursor_hand;
	//} else {
	//    window_set_cursor(cr_default);
	//    cursor_sprite = noone;
	//}
	

	if (mouse_check_button_pressed(mb_left)) {
		if (point_in_rectangle(mouse_x, mouse_y, left, top, right, bottom)) {
        // Mouse clicked on the buidling clickbox
        stopsign.should_stop = !stopsign.should_stop
		}
	}
} 
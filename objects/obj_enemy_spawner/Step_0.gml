if (mouse_check_button_pressed(mb_right)) {
    var xx = mouse_x;
    var yy = mouse_y;

	instance_create_layer(xx, yy, "Instances", obj_soldier);
}
hovered = point_in_rectangle(mouse_x, mouse_y, x, y, x + width, y + height);

if (hovered && mouse_check_pressed(mb_left)) {
    if (is_undefined(function_call) == false) {
        function_call();
    }
}

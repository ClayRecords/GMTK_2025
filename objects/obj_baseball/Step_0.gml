if (!active) {
    // follow mouse (room/world coords)
    x = mouse_x;
    y = mouse_y;

    // drop on click
    if (mouse_check_button_pressed(mb_left)) {
        active = true;
    }
}
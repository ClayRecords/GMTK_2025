if (!is_active) {
    draw_set_alpha(0.5);
    draw_sprite(equipment_sprite, 0, x, y);
    draw_set_alpha(1);
} else {
    draw_sprite(equipment_sprite, 0, x, y);
}
if (!active) {
    draw_set_alpha(0.5);
    draw_sprite(spr_baseball, 0, x, y);
    draw_set_alpha(1);
} else {
    draw_sprite(spr_baseball, 0, x, y);
}
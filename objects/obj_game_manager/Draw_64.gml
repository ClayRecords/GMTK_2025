/// @description Draw pennies
draw_set_font(fnt_ui);
draw_set_colour(c_blue);
draw_set_halign(fa_left);

draw_text(x + 30, y + 25, "Pennies:  " + str(pennies) + "©");
draw_text(x + 30, y + 55, "Imagination: " + str(imagination));


if (debug) {
	//draw_sprite(spr_ui_back,1,x + 20,y+5);
	draw_text(x + 30, y + 100, "Debug mode");
	draw_text(x + 30, y + 150, "x: " + string(obj_train.x));
	draw_text(x + 30, y + 200, "y: "+ string(obj_train.y));
	draw_text(x + 30, y + 250, "Speed: "+ string(obj_train.path_speed));

	

}
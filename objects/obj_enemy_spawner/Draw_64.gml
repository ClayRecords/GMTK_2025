/// @description Draw wave counter
var wave_counter_pos_x = room_width / 2;
var wave_counter_pos_y  = 560;

draw_set_halign(fa_center);
draw_set_colour(global.default_text_color);

if (self.wave_index >= 0 && self.active_wave != noone) {
	top_text = "Wave " + str(self.wave_index + 1);
	bottom_text = "";
} else {
	top_text = "Enemies incoming!";
	var time_left = alarm[0] / global.one_second;
	bottom_text = str(ceil(time_left));
}
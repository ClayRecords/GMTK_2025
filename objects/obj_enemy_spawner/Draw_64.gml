/// @description Draw wave counter
var wave_counter_pos_x = room_width / 2;
var wave_counter_pos_y  = 85;

draw_set_halign(fa_center);


if (self.wave_index >= 0 && self.active_wave != noone) {
	draw_text(wave_counter_pos_x, wave_counter_pos_y, "Wave " + str(self.wave_index + 1));
} else {
	draw_text(wave_counter_pos_x, wave_counter_pos_y, "Enemies incoming!");
	var time_left = alarm[0] / global.one_second;
	draw_text(wave_counter_pos_x, wave_counter_pos_y + 20, str(ceil(time_left)));
}
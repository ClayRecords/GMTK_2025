/// @description Change soundtracks

if (main_menu_soundtrack != noone && game_soundtrack != noone) {
	var room_name = room_get_name(room);
	if (room_name == "Room1") {
		audio_sound_gain(game_soundtrack, 0, 2000);
		audio_sound_gain(main_menu_soundtrack, soundtrack_volume, 2000);
	} else if (room_name == "Room_TrainTrack") {
		audio_sound_gain(main_menu_soundtrack, 0, 2000);
		audio_sound_gain(game_soundtrack, soundtrack_volume, 2000);
		
		chuggachugga = audio_play_sound(snd_chugga_chugga, 4, false);
		audio_sound_gain(chuggachugga, soundtrack_volume, 0);
		audio_sound_gain(chuggachugga, 0, 5000);
	}
}
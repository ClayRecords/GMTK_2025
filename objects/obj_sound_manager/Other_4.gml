var room_name = room_get_name(room);

if (room_name == "Room_TrainTrack") {
	audio_sound_gain(main_menu_soundtrack, 0, 2000)
	audio_sound_gain(game_soundtrack, .4, 2000)
}
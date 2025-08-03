// Try to init audio

if (!audio_system_available) {
	print("Checking for audio...")
	audio_system_available = audio_system_is_available();
	if (audio_system_available) {
		play_soundtracks();
	}
}
/// @description PLus simple à gérer ici


//Titlescreen Music

if room == Titre{
	if TITLE_musicplaying == false{
		Titlescreen_music = audio_play_sound(TitlescreenTheme,1, false,0)
	}
	if audio_is_playing(Titlescreen_music) TITLE_musicplaying = true
	audio_sound_gain(Titlescreen_music, 0.5, 100)
}
if room == Game{
	audio_sound_gain(Titlescreen_music, 0, 100)
}


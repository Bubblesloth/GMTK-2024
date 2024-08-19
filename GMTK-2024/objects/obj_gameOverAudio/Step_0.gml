/// @description PLus simple à gérer ici


//Game Over Music

if room == GameOver{
	if GO_musicplaying == false{
		Gameover_music = audio_play_sound(GameOverTheme,1, false,0)
	}
	if audio_is_playing(Gameover_music) GO_musicplaying = true
	audio_sound_gain(Gameover_music, 0.5, 100)
}
if room == Game{
	audio_sound_gain(Gameover_music, 0, 100)
}


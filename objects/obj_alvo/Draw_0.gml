/// colocando a sombra

if hit == true{
	audio_play_sound(snd_hit, 1, false);
	gpu_set_fog(true, c_white,0,0);
	draw_self();
	gpu_set_fog(false, c_white,0,0);
	hit = false
}else {
	draw_self();
}

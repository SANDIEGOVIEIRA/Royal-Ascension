/// colocando a sombra


if hit == true{
	audio_play_sound(snd_hit, 1, false);
	gpu_set_fog(true, c_white,0,0);
	draw_self();
	gpu_set_fog(false, c_white,0,0);
}else {
	draw_self();
}

if dest_x < x{
	image_xscale = -1;	
}else{
	image_xscale = 1;
}

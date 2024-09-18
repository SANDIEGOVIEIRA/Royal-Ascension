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
	image_xscale = -0.8;	
}else{
	image_xscale = 0.8;
}

if alarm[2] >= 0{
	var _sprw = sprite_get_width(spr_inimigo_hud_vida);
draw_sprite_ext(spr_inimigo_barra_vida, 0, x - _sprw/2, y -13, vida/max_vida, 1, 0, c_white, 1);
draw_sprite_ext(spr_inimigo_hud_vida, 0, x - _sprw/2 , y -13, 1, 1, 0, c_white, 1);
}
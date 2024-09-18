/// @description Inserir descrição aqui
script_execute(estado_boss);


if vida <=0{
	obj_personagem.xp += 20;
	global.inimigos_destruidos_ar3 += 1;
        audio_stop_sound(snd_boss_idle);
        audio_som_boss = false;
	instance_destroy();
	//room_goto(Agua6);
}
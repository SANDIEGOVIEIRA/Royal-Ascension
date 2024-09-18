// estado
script_execute(estado);

/// ajeitando a profundidade 
depth = -y;

// morrer
if vida <=0{
	audio_playing2 = false;
	obj_personagem.xp += 8;
	//global.inimigos_destruidos += 1;
	global.inimigos_destruidos_agua4 += 1;
	instance_destroy();
}
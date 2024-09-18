/// @description Inserir descrição aqui
// estado
script_execute(estado);

/// ajeitando a profundidade 
depth = -y;

// morrer
if vida <=0{
	// criar slimes pequenas ao morrer
	//instance_create_layer(355, 192, "Instances", obj_setas);
	//instance_create_layer(355, 252, "Instances", obj_setas);
	global.inimigos_destruidos_sala1 += 1;
	obj_personagem.xp += 120;
	audio_play_sound(ajuda_elixir , 1,false);
	instance_destroy();
}
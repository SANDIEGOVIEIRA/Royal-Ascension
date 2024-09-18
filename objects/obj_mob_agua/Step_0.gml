/// @description Inserir descrição aqui
// estado
script_execute(estado);

/// ajeitando a profundidade 
depth = -y;

// morrer
if vida <=0{
	audio_playing = false;
	// criar slimes pequenas ao morrer
	repeat(2){
	instance_create_layer(x, y, "Instances", obj_slime);
	}
	
global.inimigos_destruidos_agua2 += 1;
global.inimigos_destruidos_agua3 += 2;
	obj_personagem.xp += 8;
	instance_destroy();
}
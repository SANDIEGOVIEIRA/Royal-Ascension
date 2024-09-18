/// @description Inserir descrição aqui
// estado
script_execute(estado);

/// ajeitando a profundidade 
depth = -y;



// morrer
if vida <=0{
	// criar slimes pequenas ao morrer
	//repeat(2){
	//instance_create_layer(x, y, "Instances", obj_slime);
	//}
	audio_playing1 = false;
global.inimigos_destruidos_terra1 += 1;
	obj_personagem.xp += 2;
	instance_destroy();
}
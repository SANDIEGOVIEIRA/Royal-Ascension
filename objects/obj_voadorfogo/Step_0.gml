/// @description Inserir descrição aqui
script_execute(estado_boss);

// Obter a diferença de posição entre o boss e o personagem
if (vida <= 0){
    obj_personagem.xp += 20;
    audio_stop_sound(snd_scream);
	global.inimigos_destruidos_fogo4 += 1;
    audio_som_boss = false;
    instance_destroy();
    //room_goto(Agua6);
}
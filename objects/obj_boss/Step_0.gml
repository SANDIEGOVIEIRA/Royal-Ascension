/// @description Inserir descrição aqui
script_execute(estado_boss);

depth = -y;

if (x < obj_personagem.x) {
    // Se o personagem estiver à direita do boss, inverte a sprite para olhar para a direita
    image_xscale = -0.14; // Garante que a escala horizontal seja padrão (não invertida)
} else {
    // Se o personagem estiver à esquerda do boss, inverte a sprite para olhar para a esquerda
    image_xscale = 0.14; // Inverte a escala horizontal para inverter a sprite
}

if vida <=0{
	obj_personagem.xp += 20;
	var _inst = instance_create_layer(x, y, "Instances", obj_elixir_agua);
_inst.image_xscale = 0.4; // Escala horizontal (largura)
_inst.image_yscale = 0.4; // Escala vertical (altura)
        audio_stop_sound(snd_boss_idle);
        audio_som_boss = false;
	instance_destroy();
	//room_goto(Agua6);
}
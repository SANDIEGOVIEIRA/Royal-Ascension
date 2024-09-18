/// @description Inserir descrição aqui
script_execute(estado_boss);


// Alarme para mudar de posição aleatoriamente
if (alarm[2] <= 0) {
    alarm[2] = irandom_range(300, 500); // Inicializar o alarme se não estiver já configurado
}

if (x < obj_personagem.x) {
    // Se o personagem estiver à direita do boss, inverte a sprite para olhar para a direita
    image_xscale = 0.3; // Garante que a escala horizontal seja padrão (não invertida)
} else {
    // Se o personagem estiver à esquerda do boss, inverte a sprite para olhar para a esquerda
    image_xscale = -0.3; // Inverte a escala horizontal para inverter a sprite
}

if vida <=0{
	obj_personagem.xp += 20;
	var _inst = instance_create_layer(x, y, "Instances", obj_elixir_ar);
_inst.image_xscale = 0.4; // Escala horizontal (largura)
_inst.image_yscale = 0.4; // Escala vertical (altura)
        audio_stop_sound(snd_ar_boss);
        audio_stop_sound(boss_atkar);
        audio_stop_sound(snd_boss_ar_atk);
        audio_som_boss = false;
	instance_destroy();
	//room_goto(Agua6);
}
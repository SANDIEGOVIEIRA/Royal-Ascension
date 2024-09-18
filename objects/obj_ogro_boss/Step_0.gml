/// @description Inserir descrição aqui
// estado
script_execute(estado);

/// ajeitando a profundidade 
depth = -y;

// Clone de Terra
// Verificar se a variável de controle já existe
if (!variable_instance_exists(id, "chuva_criada5")) {
    chuva_criada5 = false;
}

// Criar obj_final_chuva apenas uma vez quando a vida for 2
if (vida == 15 && !chuva_criada5) {
	estado = scr_ogro_idle;
	audio_play_sound(snd_ogro_chamando, 0, false);
	sprite_index = spr_ogro_chamando;
	alarm[6] = 4.1 * room_speed;
	alarm[5] = 10 * room_speed;
    repeat(4){
        var _yy = irandom_range(50,240);
        instance_create_layer(40, _yy, "Instances", obj_goblin);
    }
    chuva_criada5 = true; // Marcar que a chuva já foi criada
}

// morrer
if vida <=0{
	
	var _inst = instance_create_layer(x, y, "Instances", obj_elixir_terra);
	
_inst.image_xscale = 0.4; // Escala horizontal (largura)
_inst.image_yscale = 0.4; // Escala vertical (altura)
	
	obj_personagem.xp += 8;
	audio_play_sound(ajuda_elixir , 1,false);
	audio_stop_sound(snd_ogro);
	instance_destroy();
}
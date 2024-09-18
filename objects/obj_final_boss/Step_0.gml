// Estado
script_execute(estado);

// Ajuste de profundidade e sprite
depth = -y;

// Controle de ataques
if (estado == scr_final_perseguindo) {
    // Lógica de perseguição já existente...
} else if (estado == scr_ataque1) {
    scr_ataque1();
} else if (estado == scr_ataque2) {
    scr_ataque2();
}

// Controle de transições de estado
if (alarm[0] <= 0) {
    if (estado == scr_final_perseguindo) {
        estado = scr_final_escolher_ataque;
        alarm[0] = tempo_intervalo;
    } else {
        estado = scr_final_perseguindo;
        alarm[0] = tempo_perseguindo;
    }
}

// Obter a diferença de posição entre o boss e o personagem
var dx = obj_personagem.x - x;
var dy = obj_personagem.y - y;

// Determinar a direção com base na diferença de posição
if (abs(dx) > abs(dy)) {
    // Movimento mais horizontal
    if (dx > 0) {
        sprite_index = spr_final_direita; // Quando o personagem está à direita
    } else {
        sprite_index = spr_final_esquerda; // Quando o personagem está à esquerda
    }
} else {
    // Movimento mais vertical
    if (dy > 0) {
        sprite_index = spr_final_boss; // Quando o personagem está abaixo
    } else {
        sprite_index = spr_final_cima; // Quando o personagem está acima
    }
}


// Clone de agua
// Verificar se a variável de controle já existe
if (!variable_instance_exists(id, "chuva_criada")) {
    chuva_criada = false;
}

// Criar obj_final_chuva apenas uma vez quando a vida for 2
if (vida == 52 && !chuva_criada) {
    repeat(3){
        var _xx = irandom_range(80, 480);
        var _yy = irandom_range(30,250);
        instance_create_layer(_xx, _yy, "Instances", obj_clone_boss);
    }
    chuva_criada = true; // Marcar que a chuva já foi criada
}

// Clone de fogo
// Verificar se a variável de controle já existe
if (!variable_instance_exists(id, "chuva_criada2")) {
    chuva_criada2 = false;
}

// Criar obj_final_chuva apenas uma vez quando a vida for 2
if (vida == 12 && !chuva_criada2) {
    repeat(3){
        var _xx = irandom_range(80, 480);
        var _yy = irandom_range(30,250);
        instance_create_layer(_xx, _yy, "Instances", obj_clone_boss_f);
    }
    chuva_criada2 = true; // Marcar que a chuva já foi criada
}

// Clone de Terra
// Verificar se a variável de controle já existe
if (!variable_instance_exists(id, "chuva_criada1")) {
    chuva_criada1 = false;
}

// Criar obj_final_chuva apenas uma vez quando a vida for 2
if (vida == 76 && !chuva_criada1) {
    repeat(3){
        var _xx = irandom_range(80, 480);
        var _yy = irandom_range(30,250);
        instance_create_layer(_xx, _yy, "Instances", obj_clone_boss_t);
    }
    chuva_criada1 = true; // Marcar que a chuva já foi criada
}

// Clone de Ar
// Verificar se a variável de controle já existe
if (!variable_instance_exists(id, "chuva_criada3")) {
    chuva_criada3 = false;
}

// Criar obj_final_chuva apenas uma vez quando a vida for 2
if (vida == 32 && !chuva_criada3) {
    repeat(3){
        var _xx = irandom_range(80, 480);
        var _yy = irandom_range(30,250);
        instance_create_layer(_xx, _yy, "Instances", obj_clone_boss_ar);
    }
    chuva_criada3 = true; // Marcar que a chuva já foi criada
}

// Morrer
if (vida <= 0) {
    obj_personagem.xp += 20;
	var _inst = instance_create_layer(x, y, "Instances", obj_final_elixir);
_inst.image_xscale = 0.4; // Escala horizontal (largura)
_inst.image_yscale = 0.4; // Escala vertical (altura)
        audio_stop_sound(snd_boss_idle);
        audio_som_boss = false;
    instance_destroy();
}

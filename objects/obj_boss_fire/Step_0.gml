/// @description Inserir descrição aqui
script_execute(estado_boss);

// Verifica a posição do personagem em relação ao boss
if (y > obj_personagem.y) {
    // Se o personagem estiver acima do boss, troca para a sprite de costas
    sprite_index = spr_bossfogo_costas;
} else {
    // Caso contrário, usa a sprite padrão (frente ou lado)
    sprite_index = spr_bossfogo_parado; // Substitua 'spr_boss_idle' pela sprite padrão
}

if (x < obj_personagem.x) {
    // Se o personagem estiver à direita do boss, inverte a sprite para olhar para a direita
    image_xscale = 1; // Garante que a escala horizontal seja padrão (não invertida)
} else {
    // Se o personagem estiver à esquerda do boss, inverte a escala para olhar para a esquerda
    image_xscale = -1; // Inverte a escala horizontal para inverter a sprite
}

if (vida <= 0) {
    obj_personagem.xp += 20;
    var _inst = instance_create_layer(x, y, "Instances", obj_elixir_fogo);
    _inst.image_xscale = 0.4; // Escala horizontal (largura)
    _inst.image_yscale = 0.4; // Escala vertical (altura)
    audio_stop_sound(snd_bater_asas);
    audio_stop_sound(snd_boss1);
    audio_stop_sound(soundd_track_fogo);
    audio_som_boss = false;
    instance_destroy();
    //room_goto(Agua6);
}

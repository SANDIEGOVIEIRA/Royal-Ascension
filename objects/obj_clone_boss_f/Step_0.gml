
/// Ajeitando a profundidade 
depth = -y;

// Obter a diferença de posição entre o boss e o personagem
var dx = obj_personagem.x - x;
var dy = obj_personagem.y - y;

// Determinar a direção com base na diferença de posição
if (abs(dx) > abs(dy)) {
    // Movimento mais horizontal
    if (dx > 0) {
        sprite_index = spr_clone_direita_f; // Quando o personagem está à direita
    } else {
        sprite_index = spr_clone_esquerda_f; // Quando o personagem está à esquerda
    }
} else {
    // Movimento mais vertical
    if (dy > 0) {
        sprite_index = spr_clone_f; // Quando o personagem está abaixo
    } else {
        sprite_index = spr_clone_cima_f; // Quando o personagem está acima
    }
}


 if (alarm[3] <= 0) {
        if (!audio_playing_bossatk) {
            audio_play_sound(boss_atk, 0, false);
            audio_playing_bossatk = true;
        }
        
        var _inst = instance_create_layer(x, y, "Instances", obj_final_projetil3);
        _inst.speed = 2; // Velocidade do projétil
        _inst.direction = point_direction(x, y, obj_personagem.x, obj_personagem.y);
        
        alarm[3] = 150; // Tempo entre os disparos
    }

// Morrer
if (vida <= 0) {
    obj_personagem.xp += 1;
    audio_playing = false;
    instance_destroy();
}

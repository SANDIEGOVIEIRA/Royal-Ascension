// estado
script_execute(estado);

/// ajeitando a profundidade 
depth = -y;

var dx = obj_personagem.x - x;
var dy = obj_personagem.y - y;

if (abs(dx) > abs(dy)) {
    // Movimento mais horizontal
    if (dx > 0) {
        sprite_index = spr_javali_atk_direita; // Quando o personagem está à direita
    } else {
        sprite_index = spr_javali_atk_direita; // Quando o personagem está à esquerda
    }
} else {
    // Movimento mais vertical
    if (dy > 0) {
        sprite_index = spr_javali_atk_frente; // Quando o personagem está abaixo
    } else {
        sprite_index = spr_javali_atk_costas; // Quando o personagem está acima
    }
}

// morrer
if vida <=0{
	audio_playing2 = false;
	obj_personagem.xp += 8;
	//global.inimigos_destruidos += 1;
	global.inimigos_destruidos_fogo4 += 1;
	global.inimigos_destruidos_fogo3 += 1;
	instance_destroy();
}
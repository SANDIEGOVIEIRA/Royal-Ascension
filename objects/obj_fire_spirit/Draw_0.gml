/// Colocando a sombra
var scale_x = 0.21; // Fator de escala para largura
var scale_y = 0.21; // Fator de escala para altura

// Determinar a escala X com base na direção do movimento
var scale_dir = sign(dest_x - x);

if hit == true {
    gpu_set_fog(true, c_white, 0, 0);
    draw_sprite_ext(sprite_index, image_index, x, y, scale_x * scale_dir, scale_y, 0, c_white, 1);
    gpu_set_fog(false, c_white, 0, 0);
} else {
    draw_sprite_ext(sprite_index, image_index, x, y, scale_x * scale_dir, scale_y, 0, c_white, 1);
}

// Desenhar a barra de vida
if alarm[2] >= 0 {
    var _sprw = sprite_get_width(spr_inimigo_hud_vida);
    draw_sprite_ext(spr_inimigo_barra_vida, 0, x - _sprw/2, y - 8, vida/max_vida, 1, 0, c_white, 1);
    draw_sprite_ext(spr_inimigo_hud_vida, 0, x - _sprw/2 , y - 8, 1, 1, 0, c_white, 1);
}

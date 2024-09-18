// Verificar se a animação chegou ao último frame
if (image_index >= sprite_get_number(sprite_index) - 1) {
    // Parar a animação no último frame
    image_speed = 0;
    // Garantir que o objeto permaneça no último frame
    image_index = sprite_get_number(sprite_index) - 1;
}

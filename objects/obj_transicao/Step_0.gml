/// Step
if (estado == 0) {
    // Animando a entrada
    img += img_vel_entrada;
    
    if (img >= img_num + 6) {
        // Quando a animação de entrada estiver completa, mudar para o estado de saída
        estado = 1;
    }
} else if (estado == 1) {
    tempo_contador += 1 / game_get_speed(gamespeed_fps);
    if (tempo_contador >= tempo_para_destruir) {
        instance_destroy();
    }
}
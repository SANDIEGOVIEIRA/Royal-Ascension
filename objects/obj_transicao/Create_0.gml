/// Create
tamanho = sprite_get_width(spr_quad);
cols = 9;
lins = 15;

// Variáveis para a animação da sprite
img = 0;
img_vel_entrada = sprite_get_speed(spr_quad) / (game_get_speed(gamespeed_fps) * 2); 
img_vel_saida = sprite_get_speed(spr_quad) / (game_get_speed(gamespeed_fps) * 4); // Velocidade de saída reduzida por um quarto
img_num = sprite_get_number(spr_quad) - 1;
estado = 0; // 0 para entrada, 1 para saída

// Contador de tempo para a animação de saída
tempo_para_destruir = 1.3; // Defina o tempo desejado aqui
tempo_contador = 0;

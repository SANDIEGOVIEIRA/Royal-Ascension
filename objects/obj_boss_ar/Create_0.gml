/// @description Inserir descrição aqui
audio_playing_bossatkar = false;
audio_som_boss = false;


estado_boss = scr_bossar_escolher_ataque;
max_vida = 90;
vida = max_vida;

ataques = 5;
image_xscale = 0.3;

posicao_1_x = 13; // Posição x no lado esquerdo da sala
posicao_2_x = room_width - 13; // Posição x no lado direito da sala
posicao_y = y; // Mantém a posição y atual, você pode ajustar se necessário

proxima_posicao = posicao_2_x; // Definimos a próxima posição para o lado direito inicialmente
alarm[2] = irandom_range(300, 500); // Alarme disparará após 1 a 3 segundos (60 a 180 steps)

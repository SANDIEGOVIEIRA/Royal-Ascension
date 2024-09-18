/// @description Inserir descrição aqui
hit = false;
audio_playing_bossatk = false;
audio_som_boss = false;
estado_boss = scr_firee_escolher_ataque;
max_vida = 136;
vida = max_vida;
ataques = 5;
image_xscale = 1;

// Variável para controlar o tempo de espera entre ataques
tempo_espera_ataque =  4.5 * room_speed; // Ajuste conforme necessário

// Iniciar o alarme de espera entre ataques
alarm[0] = tempo_espera_ataque;

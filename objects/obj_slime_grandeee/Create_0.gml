/// @description Inserir descrição aqui
audio_playing = false;

// Inicializa o estado inicial do slime
estado = scr_slime_escolher_estado;

// Inicializa as variáveis de vida e sombra
max_vida = 18;
vida = max_vida;

// Define a sprite inicial como parado
sprite_index = spr_lavas_parado;

// Inherit the parent event (se necessário)
event_inherited();


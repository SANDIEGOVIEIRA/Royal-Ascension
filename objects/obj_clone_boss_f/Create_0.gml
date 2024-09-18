/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Inherit the parent event
event_inherited();

sombra = spr_slime_sombra;
estado = scr_final_perseguindo;

/// @description Inserir descrição aqui
audio_playing_bossatk = false;
audio_som_boss = false;

// movimentação
prox_estado = 0;

hveloc = 0;
vveloc = 0;
veloc = 0.2;
veloc_perseg = 0.8;

dest_x = 0;
dest_y = 0;

alarm[3] = 40;
alarm[0] = 1;

dist_atk = 50000;
dist_no_atk = 10000000;


// combate
max_vida = 1;
vida = max_vida;
empurrar_dir = 0;
empurrar_veloc = 0;
hit = false;

ataques = 5;
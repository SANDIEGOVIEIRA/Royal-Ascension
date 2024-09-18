
event_inherited();

enum Armas{
	Espada,   //0
	Arco,	  //1
	Altura
}

/// Movimentação
direita = -1;
cima = -1;
esquerda = -1;
baixo = -1;

hveloc = 0;
vveloc = 0;
veloc = 2;

veloc_dir = -1;

dir = 0;

gamepad_index = 0;
move_speed = 4;
// Dash
dash_dir = -1;
dash_veloc = 6;


// Estado
estado = scr_personagem_andando;

// Combate
level = 1;
xp = 0;
max_xp[1] = 100;
max_xp[2] = 120;
max_xp[3] = 150;
max_xp[4] = 200;
max_xp[5] = 300;

max_estamina[1] = 20;
max_estamina[2] = 40;
max_estamina[3] = 40;
max_estamina[4] = 60;
max_estamina[5] = 70;
estamina = max_estamina[level];

max_vida [1] = 20;
max_vida [2] = 22;
max_vida [3] = 24;
max_vida [4] = 26;
max_vida [5] = 28;
vida = max_vida[level];

dano[1] = 1;
dano[2] = 2;
dano[3] = 3;
dano[4] = 4;
dano[5] = 4;

tomardano = true;
empurrar_dir = 0;


atacar = false;

dano_alfa = -1;

arma = 0;


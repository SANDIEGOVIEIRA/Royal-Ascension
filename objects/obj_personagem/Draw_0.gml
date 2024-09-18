/// @description Parar ações dele
draw_sprite(spr_personagem_sombra, 0, x, y + 4);
draw_self();

if alarm[3] > 0{
	if image_alpha >= 1{
	dano_alfa = -0.05;
}else if image_alpha <= 0{
	dano_alfa = 0.05;
	}
	image_alpha += dano_alfa;
}else{
	image_alpha = 1;
	}
	
//	Se estiver na sala Menu ele fica sem fazer ação
if room_get_name(room) == "Menu" {
global.dialogo = true;
}	else if room_get_name(room) != "Menu"{
global.dialogo = false
}

/*
if room_get_name(room) == "Primeira" {
global.dialogo = true;
}	else if room_get_name(room) != "Primeira"{
global.dialogo = false
}

if room_get_name(room) == "Segunda" {
global.dialogo = true;
}	else if room_get_name(room) != "Segunda"{
global.dialogo = false
}

if room_get_name(room) == "Terceira" {
global.dialogo = true;
}	else if room_get_name(room) != "Terceira"{
global.dialogo = false
}

if room_get_name(room) == "Quarta" {
global.dialogo = true;
}	else if room_get_name(room) != "Quarta"{
global.dialogo = false
}

if room_get_name(room) == "Quinta" {
global.dialogo = true;
}	else if room_get_name(room) != "Quinta"{
global.dialogo = false
}

if room_get_name(room) == "Sexta" {
global.dialogo = true;
}	else if room_get_name(room) != "Sexta"{
global.dialogo = false
}

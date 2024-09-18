// Os recursos de script mudaram para a v2.3.0; veja

function scr_ogro_vida_zero() {
    // Se a vida do chefe chegar a zero, pare a reprodução de áudio
    if (vida <= 0) {
        audio_stop_sound(snd_ogro);
        audio_playing1 = false;
    }
}

function scr_ogro_colisao(){
	if place_meeting(x + hveloc, y, obj_parede){
	while !place_meeting(x + sign(hveloc), y, obj_parede){	
		x += sign(hveloc);
	}
	hveloc = 0;
}
x += hveloc;



if place_meeting(x, y + vveloc, obj_parede){
	while !place_meeting(x, y + sign(vveloc), obj_parede){
		y += sign(vveloc);
	}
	vveloc = 0;
}
	

y += vveloc;
}

function scr_checar_personagem_ogro(){
	if distance_to_object(obj_personagem) <= dist_atk{
	estado = scr_ogro_perseguindo;
	}
}


function scr_ogro_escolher_estado(){
	scr_checar_personagem_ogro();
	prox_estado = choose(scr_ogro_andando, scr_ogro_parado);
	
	if prox_estado == scr_ogro_andando{
	estado = scr_ogro_andando;
	dest_x = irandom_range(0, room_width);
	dest_y = irandom_range(0, room_height);
	
	}else if prox_estado == scr_ogro_parado{
	estado = scr_ogro_parado;
	
	}
}

function scr_ogro_andando(){
    scr_checar_personagem_ogro();
    image_speed = 1;
    
    // Pare a reprodução de áudio quando o inimigo não estiver mais perseguindo o personagem
    if (audio_playing1) {
        audio_stop_sound(snd_ogro);
        audio_playing1 = false;
    }
    
    if distance_to_point(dest_x, dest_y) > veloc{
    
    var _dir = point_direction(x, y, dest_x, dest_y);
    hveloc = lengthdir_x(veloc, _dir);
    vveloc = lengthdir_y(veloc, _dir);
    
    scr_ogro_colisao();
    } else{
    x = dest_x;
    y = dest_y;
    }
}

function scr_ogro_parado(){
	scr_checar_personagem_ogro();
	image_speed = 0.5;
}

var audio_playing1;

function scr_ogro_perseguindo(){
    image_speed = 1.5;
	
		audio_stop_sound(rastejar);
    
    dest_x = obj_personagem.x;
    dest_y = obj_personagem.y;
    
    var _dir = point_direction(x, y, dest_x, dest_y);
    hveloc = lengthdir_x(veloc_perseg, _dir);
    vveloc = lengthdir_y(veloc_perseg, _dir);
    
    scr_ogro_colisao();
    
    // Se o áudio não estiver sendo reproduzido, inicie a reprodução
    if (!audio_playing1) {
        audio_play_sound(snd_ogro, 0, false);
		audio_stop_sound(rastejar);
        audio_playing1 = true;
    }
    
    if distance_to_object(obj_personagem) >= dist_no_atk{
        estado = scr_ogro_escolher_estado;
    }
}

function scr_ogro_hit(){
	alarm[2] = 180;
	empurrar_veloc = lerp(empurrar_veloc, 0, 0.2);
	hveloc = lengthdir_x(empurrar_veloc, empurrar_dir);
	vveloc = lengthdir_y(empurrar_veloc, empurrar_dir);
	
	
	scr_ogro_colisao();
}

function scr_ogro_idle(){
// Este script define o estado ainativo do boss
image_speed = 1; // Pare a animação se for necessária
hveloc = 0;
vveloc = 0;
veloc_perseg = 0;
veloc = 0;
}
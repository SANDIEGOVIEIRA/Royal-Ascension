// Os recursos de script mudaram para a v2.3.0; veja
function scr_cobra_colisao2(){
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

function scr_checar_personagem_cobra2(){
	if distance_to_object(obj_personagem) <= dist_atk{
	estado = scr_cobra_perseguindo2;
	}
}


function scr_cobra_escolher_estado2(){
	scr_cobra_perseguindo2();
	prox_estado = choose(scr_cobra_andando2, scr_cobra_parado2);
	
	if prox_estado == scr_cobra_andando2{
	estado = scr_cobra_andando2;
	dest_x = irandom_range(0, room_width);
	dest_y = irandom_range(0, room_height);
	
	}else if prox_estado == scr_cobra_parado2{
	estado = scr_cobra_parado2;
	
	}
}

function scr_cobra_andando2(){
    scr_checar_personagem();
    image_speed = 1;
    
    // Pare a reprodução de áudio quando o inimigo não estiver mais perseguindo o personagem
    if (audio_playing1) {
        audio_stop_sound(snd_goblin);
        audio_playing1 = false;
    }
    
    if distance_to_point(dest_x, dest_y) > veloc{
    
    var _dir = point_direction(x, y, dest_x, dest_y);
    hveloc = lengthdir_x(veloc, _dir);
    vveloc = lengthdir_y(veloc, _dir);
    
    scr_cobra_colisao2();
    } else{
    x = dest_x;
    y = dest_y;
    }
}

function scr_cobra_parado2(){
	scr_checar_personagem_cobra2();
	image_speed = 0.5;
}

var audio_playing1;

function scr_cobra_perseguindo2(){
    image_speed = 1.5;
	
		audio_stop_sound(rastejar);
    
    dest_x = obj_personagem.x;
    dest_y = obj_personagem.y;
    
    var _dir = point_direction(x, y, dest_x, dest_y);
    hveloc = lengthdir_x(veloc_perseg, _dir);
    vveloc = lengthdir_y(veloc_perseg, _dir);
    
    scr_cobra_colisao2();
    
    // Se o áudio não estiver sendo reproduzido, inicie a reprodução
    if (!audio_playing1) {
        audio_play_sound(snd_goblin, 0, false);
		audio_stop_sound(rastejar);
        audio_playing1 = true;
    }
    
    if distance_to_object(obj_personagem) >= dist_no_atk{
        estado = scr_cobra_escolher_estado2;
    }
}

function scr_cobra_hit2(){
	alarm[2] = 180;
	empurrar_veloc = lerp(empurrar_veloc, 0, 0.2);
	hveloc = lengthdir_x(empurrar_veloc, empurrar_dir);
	vveloc = lengthdir_y(empurrar_veloc, empurrar_dir);
	
	
	scr_cobra_colisao2();
}

function scr_ogro_idle2(){
// Este script define o estado inativo do boss
image_speed = 1; // Pare a animação se for necessária
hveloc = 0;
vveloc = 0;
veloc_perseg = 0;
veloc = 0;
}
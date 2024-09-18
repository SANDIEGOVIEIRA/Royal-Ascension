// Os recursos de script mudaram para a v2.3.0; veja
function scr_slime_colisao(){
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

function scr_checar_personagem(){
	if distance_to_object(obj_personagem) <= dist_atk{
	estado = scr_slime_perseguindo;
	}
}


function scr_slime_escolher_estado(){
	scr_checar_personagem();
	prox_estado = choose(scr_slime_andando, scr_slime_parado);
	
	if prox_estado == scr_slime_andando{
	estado = scr_slime_andando;
	dest_x = irandom_range(0, room_width);
	dest_y = irandom_range(0, room_height);
	
	}else if prox_estado == scr_slime_parado{
	estado = scr_slime_parado;
	
	}
}

function scr_slime_andando(){
    scr_checar_personagem();
    image_speed = 1;
    
    // Pare a reprodução de áudio quando o inimigo não estiver mais perseguindo o personagem
    if (audio_playing) {
        audio_stop_sound(rastejar);
        audio_playing = false;
    }
    
    if distance_to_point(dest_x, dest_y) > veloc{
    
    var _dir = point_direction(x, y, dest_x, dest_y);
    hveloc = lengthdir_x(veloc, _dir);
    vveloc = lengthdir_y(veloc, _dir);
    
    scr_slime_colisao();
    } else{
    x = dest_x;
    y = dest_y;
    }
}

function scr_slime_parado(){
	scr_checar_personagem();
	image_speed = 0.5;
}

var audio_playing;

function scr_slime_perseguindo(){
    image_speed = 1.5;
    
    dest_x = obj_personagem.x;
    dest_y = obj_personagem.y;
    
    var _dir = point_direction(x, y, dest_x, dest_y);
    hveloc = lengthdir_x(veloc_perseg, _dir);
    vveloc = lengthdir_y(veloc_perseg, _dir);
    
    scr_slime_colisao();
    
    // Se o áudio não estiver sendo reproduzido, inicie a reprodução
    if (!audio_playing) {
        audio_play_sound(rastejar, 0, false);
        audio_playing = true;
    }
    
    if distance_to_object(obj_personagem) >= dist_no_atk{
        estado = scr_slime_escolher_estado;
    }
}

function scr_slime_hit(){
	alarm[2] = 180;
	empurrar_veloc = lerp(empurrar_veloc, 0, 0.2);
	hveloc = lengthdir_x(empurrar_veloc, empurrar_dir);
	vveloc = lengthdir_y(empurrar_veloc, empurrar_dir);
	
	
	scr_slime_colisao();
}
// Os recursos de script mudaram para a v2.3.0; veja
function scr_inimigo_colisaoa2(){
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

function scr_checar_personagema2(){
	if distance_to_object(obj_personagem) <= dist_atk{
	estado = scr_inimigo_perseguindoa2;
	}
}

function scr_inimigo_escolher_estadoa2(){
	scr_checar_personagema2();
	image_speed = 1;
	prox_estado = choose(scr_inimigo_andandoa2, scr_inimigo_andandoa2);
	
	if prox_estado == scr_inimigo_andandoa2{
	estado = scr_inimigo_andandoa2;
	dest_x = irandom_range(0, room_width);
	dest_y = irandom_range(0, room_height);
	
	}
}

function scr_inimigo_andandoa2(){
	scr_checar_personagema2();
	image_speed = 1.1;
	
	if distance_to_point(dest_x, dest_y) > veloc{
	
	var _dir = point_direction(x, y, dest_x, dest_y);
	hveloc = lengthdir_x(veloc, _dir);
	vveloc = lengthdir_y(veloc, _dir);
	
	scr_inimigo_colisao();
	} else{
	x = dest_x;
	y = dest_y;
	}
}

var audio_playing2;

function scr_inimigo_perseguindoa2(){
    image_speed = 1.4;
    
    dest_x = obj_personagem.x;
    dest_y = obj_personagem.y;
    
    var _dir = point_direction(x, y, dest_x, dest_y);
    hveloc = lengthdir_x(veloc_perseg, _dir);
    vveloc = lengthdir_y(veloc_perseg, _dir);
    scr_inimigo_colisao();
    
    // Se o áudio não estiver sendo reproduzido, inicie a reprodução
    if (!audio_playing2) {
        audio_play_sound(ghost_atk, 0, false);
        audio_playing2 = true;
    }
    
    if distance_to_object(obj_personagem) >= dist_no_atk{
        sprite_index = spr_spirit_agua_g3;
        estado = scr_inimigo_escolher_estadoa2;
    }
}

function scr_inimigo_hita2(){
	alarm[2] = 180;
	empurrar_veloc = lerp(empurrar_veloc, 0, 0.5);
	hveloc = lengthdir_x(empurrar_veloc, empurrar_dir);
	vveloc = lengthdir_y(empurrar_veloc, empurrar_dir);
	
	
	scr_inimigo_colisaoa2();
}
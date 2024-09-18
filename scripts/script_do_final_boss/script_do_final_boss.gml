// Os recursos de script mudaram para a v2.3.0; veja
function scr_final_colisao(){
	if place_meeting(x + hveloc, y, obj_parede){
	while !place_meeting(x + sign(hveloc), y, obj_parede){	
		x += sign(hveloc);
	}
	hveloc = 0;
}
x += hveloc;

function scr_final_vida_zero() {
    // Se a vida do chefe chegar a zero, pare a reprodução de áudio
    if (vida <= 0) {
        audio_stop_sound(snd_boss_idle);
        audio_som_boss = false;
    }
}

if place_meeting(x, y + vveloc, obj_parede){
	while !place_meeting(x, y + sign(vveloc), obj_parede){
		y += sign(vveloc);
	}
	vveloc = 0;
}
	

y += vveloc;
}

function scr_checar_personagem_final(){
	if distance_to_object(obj_personagem) <= dist_atk{
	estado = scr_final_perseguindo;
	}
}

var audio_playing;

function scr_final_perseguindo() {
    image_speed = 1.5;
    
    dest_x = obj_personagem.x;
    dest_y = obj_personagem.y;
    
    var _dir = point_direction(x, y, dest_x, dest_y);
    hveloc = lengthdir_x(veloc_perseg, _dir);
    vveloc = lengthdir_y(veloc_perseg, _dir);
    
    scr_final_colisao();
    
    if (alarm[3] <= 0) {
        if (!audio_playing_bossatk) {
            audio_play_sound(boss_atk, 0, false);
            audio_playing_bossatk = true;
        }
        
        var _inst = instance_create_layer(x, y, "Instances", obj_final_projetil);
        _inst.speed = 4.5; // Velocidade do projétil
        _inst.direction = point_direction(x, y, obj_personagem.x, obj_personagem.y);
        
        alarm[3] = 30; // Tempo entre os disparos
    }
    if (distance_to_object(obj_personagem) >= dist_no_atk) {
        estado_boss = scr_boss3_escolher_ataque;
    }
    
    if (!audio_playing) {
        audio_play_sound(rastejar, 0, false);
        audio_playing = true;
    }
}

function scr_clones_boss(){
	repeat(4){
		var _xx = irandom_range(x - 100, x +100);
		var _yy = irandom_range(y - 100, y + 100);
		
		instance_create_layer(_xx, _yy, "Instances", obj_final_chuva);
	}
}

function scr_final_hit(){
	alarm[2] = 180;
	empurrar_veloc = lerp(empurrar_veloc, 0, 0.2);
	hveloc = lengthdir_x(empurrar_veloc, empurrar_dir);
	vveloc = lengthdir_y(empurrar_veloc, empurrar_dir);
	
	
	scr_final_colisao();
}

function scr_ataque1() {
    if (!audio_playing_bossatk) {
        audio_play_sound(boss_atk, 0, false);
        audio_playing_bossatk = true;
    }

    var _inst = instance_create_layer(x, y, "Instances", obj_final_projetil2);
    _inst.speed = 3; 
    _inst.direction = point_direction(x, y, obj_personagem.x, obj_personagem.y);

    alarm[3] = 20; // Tempo entre os disparos
}

function scr_ataque2() {
    
		var _inst = instance_create_layer(x, y, "Instances", obj_final_projetil4);
    _inst.speed = 2.3; 
    _inst.direction = point_direction(x, y, obj_personagem.x, obj_personagem.y);

    alarm[3] = 10; // Tempo entre os disparos
	}


function scr_final_escolher_ataque() {
    var ataque = irandom(1);
    if (ataque == 0) {
        estado = scr_ataque1;
    } else {
        //estado = scr_ataque2;
        estado = scr_final_idle;
    }
}

function scr_final_idle(){
// Este script define o estado inativo do boss
image_speed = 1; // Pare a animação se for necessária
hveloc = 0;
vveloc = 0;
}


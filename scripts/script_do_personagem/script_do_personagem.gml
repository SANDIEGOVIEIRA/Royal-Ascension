// Os recursos de script mudaram para a v2.3.0; veja
function scr_personagem_colisao(){
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

function scr_personagem_colisao2(){
if place_meeting(x + hveloc, y, par_obj_cenario){
	while !place_meeting(x + sign(hveloc), y, par_obj_cenario){	
		x += sign(hveloc);
	}
	hveloc = 0;
}
x += hveloc;



if place_meeting(x, y + vveloc, par_obj_cenario){
	while !place_meeting(x, y + sign(vveloc), par_obj_cenario){
		y += sign(vveloc);
	}
	vveloc = 0;
}
	

y += vveloc;
}

var som_andar_tocado = false;

function scr_personagem_andando(){
	if global.dialogo = false{
	som_dash_tocado = false;
direita = keyboard_check(ord("D"));
cima = keyboard_check(ord("W"));
esquerda = keyboard_check(ord("A"));
baixo = keyboard_check(ord("S"));

hveloc = (direita - esquerda);
vveloc = (baixo - cima);

veloc_dir = point_direction(x, y, x + hveloc, y +vveloc);

if hveloc != 0 or vveloc != 0{
	veloc = 2;
}else{
	veloc = 0;
}


hveloc = lengthdir_x(veloc, veloc_dir);
vveloc = lengthdir_y(veloc, veloc_dir);

// Função de movimentação com gamepad
function movimento_gamepad() {
    // Lendo valores dos eixos analógicos
    var axis_lh = gamepad_axis_value(0, gp_axislh);
    var axis_lv = gamepad_axis_value(0, gp_axislv);

    // Calculando velocidade de movimento
    var move_speed = 2; // Ajuste conforme necessário
    var hveloc = axis_lh * move_speed;
    var vveloc = axis_lv * move_speed;

    // Aplicando restrições de movimento
    if (!place_meeting(x + hveloc, y, obj_parede)) {
        x += hveloc;
    }
    if (!place_meeting(x, y + vveloc, obj_parede)) {
        y += vveloc;
    }
}


scr_personagem_colisao();
// Mudar as sprites
dir = floor((point_direction(x, y, mouse_x, mouse_y) +45)/90);
// Reproduzir o som de andar enquanto o personagem está se movendo
        if (hveloc != 0 or vveloc != 0) {
            if (!som_andar_tocado) {
                audio_play_sound(snd_andando, 1, true); // Reproduz o som em loop
                som_andar_tocado = true;
            }
        } else {
            audio_stop_sound(snd_andando); // Para o som quando o personagem para
            som_andar_tocado = false;
        }

if hveloc == 0 and vveloc == 0{
switch dir{
	default:
		sprite_index = spr_personagem_parado_direita_strip6;
	break;
	case 1:
		sprite_index = spr_personagem_parado_cima;
	break;
	case 2:
		sprite_index = spr_personagem_parado_esquerda;
	break;
	case 3:
		sprite_index = spr_personagem_parado_baixo;
	break;
	}
}else{
	switch dir{
	default:
		sprite_index = spr_personagem_correndo_direita;
	break;
	case 1:
		sprite_index = spr_personagem_correndo_cima;
	break;
	case 2:
		sprite_index = spr_personagem_correndo_esquerda;
	break;
	case 3:
		sprite_index = spr_personagem_correndo_baixo;
	break;
	}
  }
}
	#region Dash
	if global.dialogo = false{
	if estamina >= 20{
  if mouse_check_button_pressed(mb_right){
	  estamina -= 20;
	  alarm[1] = 180;
	  alarm[0] = 16;
		dash_dir = point_direction(x, y, mouse_x, mouse_y);
		estado = scr_personagem_dash;
		}
	}
	}
	#endregion
	
	#region Atacando Espada
	if global.dialogo = false{
	if mouse_check_button_pressed(mb_left){
		audio_stop_sound(snd_andando); // Para o som quando o personagem para
            som_andar_tocado = false;
		if arma == Armas.Espada{
		
		image_index = 0;
		switch dir{
			// direita
			default:
			sprite_index = spr_personagem_atacando_direita;
			break;
			// cima
			case 1:
			sprite_index = spr_personagem_atacando_cima;
			break;
			// esquerda
			case 2:
			sprite_index = spr_personagem_atacando_esquerda;
			break;
			// baixo
			case 3:
			sprite_index = spr_personagem_atacando_baixo;
			break;
		}
		estado = scr_personagem_atacando;
		}else if arma == Armas.Arco{
			image_index = 0;
			
			estado = scr_personagem_arco;
		}
	}
}
	#endregion
}

var som_dash_tocado = false;

function scr_personagem_dash() {
	audio_stop_sound(snd_andando); // Para o som quando o personagem para
    som_andar_tocado = false;
    tomardano = false;
    hveloc = lengthdir_x(dash_veloc, dash_dir);
    vveloc = lengthdir_y(dash_veloc, dash_dir);

    scr_personagem_colisao()

    var _inst = instance_create_layer(x, y, "Instances", obj_dash);
    _inst.sprite_index = sprite_index;

    // Reproduzir o som de dash apenas se não tiver sido reproduzido antes nesta instância
    if (!som_dash_tocado) {
        audio_play_sound(snd_dash, 1, false);
        som_dash_tocado = true;
    }
}

function scr_personagem_atacando(){
	if image_index >= 1 {
	if atacar == false{
		// Reproduzir o som de ataque
    audio_play_sound(snd_espada, 1, false);
	switch dir{
		// direita
			default:
				instance_create_layer(x + 10, y, "Instances", obj_personagem_hitbox);
			break;
			// cima
			case 1:
				instance_create_layer(x, y - 10, "Instances", obj_personagem_hitbox);
			break;
			// esquerda
			case 2:
				instance_create_layer(x - 10, y, "Instances", obj_personagem_hitbox);
			break;
			// baixo
			case 3:
				instance_create_layer(x, y + 10, "Instances", obj_personagem_hitbox);
			break;
		}
		atacar = true;
	}
  }
  if fim_da_animacao(){
	estado = scr_personagem_andando;
	atacar = false;
  }
}

function scr_personagem_hit(){
	if alarm[2] > 0{
	hveloc = lengthdir_x(3, empurrar_dir);
	vveloc = lengthdir_y(3, empurrar_dir);
	
	scr_personagem_colisao();
	}else{
		estado = scr_personagem_andando;
	}
}
	
function scr_personagem_arco(){
	audio_stop_sound(snd_andando); // Para o som quando o personagem para
            som_andar_tocado = false;
	dir = floor((point_direction(x, y, mouse_x, mouse_y) + 45)/90);
	
	switch dir{
		// Direita
		default:
			sprite_index = spr_personagem_arco_direta;
		break;
		// Cima
		case 1:
			sprite_index = spr_personagem_arco_cima;
		break;
		// Esquerda
		case 2:
			sprite_index = spr_personagem_arco_esquerda;
		break;
		// Baixo
		case 3:
			sprite_index = spr_personagem_arco_baixo;
		break;
	}
	if fim_da_animacao(){
	image_index = 4;
	}
	if mouse_check_button_released(mb_left){
		if image_index >= 4{
			var _dir = point_direction(x, y, mouse_x, mouse_y);
			var _xx = lengthdir_x(5, _dir);
			var _yy = lengthdir_y(5, _dir);
			
			var _inst = instance_create_layer(x + _xx, y + _yy, "Instances", obj_flecha);
			_inst.direction = _dir;
			_inst.image_angle = _dir;
			_inst.speed = 12;
			
			empurrar_dir = point_direction(mouse_x, mouse_y, x, y);
			alarm[2] = 5;
			estado = scr_personagem_hit;
			
		}else{
		estado = scr_personagem_andando;
		}
	}
}
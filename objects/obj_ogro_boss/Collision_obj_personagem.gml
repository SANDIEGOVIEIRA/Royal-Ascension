/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if other.tomardano == true{
	   // Troca a sprite do inimigo
    sprite_index = spr_ogro_atk; // substitua "spr_inimigo_hit" pela sprite que você deseja usar
    alarm[4] = 20; // define o alarme para retornar à sprite original após 30 steps (ajuste conforme necessário)

var _dir = point_direction(x, y, other.x, other.y);

with (other){
	
	empurrar_dir = _dir;
	estado = scr_personagem_hit;
	alarm[2] = 10;
	alarm[3] = 120;
	tomardano = false;
	vida -= 1;
	audio_play_sound(snd_ogro_attk, 1, false);
	
	}
	
var _inst = instance_create_layer(x, y, "Instances", obj_dano);
_inst.alvo = other;
_inst.dano = 1;


 
}

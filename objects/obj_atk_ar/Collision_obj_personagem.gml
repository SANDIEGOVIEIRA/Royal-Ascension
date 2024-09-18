/// @description Inserir descrição aqui
if other.tomardano == true{
var _dir = point_direction(x, y, other.x, other.y);

with (other){
	empurrar_dir = _dir + 1;
	estado = scr_personagem_hit;
	alarm[2] = 10;
	alarm[3] = 120;
	tomardano = false;
	vida -= 3;
	}
	
var _inst = instance_create_layer(x, y, "Instances", obj_dano);
_inst.alvo = other;
_inst.dano = 3;
instance_destroy();

}

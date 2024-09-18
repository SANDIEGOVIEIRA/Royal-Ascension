// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

function scr_tornado_vida_zero() {
    // Se a vida do chefe chegar a zero, pare a reprodução de áudio
    if (vida <= 0) {
        audio_stop_sound(boss_atkar);
        audio_som_boss = false;
    }
}

function scr_tornado_escolher_ataque(){
	scr_tornado_vida_zero();
	if (!audio_som_boss) {
    audio_play_sound(boss_atkar, 0, true); // Substitua som_boss pelo nome do seu recurso de áudio do chefe
    audio_som_boss = true;
}
	if alarm[0] <= 0{
		//sprite_index = spr_boss_idle;
	var _ataque = choose(scr_tornado_ataque_1, scr_tornado_ataque_2);
	estado_boss = _ataque;
	alarm[0] = 315;
	}
}



function scr_tornado_ataque_1(){
    if ataques mod 2 == 1{
        var _dir = 0;
    } else if ataques mod 2 == 0{
        var _dir = 22.5;    
    }
	
	
    if ataques > 0{
        if alarm[1] <= 0{
            // Trocar a sprite para a sprite de ataque (por exemplo, spr_boss_ataque)
            sprite_index = spr_tornado_atk; // Substitua "spr_boss_ataque" pelo nome da sua sprite de ataque
			

            repeat(4){
                 var _inst = instance_create_layer(x, y, "Instances", obj_tornado_projetil);
        _inst.speed = 2; // Velocidade do projétil
        _inst.direction = point_direction(x, y, obj_personagem.x, obj_personagem.y);
            }
			
            ataques -= 1;
            alarm[1] = 30;

        }
    } else{
        estado_boss = scr_tornado_escolher_ataque;
        ataques = 5;
		sprite_index = spr_tornado;
    }
	 
}

function scr_tornado_ataque_2(){
	repeat(1){
		 var _inst = instance_create_layer(x, y, "Instances", obj_tornado_projetil);
        _inst.speed = 2; // Velocidade do projétil
        _inst.direction = point_direction(x, y, obj_personagem.x, obj_personagem.y);
	}
	estado_boss = scr_tornado_escolher_ataque;
}

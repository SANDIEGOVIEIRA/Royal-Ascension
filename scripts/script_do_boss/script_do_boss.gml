// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

function scr_boss_vida_zero() {
    // Se a vida do chefe chegar a zero, pare a reprodução de áudio
    if (vida <= 0) {
        audio_stop_sound(snd_boss_idle);
        audio_som_boss = false;
    }
}

function scr_boss_escolher_ataque(){
	scr_boss_vida_zero();
	if (!audio_som_boss) {
    audio_play_sound(snd_boss_idle, 0, true); // Substitua som_boss pelo nome do seu recurso de áudio do chefe
    audio_som_boss = true;
}
	if alarm[0] <= 0{
		//sprite_index = spr_boss_idle;
	var _ataque = choose(scr_boss_ataque_1, scr_boss_ataque_2);
	estado_boss = _ataque;
	alarm[0] = 315;
	}
}



var audio_playing_bossatk;
function scr_boss_ataque_1(){
    if ataques mod 2 == 1{
        var _dir = 0;
    } else if ataques mod 2 == 0{
        var _dir = 22.5;    
    }
	
	if (!audio_playing_bossatk) {
        audio_play_sound(boss_atk, 0, false);
        audio_playing_bossatk = true;
    }
	
    if ataques > 0{
        if alarm[1] <= 0{
            // Trocar a sprite para a sprite de ataque (por exemplo, spr_boss_ataque)
            sprite_index = spr_boss_ataque; // Substitua "spr_boss_ataque" pelo nome da sua sprite de ataque
			

            repeat(8){
                var _inst = instance_create_layer(x, y, "Instances", obj_boss_projetil);
                _inst.speed = 2;
                _inst.direction = _dir;
                // Ajuste da escala dos projéteis
                _inst.image_xscale = 0.7; // Fator de escala horizontal
                _inst.image_yscale = 0.7; // Fator de escala vertical
                
                _dir += 45;
            }
			
            ataques -= 1;
            alarm[1] = 30;

        }
    } else{
		audio_playing_bossatk = false;
        estado_boss = scr_boss_escolher_ataque;
        ataques = 5;
		sprite_index = spr_boss_idle;
    }
	 
}

function scr_boss_ataque_2(){
	repeat(6){
		var _xx = irandom_range(x - 100, x +100);
		var _yy = irandom_range(y - 100, y + 100);
		
		instance_create_layer(_xx, _yy, "Instances", obj_boss_ataque_1);
	}
	estado_boss = scr_boss_escolher_ataque;
}

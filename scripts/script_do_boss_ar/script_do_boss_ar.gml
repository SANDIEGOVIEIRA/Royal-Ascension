// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

function scr_bossar_vida_zero() {
    // Se a vida do chefe chegar a zero, pare a reprodução de áudio
    if (vida <= 0) {
		audio_stop_sound(snd_ar_boss);
        audio_stop_sound(boss_atkar);
        audio_stop_sound(snd_boss_ar_atk);
        audio_som_boss = false;
    }
}

function scr_bossar_escolher_ataque(){
	scr_bossar_vida_zero();
	if (!audio_som_boss) {
    audio_play_sound(snd_ar_boss, 0, true); // Substitua som_boss pelo nome do seu recurso de áudio do chefe
    audio_som_boss = true;
}
	if alarm[0] <= 0{
		//sprite_index = spr_boss_idle;
	var _ataque = choose(scr_bossar_ataque_1, scr_bossar_ataque_2);
	estado_boss = _ataque;
	alarm[0] = 365;
	}
}



var audio_playing_bossatkar;
function scr_bossar_ataque_1(){
    if (!audio_playing_bossatkar) {
        audio_play_sound(snd_boss_ar_atk, 0, false);
        audio_playing_bossatkar = true;
    }

    if (ataques > 0) {
        if (alarm[1] <= 0) {
            // Trocar a sprite para a sprite de ataque
            sprite_index = spr_boss_ar2; // Substitua "spr_boss_ataque" pelo nome da sua sprite de ataque

            // Criar dois objetos, um à direita e outro à esquerda do chefe
            var _inst_left = instance_create_layer(x - 65, y, "Instances", obj_atk_ar);
            var _inst_right = instance_create_layer(x + 65, y, "Instances", obj_atk_ar);
            // Criar dois objetos, um à direita e outro à esquerda do chefe
            var _inst_left2 = instance_create_layer(x - 45, y +25, "Instances", obj_atk_ar);
            var _inst_right2 = instance_create_layer(x + 45, y - 25, "Instances", obj_atk_ar);
			var _inst_left3 = instance_create_layer(x + 65, y, "Instances", obj_atk_ar);
            var _inst_right3= instance_create_layer(x - 65, y, "Instances", obj_atk_ar);
			_inst_left.image_xscale = 0.4;
			_inst_left.image_yscale = 0.4;
			_inst_right.image_xscale = 0.4;
			_inst_right.image_yscale = 0.4;

            // Configurar o alarme para destruir os objetos após 2 segundos (120 steps)
            _inst_left.alarm[0] = 100;
            _inst_right.alarm[0] = 100;
			
			_inst_left2.image_xscale = 0.4;
			_inst_left2.image_yscale = 0.4;
			_inst_right2.image_xscale = 0.4;
			_inst_right2.image_yscale = 0.4;

            // Configurar o alarme para destruir os objetos após 2 segundos (120 steps)
            _inst_left2.alarm[0] = 100;
            _inst_right2.alarm[0] = 100;
			
			_inst_left3.image_xscale = 0.4;
			_inst_left3.image_yscale = 0.4;
			_inst_right3.image_xscale = 0.4;
			_inst_right3.image_yscale = 0.4;

            // Configurar o alarme para destruir os objetos após 2 segundos (120 steps)
            _inst_left3.alarm[0] = 100;
            _inst_right3.alarm[0] = 100;

            ataques -= 1;
            alarm[1] = 30;
        }
    } else {
        audio_playing_bossatkar = false;
        estado_boss = scr_bossar_escolher_ataque;
        ataques = 5;
        sprite_index = spr_boss_ar; // Substitua "spr_boss_idle" pelo nome da sprite padrão do chefe
    }
}



function scr_bossar_ataque_2(){
    repeat(6){
        var _xx = irandom_range(0, room_width); // Posições aleatórias na largura do mapa
        var _yy = irandom_range(0, room_height); // Posições aleatórias na altura do mapa

        instance_create_layer(_xx, _yy, "Instances", obj_boss_ar_atk); // Cria o objeto de ataque
    }
    estado_boss = scr_bossar_escolher_ataque;
}


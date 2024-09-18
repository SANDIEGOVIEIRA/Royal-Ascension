// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

function scr_firee_vida_zero() {
    // Se a vida do chefe chegar a zero, pare a reprodução de áudio
    if (vida <= 0) {
        audio_stop_sound(snd_bater_asas);
        audio_som_boss = false;
    }
}

function scr_firee_escolher_ataque(){
    scr_firee_vida_zero();
    if (!audio_som_boss) {
        audio_play_sound(snd_bater_asas, 0, true); // Substitua som_boss pelo nome do seu recurso de áudio do chefe
        audio_som_boss = true;
    }
    if alarm[0] <= 0 {
        var _ataque = choose(scr_firee_ataque_1, scr_firee_ataque_2, scr_firee_ataque_3, scr_firee_ataque_4);
        estado_boss = _ataque;
        alarm[0] = tempo_espera_ataque; // Reinicia o alarme de espera
    }
}


var audio_playing_bossatk;
function scr_firee_ataque_1(){
    if ataques mod 2 == 1 {
        var _dir = 0;
    } else if ataques mod 2 == 0 {
        var _dir = 22.5;    
    }

    if (!audio_playing_bossatk) {
        audio_play_sound(snd_scream, 0, false);
        audio_playing_bossatk = true;
    }

    if ataques > 0 {
        if alarm[1] <= 0 {

            repeat(10) {
                var _xx = irandom_range(x - 490, x + 490);
                var _yy = irandom_range(y - 320, y + 320);
                instance_create_layer(_xx, _yy, "Instances", obj_boss_fogo_atk);
            }

            ataques -= 1;
            alarm[1] = 5 * room_speed;
        }
    } else {
        audio_playing_bossatk = false;
        estado_boss = scr_firee_escolher_ataque;
        ataques = 5;
        sprite_index = spr_bossfogo_parado;
    }
}

function scr_firee_ataque_2(){
    if (!audio_playing_bossatk) {
        audio_play_sound(snd_scream, 0, false);
        audio_playing_bossatk = true;
    }

    if alarm[2] <= 0 {
        instance_create_layer(288, 640, "Instances_14", obj_dano_parede);
        instance_create_layer(768, 640, "Instances_14", obj_dano_parede);
        instance_create_layer(768, 160, "Instances_14", obj_dano_parede);
        instance_create_layer(288, 160, "Instances_14", obj_dano_parede);
        alarm[2] = 8 * room_speed;
    } else {
        audio_playing_bossatk = false;
        estado_boss = scr_firee_escolher_ataque;
    }
}
function scr_firee_ataque_3(){
   if (!audio_playing_bossatk) {
        audio_play_sound(snd_scream, 0, false);
        audio_playing_bossatk = true;
    }

    if alarm[3] <= 0 {
        instance_create_layer(288, 416, "Instances_14", obj_dano_parede);
        instance_create_layer(519, 640, "Instances_14", obj_dano_parede);
        instance_create_layer(768, 416, "Instances_14", obj_dano_parede);
        instance_create_layer(519, 160, "Instances_14", obj_dano_parede);
        alarm[3] = 8 * room_speed;
    } else {
        audio_playing_bossatk = false;
        estado_boss = scr_firee_escolher_ataque;
    }
}

function scr_firee_ataque_4(){
    if (!audio_playing_bossatk) {
        audio_play_sound(snd_scream, 0, false);
        audio_playing_bossatk = true;
    }

    var _inst = instance_create_layer(x, y, "Instances", obj_boss_projetil_f);
    _inst.speed = 4; 
    _inst.direction = point_direction(x, y, obj_personagem.x, obj_personagem.y);

    alarm[4] = 4 * room_speed; // Tempo entre os disparos
}
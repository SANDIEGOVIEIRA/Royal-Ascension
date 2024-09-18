// Função para checar a vida do obj_voadorfogo
function scr_voadorfogo_vida_zero() {
    if (vida <= 0) {
        audio_stop_sound(snd_scream);
        audio_som_boss = false;
    }
}

// Função para escolher o próximo ataque do obj_voadorfogo
function scr_voadorfogo_escolher_ataque(){
    scr_voadorfogo_vida_zero();
    if (!audio_som_boss) {
        audio_play_sound(snd_scream, 0, true);
        audio_som_boss = true;
    }
    if (alarm[0] <= 0){
        var _ataque = choose(scr_voadorfogo_ataque_1, scr_voadorfogo_ataque_2);
        estado_boss = _ataque;
        alarm[0] = 315;
    }
}

// Função para o ataque 1 do obj_voadorfogo
// Função para o ataque 1 do obj_voadorfogo
function scr_voadorfogo_ataque_1(){
    scr_voadorfogo_perseguir(); // Chama a função de perseguição

    if (ataques mod 2 == 1){
        var _dir = 0;
    } else if (ataques mod 2 == 0){
        var _dir = 22.5;    
    }
    
    if (!audio_playing_bossatk) {
        audio_play_sound(snd_scream, 0, false);
        audio_playing_bossatk = true;
    }
    
    if (ataques > 0){
        if (alarm[1] <= 0){
            // Trocar a sprite para a sprite de ataque (por exemplo, spr_boss_ataque)
            sprite_index = spr_monster_ataque; // Substitua "spr_boss_ataque" pelo nome da sua sprite de ataque

            repeat(4){
                var _inst = instance_create_layer(x, y, "Instances", obj_final_projetil);
                _inst.speed = 2; // Velocidade do projétil
                _inst.direction = point_direction(x, y, obj_personagem.x, obj_personagem.y);
            }
            
            ataques -= 1;
            alarm[1] = 30;
        }
    } else{
        audio_playing_bossatk = false;
        estado_boss = scr_voadorfogo_escolher_ataque;
        ataques = 5;
        sprite_index = spr_monster_parado;
    }
}


// Função para o ataque 2 do obj_voadorfogo
function scr_voadorfogo_ataque_2(){
    scr_voadorfogo_perseguir(); // Chama a função de perseguição

    repeat(1){
        var _inst = instance_create_layer(x, y, "Instances", obj_final_projetil);
        _inst.speed = 2; // Velocidade do projétil
        _inst.direction = point_direction(x, y, obj_personagem.x, obj_personagem.y);
    }
    estado_boss = scr_voadorfogo_escolher_ataque;
}


// Variável global para definir a distância mínima que o obj_voadorfogo deve manter do personagem
var distancia_minima = 100;

// Função para perseguir o personagem mantendo uma certa distância
function scr_voadorfogo_perseguir(){
    var _dist = point_distance(x, y, obj_personagem.x, obj_personagem.y);
    var _dir = point_direction(x, y, obj_personagem.x, obj_personagem.y);
    
    // Verifica se a distância é maior que a mínima
    if (_dist > distancia_minima) {
        var _velocidade = 3; // Velocidade de perseguição
        hveloc = lengthdir_x(_velocidade, _dir);
        vveloc = lengthdir_y(_velocidade, _dir);
        
        scr_voadorfogo_colisao();
    } else {
        hveloc = 0;
        vveloc = 0;
    }
    
    // Atualiza as coordenadas
    x += hveloc;
    y += vveloc;

    // Ajusta a direção do sprite com base na posição do personagem
    if (obj_personagem.x > x) {
        image_xscale = -1; // Vira o sprite para a direita
    } else {
        image_xscale = 1; // Vira o sprite para a esquerda
    }
}

// Função para tratar colisões como no exemplo da cobra
function scr_voadorfogo_colisao(){
    if (place_meeting(x + hveloc, y, obj_parede)){
        while (!place_meeting(x + sign(hveloc), y, obj_parede)){	
            x += sign(hveloc);
        }
        hveloc = 0;
    }

    if (place_meeting(x, y + vveloc, obj_parede)){
        while (!place_meeting(x, y + sign(vveloc), obj_parede)){
            y += sign(vveloc);
        }
        vveloc = 0;
    }
    y += vveloc;
}
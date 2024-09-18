/// Evento Draw do obj_controle


var room_name = room_get_name(room);
//if room_name != "Menu" && room_name = "MaisOp" && room_name = "Sala3" {
    // Se o jogador não estiver em "Menu" nem em "NomeDaSala1" nem em "NomeDaSala2", execute o restante do código

    var _escala = 5;
    var _guia = display_get_gui_height();
    var _spra = sprite_get_height(spr_hud_vida) * _escala;
    var _huda = _guia - _spra;

    var _vida = obj_personagem.vida;
    var _maxvida = obj_personagem.max_vida[obj_personagem.level];

    var _estamina = obj_personagem.estamina;
    var _maxestamina = obj_personagem.max_estamina[obj_personagem.level];

    var _xp = obj_personagem.xp;
    var _maxxp = obj_personagem.max_xp[obj_personagem.level];

    var _xpa = sprite_get_height(spr_hud_exp)* _escala;

    // Barra Vida
    draw_sprite_ext(spr_hud_barra_vida, 0, 0, _huda, (_vida/_maxvida) * _escala, _escala, 0, c_white, 1);

    // Barra Estamina
    draw_sprite_ext(spr_hud_barra_estamina, 0, 0, _huda + 40, (_estamina/_maxestamina) * _escala, _escala, 0, c_white, 1);

    // HUD
    draw_sprite_ext(spr_hud_vida, 0, 0, _huda, _escala, _escala, 0, c_white, 1);

    // Barra XP
    draw_sprite_ext(spr_hud_exp_barra, 0, 9, _guia - _xpa + 12.3, (_xp/_maxxp) * 4.2, 4.2, 0, c_white, 1);
    draw_sprite_ext(spr_hud_exp, 0, 0, _guia - _xpa, 4.2, 4.2, 0, c_white, 1);
    
	// Barra do Boss
	var _gl = display_get_gui_width();
	if instance_exists(obj_boss){
		var _sprw = sprite_get_width(spr_boss_hud) * _escala;
		
		draw_sprite_ext(spr_boss_vida, 0, _gl/2 - _sprw/2 +6, 100, obj_boss.vida/obj_boss.max_vida * _escala, _escala, 0, c_white, 1);
		draw_sprite_ext(spr_boss_hud, 0, _gl/2 - _sprw/2, 100, _escala, _escala, 0, c_white, 1);

	}
	
	// Barra Final Boss
	if instance_exists(obj_final_boss){
		var _sprw2 = sprite_get_width(spr_boss_hud) * _escala;
		
		draw_sprite_ext(spr_final_boss_vida, 0, _gl/2 - _sprw2/2 +6, 100, obj_final_boss.vida/obj_final_boss.max_vida * _escala, _escala, 0, c_white, 1);
		draw_sprite_ext(spr_final_boss_hud, 0, _gl/2 - _sprw2/2, 100, _escala, _escala, 0, c_white, 1);
	}
	
	// Barra Ogro Boss
	if instance_exists(obj_ogro_boss){
		var _sprw2 = sprite_get_width(spr_boss_hud) * _escala;
		
		draw_sprite_ext(spr_ogro_boss_vida, 0, _gl/2 - _sprw2/2 +6, 100, obj_ogro_boss.vida/obj_ogro_boss.max_vida * _escala, _escala, 0, c_white, 1);
		draw_sprite_ext(spr_ogro_boss_hud, 0, _gl/2 - _sprw2/2, 100, _escala, _escala, 0, c_white, 1);
	}
	
	// Barra Ar Boss
	if instance_exists(obj_boss_ar){
		var _sprw2 = sprite_get_width(spr_boss_hud_ar) * _escala;
		
		draw_sprite_ext(spr_boss_vida_ar, 0, _gl/2 - _sprw2/2 +6, 100, obj_boss_ar.vida/obj_boss_ar.max_vida * _escala, _escala, 0, c_white, 1);
		draw_sprite_ext(spr_boss_hud_ar, 0, _gl/2 - _sprw2/2, 100, _escala, _escala, 0, c_white, 1);
	}
	
	// Barra Fogo Boss
	if instance_exists(obj_boss_fire){
		var _sprw2 = sprite_get_width(spr_boss_hud_fogo) * _escala;
		
		draw_sprite_ext(spr_boss_vida_fogo, 0, _gl/2 - _sprw2/2 +6, 100, obj_boss_fire.vida/obj_boss_fire.max_vida * _escala, _escala, 0, c_white, 1);
		draw_sprite_ext(spr_boss_hud_fogo, 0, _gl/2 - _sprw2/2, 100, _escala, _escala, 0, c_white, 1);
	}
	
	// E
	 //draw_sprite_ext(tecla_e, 0, 360, _huda - 60, 0.1, 0.1, 0, c_white, 1); 
    // img
    draw_sprite_ext(spr_espada, 0, 360, _huda + 20, 0.3, 0.3, 0, c_white, 1); 
    // Desenhar a sprite adicional se a tecla "E" estiver pressionada
    if (e_pressionada) {
        draw_sprite_ext(sprite_adicional, 0, 360, _huda + 20, 0.3, 0.3, 0, c_white, 1); // Posição ajustável conforme necessário
    }
//}

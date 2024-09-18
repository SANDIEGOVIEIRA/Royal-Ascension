
/// movimentação e profundidade
script_execute(estado);

depth = -y;

// No evento Step do objeto obj_personagem
if (gamepad_is_connected(0) && global.dialogo == false) {
    movimento_gamepad();
} else {
    scr_personagem_andando(); // Chama a função de movimento padrão
}


if distance_to_object(obj_elixis) <=10{
var _insttt = instance_create_layer(obj_elixis.x +14, obj_elixis.y -17, "Instances", F);
	_insttt.image_xscale = 0.017; // Escala horizontal (largura)
	_insttt.image_yscale = 0.017; // Escala vertical (altura)
}

if alarm[1] <= 0{
	estamina += 1;
}

estamina = clamp(estamina, 0, max_estamina[level]);

if xp >= max_xp[level]{
	xp = xp - max_xp[level];
	level += 1;
	instance_create_layer(x, y, "Instance_tr", obj_level_up);
	audio_play_sound(snd_level_up,1,0);
	vida = max_vida[level];
	estamina = max_estamina[level];
	}
	
	if keyboard_check_pressed(ord("E")){
	arma += 1;
	}
	
	if keyboard_check_pressed(ord("Q")) {
	arma -= 1;
	}
	
	if arma >= Armas.Altura{
	arma = 0;
	}else if arma < 0{
		arma = Armas.Altura -1;
	}

// No evento Step do objeto obj_personagem LEMBRAR DE CRIAR INSTANCE_TR EM TODAS AS SALAS
if (vida <= 0 && !instance_exists(obj_game_over_screen)) {
    instance_create_layer(0, 0, "Instance_tr", obj_game_over_screen); // Cria a tela de "Game Over"
}
	
if (vida <= 0) {
	sprite_index = spr_personagem_morto;
    // Define a velocidade de movimento como zero para parar o personagem
    tomardano = false;
	hveloc = 0;
    vveloc = 0;
	estado = scr_personagem_colisao;
}

#region Dialogo
if distance_to_object(obj_par_npcs) <=10{
	var _inst2 = instance_create_layer(obj_par_npcs.x +14, obj_par_npcs.y -17, "Instances", F);
	_inst2.image_xscale = 0.017; // Escala horizontal (largura)
	_inst2.image_yscale = 0.017; // Escala vertical (altura)
	if keyboard_check_pressed(ord("F")) and global.dialogo == false{
		audio_stop_sound(snd_andando); // Para o som quando o personagem para
		som_andar_tocado = false;
		var _npc = instance_nearest(x, y, obj_par_npcs);
		var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
		_dialogo.npc_nome = _npc.nome;
	}
}

#endregion

#region Pegar Elixis
if instance_exists(obj_item){
	var _inst = instance_nearest(x, y, obj_item);
	if distance_to_point(_inst.x, _inst.y) <= 20{
		if keyboard_check_pressed(ord("F")){
			ds_grid_add_item(_inst.image_index, _inst.quantidade, _inst.sprite_index);
			
			instance_destroy(F);
			instance_destroy(_inst);
		}
	}
}

if instance_exists(obj_elixir_agua){
	var _inst = instance_nearest(x, y, obj_elixir_agua);
	if distance_to_point(_inst.x, _inst.y) <= 20{
		if keyboard_check_pressed(ord("F")){
			ds_grid_add_item(_inst.image_index, _inst.quantidade, _inst.sprite_index);
			
			instance_destroy(F);
			instance_destroy(_inst);
			room_goto(Agua6);
		}
	}
}

if instance_exists(obj_elixir_terra){
	var _inst = instance_nearest(x, y, obj_elixir_terra);
	if distance_to_point(_inst.x, _inst.y) <= 20{
		if keyboard_check_pressed(ord("F")){
			ds_grid_add_item(_inst.image_index, _inst.quantidade, _inst.sprite_index);
			
			instance_destroy(F);
			instance_destroy(_inst);
			var bruxo_ogro = instance_create_layer(50, 175, "Instances", obj_bruxo);
			bruxo_ogro.sprite_index = spr_bruxo_esquerda;
			bruxo_ogro.image_xscale = - 1;
			bruxo_ogro.nome = "Lucius pos ogro";
		}
	}
}

if instance_exists(obj_elixir_ar){
	var _inst = instance_nearest(x, y, obj_elixir_ar);
	if distance_to_point(_inst.x, _inst.y) <= 20{
		if keyboard_check_pressed(ord("F")){
			ds_grid_add_item(_inst.image_index, _inst.quantidade, _inst.sprite_index);
			
			instance_destroy(F);
			instance_destroy(_inst);
			var bruxo_arr = instance_create_layer(247, 75, "Instances", obj_bruxo);
			bruxo_arr.nome = "Lucius pos boss ar";
		}
	}
}

if instance_exists(obj_elixir_fogo){
	var _inst = instance_nearest(x, y, obj_elixir_fogo);
	if distance_to_point(_inst.x, _inst.y) <= 20{
		if keyboard_check_pressed(ord("F")){
			ds_grid_add_item(_inst.image_index, _inst.quantidade, _inst.sprite_index);
			
			instance_destroy(F);
			instance_destroy(_inst);
			var bruxo_firee = instance_create_layer(813, 411, "Instances", obj_bruxo);
			bruxo_firee.sprite_index = spr_bruxo_esquerda;
			bruxo_firee.nome = "Lucius pos boss fogo";
		}
	}
}

if instance_exists(obj_final_elixir){
	var _inst = instance_nearest(x, y, obj_final_elixir);
	if distance_to_point(_inst.x, _inst.y) <= 20{
		if keyboard_check_pressed(ord("F")){
			ds_grid_add_item(_inst.image_index, _inst.quantidade, _inst.sprite_index);
			
			instance_destroy(_inst);
			instance_destroy(F);
			//instance_create_layer(x, y, "Instances", obj_portal_ar);
			var obj_pport = instance_create_layer(400, 75, "Instances", obj_portal_castelo2);
		}
	}
}

#endregion
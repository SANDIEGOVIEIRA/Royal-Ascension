/// @description Inserir descrição aqui
if fim_da_animacao(){
	var _dir = 0;
	
	repeat(4){
		var _inst =instance_create_layer(x, y, "Instances", obj_boss_projetil_fogo);
		_inst.speed = 3;
		_inst.direction = _dir;
		// Ajuste da escala dos projéteis
        _inst.image_xscale = 0.7; // Fator de escala horizontal
        _inst.image_yscale = 0.7; // Fator de escala vertical
		
		_dir += 90;
	}
	instance_destroy();
}
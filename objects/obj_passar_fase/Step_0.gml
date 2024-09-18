if (room == Sala1 && global.inimigos_destruidos_sala1 >= global.inimigos_necessarios_sala1) {
    // Criar o objeto em um local específico (substitua x e y pelos valores desejados)
    var obj_instancia_sala1 = instance_create_layer(280, 170, "Instances", obj_setas2);

    // Alterar a escala x e y da instância
    obj_instancia_sala1.image_xscale = 2; // Altera a escala x para 2 vezes o tamanho original
    obj_instancia_sala1.image_yscale = 0.5; // Altera a escala y para metade do tamanho original

    // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_sala1 = 0;
} else if (room == Agua2 && global.inimigos_destruidos_agua2 >= global.inimigos_necessarios_agua2) {
    // Ação específica para a sala 2 (por exemplo, destruir um objeto)
    var obj_a_destruir_agua2 = instance_find(inst_75084556, 0);
    if (obj_a_destruir_agua2 != noone) {
        instance_destroy(obj_a_destruir_agua2);
		 // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_agua2 = 0;
	global.inimigos_destruidos_agua3 = 0;
	global.inimigos_destruidos_agua4 = 0;
    }
} else if (room == Agua3 && global.inimigos_destruidos_agua3 >= global.inimigos_necessarios_agua3) {
    // Ação específica para a sala 2 (por exemplo, destruir um objeto)
    var obj_a_destruir_agua3 = instance_find(inst_4E7A9A62, 0);
    if (obj_a_destruir_agua3 != noone) {
    instance_destroy(obj_a_destruir_agua3);
    // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_agua2 = 0;
	global.inimigos_destruidos_agua3 = 0;
	global.inimigos_destruidos_agua4 = 0;
	}
}else if (room == Agua4 && global.inimigos_destruidos_agua4 >= global.inimigos_necessarios_agua4) {
    // Ação específica para a sala 2 (por exemplo, destruir um objeto)
    var obj_a_destruir_agua4 = instance_find(inst_5589AA69_1, 0);
    if (obj_a_destruir_agua4 != noone) {
    instance_destroy(obj_a_destruir_agua4);
    // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_agua2 = 0;
	global.inimigos_destruidos_agua3 = 0;
	global.inimigos_destruidos_agua4 = 0;
	}
}else if (room == Terra1 && global.inimigos_destruidos_terra1 >= global.inimigos_necessarios_terra1) {
    // Ação específica para a sala 2 (por exemplo, destruir um objeto)
    
	var obj_instancia_terra1 = instance_create_layer(750, 165, "Instances", obj_bruxo);
	obj_instancia_terra1.sprite_index = spr_bruxo_esquerda;
	obj_instancia_terra1.nome = "Lucius Terra1";
	
    // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_terra1 = 0;
	
}else if (room == Terra2 && global.inimigos_destruidos_terra2 >= global.inimigos_necessarios_terra2) {
    // Ação específica para a sala 2 (por exemplo, destruir um objeto)
    var obj_a_destruir_terra2 = instance_find(inst_38CD2158_1, 0);
    if (obj_a_destruir_terra2 != noone) {
    instance_destroy(obj_a_destruir_terra2);
    // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_terra2 = 0;
	}
}else if (room == Terra3 && global.inimigos_destruidos_terra3 >= global.inimigos_necessarios_terra3) {
    // Ação específica para a sala 2 (por exemplo, destruir um objeto)
	var obj_instancia_terra3 = instance_create_layer(750, 165, "Instances", obj_bruxo);
	obj_instancia_terra3.sprite_index = spr_bruxo_esquerda;
	obj_instancia_terra3.nome = "Lucius Terra3";
	
    // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_terra3 = 0;
}
else if (room == Fogo2 && global.inimigos_destruidos_fogo2 >= global.inimigos_necessarios_fogo2) {
    // Ação específica para a sala 2 (por exemplo, destruir um objeto)
    
	var obj_instancia_fogo2 = instance_create_layer(600, 170, "Instances", obj_espirito_fogo);
	var obj_instancia_fogo22 = instance_create_layer(600, 170, "Instances", obj_parede);
	
    // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_fogo2 = 0;
    global.inimigos_destruidos_fogo3 = 0;
	
}
else if (room == Fogo3 && global.inimigos_destruidos_fogo3 >= global.inimigos_necessarios_fogo3) {
    // Ação específica para a sala 2 (por exemplo, destruir um objeto)
    
	var obj_instancia_fogo3 = instance_create_layer(530, 410, "Instances", obj_espirito_fogo);
	var obj_instancia_fogo33 = instance_create_layer(530, 410, "Instances", obj_parede);
	obj_instancia_fogo3.nome = "Espirito de fogo2";
    // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_fogo3 = 0;
    global.inimigos_destruidos_fogo4 = 0;
    global.inimigos_destruidos_fogo2 = 0;
	
}else if (room == Ar1 && global.inimigos_destruidos_ar1 >= global.inimigos_necessarios_ar1) {
    // Ação específica para a sala 2 (por exemplo, destruir um objeto)
    var obj_a_destruir_ar1 = instance_find(inst_38CD2158_1_1_1, 0);
    if (obj_a_destruir_ar1 != noone) {
    instance_destroy(obj_a_destruir_ar1);
    // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_ar1 = 0;
	}
}else if (room == Ar2 && global.inimigos_destruidos_ar2 >= global.inimigos_necessarios_ar2) {
    // Ação específica para a sala 2 (por exemplo, destruir um objeto)
    var obj_a_destruir_ar2 = instance_find(inst_38CD21581111, 0);
    if (obj_a_destruir_ar2 != noone) {
    instance_destroy(obj_a_destruir_ar2);
    // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_ar2 = 0;
	}
}else if (room == Ar3 && global.inimigos_destruidos_ar3 >= global.inimigos_necessarios_ar3) {
    // Ação específica para a sala 2 (por exemplo, 420 um objeto)
    var obj_instancia_ar3 = instance_create_layer(430, 80, "Instances", obj_bruxo);
	obj_instancia_ar3.sprite_index = spr_bruxo_esquerda;
	obj_instancia_ar3.nome = "Lucius Ar3";
    // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_ar3 = 0;
	
	}else if (room == Castelo5 && global.inimigos_destruidos_castelo >= global.inimigos_necessarios_castelo) {
    // Ação específica para a sala 2 (por exemplo, destruir um objeto)
    
	var obj_instancia_castelo = instance_create_layer(230, 240, "Instances", obj_bruxo);
	obj_instancia_castelo.sprite_index = spr_final_cima;
	obj_instancia_castelo.image_speed = 0;
	obj_instancia_castelo.nome = "Lucius sala de treino";
	
    // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_castelo = 0;
	
}else if (room == Fogo4 && global.inimigos_destruidos_fogo4 >= global.inimigos_necessarios_fogo4) {
    // Ação específica para a sala 2 (por exemplo, destruir um objeto)
    var obj_a_destruir_fogo4 = instance_find(inst_41D530D1, 0);
    if (obj_a_destruir_fogo4 != noone) {
    instance_destroy(obj_a_destruir_fogo4);
    // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_fogo4 = 0;
    global.inimigos_destruidos_fogo3 = 0;
	}
}

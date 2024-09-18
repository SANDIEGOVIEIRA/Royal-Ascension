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
    var obj_a_destruir_terra1 = instance_find(inst_38CD2158, 0);
    if (obj_a_destruir_terra1 != noone) {
    instance_destroy(obj_a_destruir_terra1);
    // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_terra1 = 0;
	}
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
    var obj_a_destruir_terra3 = instance_find(inst_38CD2158_3, 0);
    if (obj_a_destruir_terra3 != noone) {
    instance_destroy(obj_a_destruir_terra3);
    // Reiniciar o contador de inimigos destruídos para que essa condição não seja ativada novamente
    global.inimigos_destruidos_terra3 = 0;
	}
}

/// Step Event of obj_boss_ataque_2
if (fim_da_animacao()){ // Verifique se a animação está completa
    var _dir = 0;

    repeat(4){
        var _inst = instance_create_layer(x, 0, "Instances", obj_tornado_projetil); // Cria o projétil no topo da tela
        _inst.speed = 3;
        _inst.direction = point_direction(_inst.x, _inst.y, x, y); // Direção para o local original do objeto
        _inst.image_xscale = 0.7;
        _inst.image_yscale = 0.7;

        _dir += 90;
    }
    instance_destroy(); // Destrói o objeto após criar os projéteis
}

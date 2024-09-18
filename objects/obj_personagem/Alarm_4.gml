/// @description Salvar jogo ao colidir
// Acessando o objeto obj_inventario para obter o total de slots
var inventario = instance_find(obj_inventario, 0);
var total_slots = inventario.total_slots;

if alarm[4] == 0{
if file_exists("save.sav"){
						file_delete("save.sav");
					}
					ini_open("save.sav");
					ini_write_real("Jogador", "x_atual", obj_personagem.x);
					ini_write_real("Jogador", "y_atual", obj_personagem.y);
					//ini_write_real("Jogador", "sala_atual", other.sala);
					ini_write_real("Jogador", "sala_atual", room);
					ini_write_real("Jogador", "level_atual", obj_personagem.level);
					ini_write_real("Jogador", "xp_atual", obj_personagem.xp);
					ini_write_real("Jogador", "vida_atual", obj_personagem.vida);
					ini_write_real("Jogador", "itens1", obj_inventario.grid_items);
					// Salva informações do inventário
    // Salva informações do inventário
    for (var i = 0; i < total_slots; i++) {
        var item = inventario.grid_items[# Infos.Item, i];
        var quantidade = inventario.grid_items[# Infos.Quantidade, i];
        var sprite = inventario.grid_items[# Infos.Sprite, i];
        // Salva cada item no inventário no arquivo
        ini_write_real("Inventario", "Item_" + string(i), item);
        ini_write_real("Inventario", "Quantidade_" + string(i), quantidade);
        ini_write_real("Inventario", "Sprite_" + string(i), sprite);
    }
					ini_close();
}
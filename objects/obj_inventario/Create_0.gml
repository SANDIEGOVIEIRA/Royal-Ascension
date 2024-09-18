/// @description Inserir descrição aqui
inventario = false;
escala =3;

comeco_x = 15 * escala;
comeco_y = 24 * escala;

slots_h = 8;
slots_v = 3;
total_slots = slots_h * slots_v;
tamanho_slot = 16 * escala;
buffer = 1 * escala;

inventario_l = sprite_get_width(spr_inventario) * escala;
inventario_a = sprite_get_height(spr_inventario) * escala;

item_selecionado = -1;
pos_selecionada = -1;

enum Items_Armas{
	Espada,
	Arco,
	Cajado,
	Elixir,
	Altura
}

enum Item_Inimigos{
	ElixirTerra,
	ElixirAgua,
	ElixirAr,
	ElixirFogo,
	Altura
}

enum Infos{
	Item,
	Quantidade,
	Sprite,
	Altura
}

grid_items = ds_grid_create(Infos.Altura, total_slots);
ds_grid_set_region(grid_items, 0, 0, Infos.Altura - 1, total_slots -1, -1);

// colocando manualmente
// ds_grid_add_item(Items_Armas.Arco, 1, spr_items);

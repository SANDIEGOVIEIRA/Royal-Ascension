/// @description Inserir descrição aqui
if inicializar == true{
var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

var _xx = 0;
var _yy = _guia - 200;
var _c = c_black;
var _sprite = texto_grid[# Infoss.Retrato, pagina];
var _texto = string_copy(texto_grid[# Infoss.Texto, pagina], 0, caractere);
draw_set_font(fnt_pixel);

// lado esquerdo
if texto_grid [# Infoss.Lado, pagina] == 0{
draw_set_halign(fa_left);
draw_rectangle_color(_xx +200, _yy, _guil, _guia, _c, _c, _c, _c, false);
draw_set_color(c_black);
draw_text(_xx + 276, _yy -32, texto_grid[# Infoss.Nome, pagina]);
draw_set_color(c_white);
draw_text_ext(_xx +280, _yy + 32, _texto, 32, _guil - 234);

draw_sprite_ext(_sprite, 0, 100, _guia, 1, 1, 0, c_white, 1);
}else { // lado direito
draw_rectangle_color(_xx, _yy, _guil -200, _guia, _c, _c, _c, _c, false);
draw_set_halign(fa_left);
var _stgw = string_width(texto_grid[# Infoss.Nome, pagina]);
draw_set_color(c_black);
draw_text(_xx +1600 - _stgw, _yy -32, texto_grid[# Infoss.Nome, pagina]);
draw_set_color(c_white);
draw_text_ext(_xx + 40, _yy + 32, _texto, 32, _guil - 264);

draw_sprite_ext(_sprite, 0, _guil - 100, _guia, -1, 1, 0, c_white, 1);
}
}
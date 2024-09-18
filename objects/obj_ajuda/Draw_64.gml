// Draw Event
var rect_width = 550; // Largura do retângulo
var rect_height = 150; // Altura do retângulo
var margin = 15; // Margem da borda da tela

var rect_x = display_get_width() - 680; // Posição X do retângulo
//var rect_x = display_get_width() - 1280; // Posição X do retângulo
var rect_y = margin; // Posição Y do retângulo

// Desenha o retângulo preenchido
draw_set_color(#fff399);
draw_rectangle(rect_x, rect_y, rect_x + rect_width + 20, rect_y + rect_height, false);

// Desenha a borda do retângulo
draw_set_color(c_black);
draw_rectangle(rect_x, rect_y, rect_x + rect_width +20, rect_y + rect_height, true);

// Defina a fonte menor
draw_set_font(fnt_pequena);

// Desenha o texto dentro do retângulo
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(rect_x + rect_width / 2 - 255, rect_y + rect_height / 2 - 50, texto);
draw_text(rect_x + rect_width / 2 - 255, rect_y + rect_height / 2 -20, texto2);
draw_text(rect_x + rect_width / 2 - 255, rect_y + rect_height / 2 +10, texto3);
draw_text(rect_x + rect_width / 2 - 255, rect_y + rect_height / 2 +10, texto4);

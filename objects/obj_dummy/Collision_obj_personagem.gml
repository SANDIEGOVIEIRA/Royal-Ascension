/// @description Inserir descrição aqui

var _dir = point_direction(x, y, other.x, other.y);
var _empurrao = 3;
var _empurraox = lengthdir_x(_empurrao, _dir);
var _empurraoy = lengthdir_y(_empurrao, _dir);

other.x += _empurraox;
other.y += _empurraoy;
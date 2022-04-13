/// @description

var multiply = 0;
var space = 40;

repeat(life) {
	draw_sprite_ext(
		spr_player, 
		0, 
		40 + space * multiply, 
		display_get_gui_height() - 30,
		0.3,
		0.3,
		0,
		c_white,
		1
	);
	multiply ++;
}

multiply = 0;

repeat(shields) {
	draw_sprite_ext(
		spr_shield, 
		2, 
		40 + space * multiply, 
		display_get_gui_height() - 80,
		0.3,
		0.3,
		0,
		c_white,
		1
	);
	multiply ++;
}


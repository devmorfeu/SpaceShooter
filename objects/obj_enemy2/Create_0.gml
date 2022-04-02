/// @description
event_inherited();

_points = 20;

//variavel de controle do inimigo
move_sideways = true;

shooting_enemy = function() {
	
	if (y >= 0) {
		instance_create_layer(x-3, y + sprite_height / 3,"Shot", obj_shot_enemy2);
	}
}
/// @description movimento

vspeed = 5;

_points = 10;

alarm[0] = random_range(1, 2);

if (place_meeting(x, y, obj_enemy1)) {
	instance_destroy(id, false);
}

shooting_enemy = function() {
	
	if (y >= 0) {
		instance_create_layer(x-3, y + sprite_height / 3,"Shot", obj_shot_enemy1);
	}
}

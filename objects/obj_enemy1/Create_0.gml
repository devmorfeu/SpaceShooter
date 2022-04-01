/// @description movimento

vspeed = 5;

alarm[0] = random_range(1, 2);

shooting_enemy = function() {
	
	if (y >= 0) {
		instance_create_layer(x-3, y + sprite_height / 3,"ShotEnemy1", obj_shot_enemy1);
	}
}

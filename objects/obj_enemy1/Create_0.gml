/// @description movimento

vspeed = 5;

_points = 10;

drop_change = 15;

alarm[0] = random_range(1, 2) * room_speed;

//impedindo inimigo de spawnar no mesmo lugar
if (place_meeting(x, y, obj_enemy1)) {
	instance_destroy(id, false);
}

shooting_enemy = function() {
	
	if (y >= 0) {
		instance_create_layer(x-3, y + sprite_height / 3,"Shot", obj_shot_enemy1);
	}
}


///@method item_drop(chance_de_dropar_item_em_porcentagem)
item_drop = function(_change) {
	
	var value = random(100);
	
	if (value < _change && y > 96) {
		instance_create_layer(x, y, "Shot", obj_powerup)
	}
}

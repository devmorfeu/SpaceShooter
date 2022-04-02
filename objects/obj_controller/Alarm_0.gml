/// @description Criacao de inimigos

if(!instance_exists(obj_enemy1)) {
	
	repeat(10 * level) {
		create_enemy();
	}
}



alarm[0] = room_speed;
/// @description
/*
Estado 1 = Parado dando o tiro 2
Estado 2 = Movendo dando o tiro 1
Estado 3 = Parado intercalando entre o tiro 1 e 2
 
Estado 4 = Invulnerabilidade enquanto cria dois minions para recuperar vida
*/

actual_state = choose("state3","state3", "state3", "state3");

delay_shot = room_speed / 2;
wait_shot = 0;
delay_state = room_speed * 8;
wait_state = delay_state;
horizon_move = 3;

state_01 = function () {
	
	wait_shot--;
	
	if (wait_shot <= 0) {
		
		instance_create_layer(x-3, y + sprite_height / 4,"Shot", obj_shot_enemy2);
		
		wait_shot = delay_shot;
	}
}

state_02 = function () {
	
	x += horizon_move;
	
	if (x >= 1632 || x<= 288) {
		horizon_move *= -1;
	}
	
	
	wait_shot--;
	if (wait_shot <= 0) {
		instance_create_layer(x - 160, y + 10, "Shot", obj_shot_enemy1);
		instance_create_layer(x + 160, y + 10, "Shot", obj_shot_enemy1);
		wait_shot = delay_shot;
	}

}

state_03 = function () {
	wait_shot--;
	
	if(wait_shot <= 0) {
		instance_create_layer(x - 160, y + 10, "Shot", obj_shot_enemy1);
		instance_create_layer(x + 160, y + 10, "Shot", obj_shot_enemy1);
	}
	
	if(wait_shot <= 0) {
		instance_create_layer(x-3, y + sprite_height / 4,"Shot", obj_shot_enemy2);
		wait_shot = delay_shot * 2;
	}

}
/// @description Iniciador de variaveis

move_speed = 5;

shooting_timer = room_speed / 2;

level_shot = 1;

shooting = function() {
	button_fire = keyboard_check(vk_space);
	if (button_fire && alarm[0] == -1) {
		
		alarm[0] = shooting_timer;
		
		if (level_shot == 1) {
			
			instance_create_layer(x, y - sprite_height / 3, "Shot", obj_shot);
		} 
		
		if (level_shot == 2) {
			
			shot_level_2();
		}
		
		if (level_shot == 3) {
			
			instance_create_layer(x, y - sprite_height / 3, "Shot", obj_shot);
			
			shot_level_2();
		}
		
		if (level_shot == 4) {
			
			shot_level_4();
			
		}
		
		if (level_shot == 5) {
			
			shot_level_2();
			shot_level_4();
		}
	}
}

shot_level_2 = function() {
			
	var shot_1 = instance_create_layer(x - 60, y - sprite_height / 3, "Shot", obj_shot2);
	shot_1.hspeed = -5;
			
	var shot_2 = instance_create_layer(x + 60, y - sprite_height / 3, "Shot", obj_shot2);
	shot_2.hspeed = 5;
}

shot_level_4 = function() {
	
	var direction_shot = 75;
		repeat(3) {
			
			shot_4 = instance_create_layer(x, y - sprite_height / 3, "Shot", obj_shot);
			
			shot_4.direction = direction_shot;
			
			shot_4.image_angle = shot_4.direction - 90;
				
			direction_shot += 15;
	}
}

level_up = function(number) {
	
	if(number >= 90 && level_shot < 5) {
		level_shot ++;
	} else if(number >= 45 && shooting_timer > 20) {
		shooting_timer *= 0.9;
	} else {
		if (move_speed < 10) {
			move_speed += .5;
		}
	}
}
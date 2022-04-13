/// @description efeitos de sumir com o powerup

image_alpha -= 0.2;

if (image_alpha <= 0) {
	instance_destroy(id, false);
}

alarm[0] = room_speed;
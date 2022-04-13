/// @description

if (image_index == 0) {
	instance_destroy();
}

image_index--;
image_alpha -= 0.2; 

alarm[0] = room_speed * 2;
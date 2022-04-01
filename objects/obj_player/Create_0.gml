/// @description Iniciador de variaveis

move_speed = 5;

shooting = function() {
	button_fire = keyboard_check_pressed(vk_space);
	if (button_fire) {
		instance_create_layer(x, y - sprite_height / 3, "Shot", obj_shot)
	}
}
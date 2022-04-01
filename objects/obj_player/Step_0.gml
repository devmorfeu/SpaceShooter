/// @description Movimentação

var up, down, left , right, button_fire;
//verificando se o usuario pressiona algum dos botoes de movi
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
button_fire = keyboard_check_pressed(vk_space);

//movendo o player
y -= up * move_speed;
y += down * move_speed;
x -= left * move_speed;
x += right * move_speed;

if (button_fire) {
	instance_create_layer(x, y - sprite_height / 3, "Shot", obj_shot)
}

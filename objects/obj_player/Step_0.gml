/// @description Movimentação

var up, down, left, right;
//verificando se o usuario pressiona algum dos botoes de movi
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));


//movendo o player
y -= up * move_speed;
y += down * move_speed;
x -= left * move_speed;
x += right * move_speed;

shooting();

if(keyboard_check_pressed(vk_up) && level_shot < 5) {
	level_shot++;
}

if(keyboard_check_pressed(vk_down) && level_shot > 1) {
	level_shot--;
}

//velocidade do tiro
if(keyboard_check_pressed(vk_right) && shooting_timer > 20) {
	shooting_timer *= 0.9;
}

if(keyboard_check_pressed(vk_left)) {
	shooting_timer *= 1.1;
}
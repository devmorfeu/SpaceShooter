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
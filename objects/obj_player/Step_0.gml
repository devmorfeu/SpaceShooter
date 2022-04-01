/// @description Movimentação

var up, down, left , right;

up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))

y -= up * move_speed;
y += down * move_speed;
x -= left * move_speed;
x += right * move_speed;

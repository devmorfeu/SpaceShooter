/// @description chance de drop

change_drop = random(100);
//valor > 90 = tiro
//valor > 45 = velocidade
//valor < 45 = velocidade do tiro

speed = 2;
direction = irandom(359);


alarm[0] = room_speed;

//definido cores de cada powerup
if (change_drop >= 90) {
	color = c_yellow;
} else if (change_drop >= 45) {
	color = c_red;
} else {
	color = c_gray;		
}
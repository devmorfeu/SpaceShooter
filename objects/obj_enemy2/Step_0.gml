/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Checando se eu ja passei 1/3 da tela
if (y > room_height / 3 && move_sideways) {
	//Movimento do inimigo
	if (x > room_width / 2) {
		hspeed = -3;
		
		//definido para false para executar apenas uma vez
		move_sideways = false;
	} else {
		hspeed = 3;
		move_sideways = false;
	}
}
/// @description

if (!instance_exists(obj_player) && !gameover_sequence) {
	
	gameover_sequence = layer_sequence_create("Sequences", room_width/2 , room_height/2 , sq_gameover);
}

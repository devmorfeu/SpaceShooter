/// @description efeito de brilho

// criação da sprite
draw_self();

//Altera como a placa de video trata as cores
gpu_set_blendmode(bm_add);

draw_sprite_ext(
	spr_shine_shot_player, 
	image_index, 
	x, 
	y, 
	image_xscale * 0.7, 
	image_yscale * 0.7, 
	image_angle, 
	c_olive,
	0.5);

gpu_set_blendmode(bm_normal);
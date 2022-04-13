/// @description Iniciador do alarm
 
//randomizando o game
randomize();
 
//room_speed =  1 segundo
alarm[0] = room_speed * 5;

//sistema de pontos e level
player_points = 0;
next_level = 100;
level = 1;
gameover_sequence = noone;

///@method points_winner(_points)
points_winner = function(_points) {

	player_points += _points;
	
	if(player_points > next_level) {
		level += 1;
		
		next_level *= 2;
	}
}

//sistema de level

create_enemy = function() {
	
	var enemy = obj_enemy1;
	var xx = irandom_range(64, 1824);
	//limitando espaçamento dos inimigos por level
	var yy = irandom_range(-96, -1500 - (level * 800));
	var change = random_range(0, level);

	if(change > 2) {
		enemy = obj_enemy2	
	}

	//Criação aleatoria do inimigo
	instance_create_layer(xx,yy, "Enemy", enemy)

}
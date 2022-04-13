/// @description

//caso nao tenha player escudo se destroy
if (!target) {
	instance_destroy();
}

//seguindo movimentação do player
if (instance_exists(target)){
	x = target.x;
	y = target.y;
}

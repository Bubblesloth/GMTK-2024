/// @description coucou
//Dégâts
if global.time=0
{
	global.hp=global.hp-1
	global.time=15
}
//Fin de partie
if global.hp<=0
{
	game_restart();
}
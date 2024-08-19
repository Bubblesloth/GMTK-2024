/// @description Bonjour je suis le Game Manager :)
// Vous pouvez écrire votre code dans cet éditeur

randomize()

global.gameStarted = false
global.restart = false
global.credits = false

if room == Game{
	instance_create_layer(x,y,"Utilitaires",obj_gameOver)
}

/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
for (var yy = 0; yy <= ymax; ++yy) {
	for (var xx = 0; xx <= xmax; ++xx) {
		draw_sprite_ext(spr, sub_image_index, xx * sprw, yy * sprh, 1, 1, 0, col, 1);
	}
}
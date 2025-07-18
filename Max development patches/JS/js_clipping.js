mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;


function paint() {
	with (mgraphics) {
		move_to(0, 0);	// the top-left
		line_to(400, 200);	// the bottom-right
		stroke();		// draw it

		move_to(400, 0);	// the top-right
		line_to(0, 200);	// the bottom-left
		stroke();
	}

	mgraphics.text_path("A")
}
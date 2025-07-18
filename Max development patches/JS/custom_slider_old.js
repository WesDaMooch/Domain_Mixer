var COLOURS = {
    background: [0, 0, 0, 1],
    bar: [1, 1, 1, 1],
    border: [1, 1, 1, 1],
    text: [1, 1, 1, 1]
};

function paint() {
    var width = mgraphics.size[0];
    var height = mgraphics.size[1];
    var text = "Hello";

    // Background
    mgraphics.set_source_rgb(1  , 0, 0);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();

    // Font setup
    mgraphics.select_font_face("Arial");
    mgraphics.set_font_size(24);

    var tm = mgraphics.text_measure(text);

    // Create horizontal gradient (because we’ll rotate it)
    var grad = mgraphics.pattern_create_linear(0, 0, tm[0], 0);
    grad.add_color_stop_rgba(0.0, 0, 0, 0, 1);   // Black
    grad.add_color_stop_rgba(1.0, 1, 1, 1, 1);   // White

    // Draw, rotate, and fill
    mgraphics.save();

    // Move to center and rotate text 90°
    mgraphics.translate(width / 2, height / 2);
    mgraphics.rotate(-Math.PI / 2);

    // Offset text so it's centered after rotation
    mgraphics.move_to(-tm[0] / 2, tm[1] / 2);
    mgraphics.text_path(text);

    // Apply the horizontal gradient (will appear vertical after rotation)
    mgraphics.set_source(grad);
    mgraphics.fill();

    mgraphics.restore();
}



//Working grad on text
/*function paint() {
    var width = mgraphics.size[0];
    var height = mgraphics.size[1];
    var text = "Hello";

    // Background
    mgraphics.set_source_rgb(1, 0, 0); // black background
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();

    // Font setup
    mgraphics.select_font_face("Arial");
    mgraphics.set_font_size(24);

    // Measure and position text
    var tm = mgraphics.text_measure(text);
    var tx = (width - tm[0]) / 2;
    var ty = (height + tm[1]) / 2;

    // Sharp gradient (black on left half, white on right half)
    var grad = mgraphics.pattern_create_linear(tx, 0, tx + tm[0], 0); // horizontal gradient across text width
    grad.add_color_stop_rgba(0.0, 0, 0, 0, 1);        // black
    grad.add_color_stop_rgba(0.499, 0, 0, 0, 1);      // still black
    grad.add_color_stop_rgba(0.501, 1, 1, 1, 1);      // immediate white
    grad.add_color_stop_rgba(1.0, 1, 1, 1, 1);        // white

    // Draw text path and fill with gradient
    mgraphics.save();
    mgraphics.move_to(tx, ty);
    mgraphics.text_path(text);
    mgraphics.set_source(grad);
    mgraphics.fill();
    mgraphics.restore();
}
*/


//Old slider
/*function paint() {
    
    var value = box.getvalueof()[0]; 
    var viewsize = mgraphics.size;
    var width = viewsize[0];
    var height = viewsize[1];

    // --- Gradient setup
    var grad = mgraphics.pattern_create_linear(0, 0, 0, height);
    grad.add_color_stop_rgba(0, 1, 1, 1, 1); // white at top
    grad.add_color_stop_rgba(1, 0, 0, 0, 1); // black at bottom

    // Draw Background
    mgraphics.set_source_rgba(COLOURS.background);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();

    // Draw Bar
    var barHeight = value * height;
    mgraphics.set_source_rgba(COLOURS.bar);
    //mgraphics.set_source(grad);
    mgraphics.rectangle(0, height - barHeight, width, barHeight);
    mgraphics.fill();

    // Draw Border
    mgraphics.set_source_rgba(COLOURS.border);
    mgraphics.set_line_width(1);
    mgraphics.rectangle(0.5, 0.5, width - 1, height - 1);  // Offset for pixel-perfect stroke
    mgraphics.stroke();

    // Draw Text
    //var displayText = "Zoom";
    var displayText = value.toFixed(2);
    var displayText = "PHASE";
    if (value < 0.01) {
        var displayText = "ATOMIC";
    } 


    mgraphics.select_font_face("Ableton Sans Bold");//Bahnschrift
    mgraphics.set_font_size(9.5);
    var textMetrics = mgraphics.text_measure(displayText);



    // Calculate text bounding box after rotation
    var textWidth = textMetrics[0];
    var textHeight = textMetrics[1];
    var pivotX = width / 2;
    var pivotY = height / 2;


    // --- Gradient setup
    var grad = mgraphics.pattern_create_linear(0, 0, 0, height);
    grad.add_color_stop_rgba(1, 1, 1, 1); // white at top
    grad.add_color_stop_rgba(0, 0, 0, 1); // black at bottom

    mgraphics.save();
    mgraphics.translate(pivotX, pivotY);
    //mgraphics.rotate(-Math.PI / 2);
    mgraphics.move_to(-textWidth / 2, textHeight / 3.5);
    //mgraphics.set_source_rgba(COLOURS.text);
    mgraphics.set_source(grad);
    mgraphics.text_path(displayText);
    mgraphics.fill();
    mgraphics.restore();


**//*//*    mgraphics.save();
    mgraphics.translate(pivotX, pivotY);
    mgraphics.rotate(-Math.PI / 2);
    //mgraphics.set_source_rgba(COLOURS.text);
    mgraphics.move_to(-textWidth / 2, textHeight / 3.5);
    mgraphics.text_path(displayText);
    mgraphics.set_source(grad);
    mgraphics.fill();
    //mgraphics.show_text(displayText);
    mgraphics.restore();**//*//*
}
*/

/* // Draw Text
    var displayText = "ZOOM";

    mgraphics.select_font_face("Bahnschrift");
    mgraphics.set_font_size(14);
    var textMetrics = mgraphics.text_measure(displayText);
    var pivotX = width / 2;
    var pivotY = height / 2;

    // --- Draw white text (simulating clip above bar) ---
    mgraphics.save();
    mgraphics.translate(pivotX, pivotY);
    mgraphics.rotate(-Math.PI / 2);
    mgraphics.set_source_rgba(1, 1, 1, 1); // white

    var ypos = textMetrics[1] / 3;
    var xpos = -textMetrics[0] / 2;

    // Only draw white text if it's above the bar
    if (pivotX - textMetrics[0] / 2 < barTop) {
        mgraphics.move_to(xpos, ypos);
        mgraphics.show_text(displayText);
    }
    mgraphics.restore();

    // --- Draw black text (simulating clip over bar) ---
    mgraphics.save();
    mgraphics.translate(pivotX, pivotY);
    mgraphics.rotate(-Math.PI / 2);
    mgraphics.set_source_rgba(0, 0, 0, 1); // black

    // Only draw black text if it's below the barTop
    if (pivotX + textMetrics[0] / 2 > barTop) {
        mgraphics.move_to(xpos, ypos);
        mgraphics.show_text(displayText);
    }
    mgraphics.restore();

    prev_value = value; */


/*    if (prev_value != value) {
        var displayText = value.toFixed(2); 
    } else {
        var displayText = "ZOOM";
    }    */


/*    mgraphics.translate(pivotX, pivotY);       
    mgraphics.rotate(-Math.PI / 2);             // Rotate 270 degrees             
    mgraphics.move_to(-textMetrics[0] / 2, textMetrics[1] / 3); // Center the text
    mgraphics.show_text(displayText);

    mgraphics.restore();*/ // Restore original drawing state

/*    // Draw value text
    mgraphics.select_font_face("Arial");
    mgraphics.set_font_size(12); 
    mgraphics.set_source_rgba(COLORS.text); 

    var displayText = value.toFixed(2);
    var textMetrics = mgraphics.text_measure(displayText);
    var textX = (width - textMetrics[0]) / 2;
    var textY = (height + textMetrics[1]) / 2;

    mgraphics.move_to(textX, textY);
    mgraphics.show_text(displayText);*/


/*    // Draw value bar (vertical orientation)
    var min = box.getattr("min");
    var max = box.getattr("max");
    var norm = (value - min) / (max - min);
    var barHeight = height * norm;

    mgraphics.set_source_rgba(0.2, 0.6, 1.0, 1.0); // Custom color
    mgraphics.rectangle(0, height - barHeight, width, barHeight);
    mgraphics.fill();

    // Draw border
    mgraphics.set_source_rgba(0, 0, 0, 1); // Black border
    mgraphics.set_line_width(2);
    mgraphics.rectangle(1, 1, width - 2, height - 2);
    mgraphics.stroke();*/

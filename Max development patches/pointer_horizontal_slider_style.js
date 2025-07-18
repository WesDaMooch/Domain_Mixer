//Wes L-M 2025

var COLOURS = {
    // Slider
    background: box.getattr("slidercolor"),
    bar: box.getattr("textcolor"),
    border: box.getattr("textcolor"),
    // Text Gradient
    grad1: box.getattr("slidercolor"),
    grad2: box.getattr("textcolor")
};

//Slider Syle
var text_font = "Ableton Sans Bold";  // Bahnschrift, Ableton Sans Bold
var text_size = 12;             // 9.5 is abletons default

// Slider Behaviour

function paint() {

    var value = box.getvalueof()[0];
    var viewsize = mgraphics.size;
    var width = viewsize[0];
    var height = viewsize[1];

    // Fill Background
    mgraphics.set_source_rgba(COLOURS.background);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();

    // Draw Border
    var borderTabSize = 4.5;
    mgraphics.set_source_rgba(COLOURS.border);
    mgraphics.set_line_width(1);
    mgraphics.rectangle(0.5, 0.5, width-1, height-1);  // Offset for pixel-perfect stroke
    mgraphics.stroke();
    mgraphics.set_source_rgba(COLOURS.background);
    mgraphics.rectangle(borderTabSize, 0, width - (borderTabSize*2), height);
    mgraphics.fill();

    // Draw Pointer Bar
    var barSize = 15
    var barPos = value * width;
    mgraphics.set_source_rgba(COLOURS.bar);
    mgraphics.rectangle(barPos - (barSize * 0.5), 0, barSize, height);
    mgraphics.fill();

    // Draw Text
    var text = box.varname;

    mgraphics.select_font_face(text_font);
    mgraphics.set_font_size(text_size); 

    var text_measurement = mgraphics.text_measure(text);    // Returns text width & height

    var split1 = value - ((barSize * 0.5) / width); 
    var split2 = value + ((barSize * 0.5) / width);

    var grad = mgraphics.pattern_create_linear(0, 0, width, 0);

    grad.add_color_stop_rgba(0.0, COLOURS.grad2);
    grad.add_color_stop_rgba(split1 - 0.001, COLOURS.grad2);
    grad.add_color_stop_rgba(split1 + 0.001, COLOURS.grad1);

    grad.add_color_stop_rgba(split2 - 0.001, COLOURS.grad1);     
    grad.add_color_stop_rgba(split2 + 0.001, COLOURS.grad2);      
    grad.add_color_stop_rgba(1.0, COLOURS.grad2);       

    mgraphics.move_to((width/2)-text_measurement[0]/2, (height/2)+text_measurement[1]/3.5)
    mgraphics.text_path(text);                  // Convert text to path

    // Apply gradient
    mgraphics.set_source(grad);
    mgraphics.fill();

    //mgraphics.redraw();
}

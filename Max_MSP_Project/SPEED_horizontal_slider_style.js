//Wes L-M 2025

var COLOURS = {
    // Slider
    background: [0.549, 0.549, 0.549, 1],
    bar: [0, 0, 0],
    border: [0, 0, 0],
    // Text Gradient
    grad1: [0.549, 0.549, 0.549, 1],
    grad2: [0, 0, 0, 1]
};

//Slider Syle
var text_font = "Ableton Sans Bold";  // Bahnschrift, Ableton Sans Bold
var text_size = 12;             // 9.5 is abletons default

// Slider Behaviour
var exponent = 2;

var prev_value = box.getvalueof()[0];

function paint() {

    var value = box.getvalueof()[0];
    var viewsize = mgraphics.size;
    var width = viewsize[0];
    var height = viewsize[1];

    // Fill Background
    mgraphics.set_source_rgb(COLOURS.background);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();

    // Draw Border
    var borderTabSize = 4.5;
    mgraphics.set_source_rgb(COLOURS.border);
    mgraphics.set_line_width(1);
    mgraphics.rectangle(0.5, 0.5, width-1, height-1);  // Offset for pixel-perfect stroke
    mgraphics.stroke();
    mgraphics.set_source_rgb(COLOURS.background);
    mgraphics.rectangle(borderTabSize, 0, width - (borderTabSize*2), height+1);
    mgraphics.fill();

    // Draw Bar
    var barSize = value * width;
    mgraphics.set_source_rgb(COLOURS.bar);
    mgraphics.rectangle(0, 0, barSize, height);
    mgraphics.fill();

    // Draw Text
    display_value = Math.pow(value, exponent);

    // Find decimal to round to
/*    var decimal_place = 0;
    if (display_value < 0.01) {
        decimal_place = 2;
    } else if (display_value < 0.1) {
        decimal_place = 1;
    }*/

    // Alternate text for certian values
    var text = box.varname;
/*    if(prev_value != value) {
        if (display_value < 0.0001) {
            text = "Frozen";
        } //else { 
            //text = (100 * display_value).toFixed(decimal_place) + "%";
        //}
    }*/

    mgraphics.select_font_face(text_font);
    mgraphics.set_font_size(text_size); 

    var text_measurement = mgraphics.text_measure(text);    // Returns text width & height

    var split = value;

    var grad = mgraphics.pattern_create_linear(0, 0, width, 0);
    grad.add_color_stop_rgba(0.0, COLOURS.grad1);       
    grad.add_color_stop_rgba(split - 0.001, COLOURS.grad1);     
    grad.add_color_stop_rgba(split + 0.001, COLOURS.grad2);      
    grad.add_color_stop_rgba(1.0, COLOURS.grad2);       

    mgraphics.move_to((width/2)-text_measurement[0]/2, (height/2)+text_measurement[1]/3.5)
    mgraphics.text_path(text);                  // Convert text to path

    // Apply gradient
    mgraphics.set_source(grad);
    mgraphics.fill();

    //mgraphics.redraw();
    prev_value = value;
}

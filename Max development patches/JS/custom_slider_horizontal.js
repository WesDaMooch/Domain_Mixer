var COLOURS = {
    background: [0, 0, 0],
    bar: [1, 1, 1],
    border: [1, 1, 1],
    text: [1, 1, 1, 1]
};

//Custom Stuff
var exponent = 2;

var prev_value = 0;

function paint() {

    var value = box.getvalueof()[0];
    var viewsize = mgraphics.size;
    var width = viewsize[0];
    var height = viewsize[1];


    // Fill Background
    mgraphics.set_source_rgb(COLOURS.background);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();

    // Draw Bar
    var barSize = value * width;
    mgraphics.set_source_rgb(COLOURS.bar);
    mgraphics.rectangle(0, 0, barSize, height);
    mgraphics.fill();

    // Draw Border
    mgraphics.set_source_rgb(COLOURS.border);
    mgraphics.set_line_width(1);
    mgraphics.rectangle(0.5, 0.5, width - 1, height - 1);  // Offset for pixel-perfect stroke
    mgraphics.stroke();

    //var text = "Hello";

    // Draw Text
    //var displayText = value.toFixed(2);
    //var text = "SPEED";
    var text = box.varname;
    if(prev_value != value) {
        text = (100 * Math.pow(value, exponent)).toFixed(0) + "%";
        if (value === 0) {
            text = "FROZEN";
        }
    }

    mgraphics.select_font_face("Ableton Sans Bold");//Bahnschrift, Ableton Sans Bold
    mgraphics.set_font_size(9.5); //9.5

    var text_measurement = mgraphics.text_measure(text);    // Returns text width & height

    var split = value;

    var grad = mgraphics.pattern_create_linear(0, 0, width, 0);
    grad.add_color_stop_rgba(0.0, 0, 0, 0, 1);       
    grad.add_color_stop_rgba(split - 0.001, 0, 0, 0, 1);     
    grad.add_color_stop_rgba(split + 0.001, 1, 1, 1, 1);      
    grad.add_color_stop_rgba(1.0, 1, 1, 1, 1);       

    mgraphics.move_to((width/2)-text_measurement[0]/2, (height/2)+text_measurement[1]/3.5)
    mgraphics.text_path(text);                  // Convert text to path

    // Apply gradient
    mgraphics.set_source(grad);
    mgraphics.fill();

    //mgraphics.redraw();
    prev_value = value;
}

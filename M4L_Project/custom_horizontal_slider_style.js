//Wes L-M 2025

var COLOURS = {
    // Slider backround and bar
    background: box.getattr("slidercolor"),
    bar: box.getattr("textcolor"),
    border: box.getattr("textcolor"),
    // Text gradient
    grad1: box.getattr("slidercolor"),
    grad2: box.getattr("textcolor")
};

// Text Style
var text_font = "Ableton Sans Medium";  // Bahnschrift, Ableton Sans Bold
var text_size = 9.5;             // 9.5 is abletons default

function paint() {
    var slider_name = box.varname;
    var value = box.getvalueof()[0];
    var viewsize = mgraphics.size;
    var width = viewsize[0];
    var height = viewsize[1];

    var borderPadding = 2; 
    var barPadding = borderPadding * 0.5;

    // Fill Background
    mgraphics.set_source_rgba(COLOURS.background);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();

    // Draw Border
    var borderTabSize = 4.5;
    mgraphics.set_source_rgba(COLOURS.border);
    mgraphics.set_line_width(1);
    mgraphics.rectangle(0.5, borderPadding * 0.5, width-1, height - borderPadding); 
    mgraphics.stroke();

    mgraphics.set_source_rgba(COLOURS.background);
    mgraphics.rectangle(borderTabSize, 0, width - (borderTabSize * 2), height);
    mgraphics.fill();

    // Draw Bar
    var pointerSize = 13;
    var pointerRoundness = 4;
    var barPos = value * width;
    mgraphics.set_source_rgba(COLOURS.bar);

    if (slider_name == "Direction") {
        // Pointer bar
        //mgraphics.rectangle(barPos - (pointerSize * 0.5), barPadding * 0.5, pointerSize, height - barPadding);

        mgraphics.rectangle_rounded(barPos - (pointerSize * 0.5), barPadding * 0.5, pointerSize, height - barPadding, pointerRoundness, pointerRoundness)
    } else if (slider_name == "Zoom" || slider_name == "Phase") {
        // Bidirectional bar
        if (value > 0.5) {
            barPos = ((value * 2) - 1) * (width * 0.5);
            mgraphics.rectangle(width * 0.5, barPadding * 0.5, barPos, height - barPadding);
        } else {
            mgraphics.rectangle(barPos, barPadding * 0.5, (width * 0.5) - barPos, height - barPadding);
        }
    } else {
        // Linear bar
        mgraphics.rectangle(0, barPadding * 0.5, barPos, height - barPadding);
    }
    mgraphics.fill();


    // Draw Text
    mgraphics.select_font_face(text_font);
    mgraphics.set_font_size(text_size);

    var text_measurement = mgraphics.text_measure(slider_name);    // Returns text width & height

    var grad = mgraphics.pattern_create_linear(0, 0, width, 0);
    var split = value;

    if (slider_name == "Direction") {
        // Pointer bar
        var split1 = value - ((pointerSize * 0.5) / width);
        var split2 = value + ((pointerSize * 0.5) / width)
        grad.add_color_stop_rgba(0.0, COLOURS.grad2);
        grad.add_color_stop_rgba(split1 - 0.001, COLOURS.grad2);
        grad.add_color_stop_rgba(split1 + 0.001, COLOURS.grad1);

        grad.add_color_stop_rgba(split2 - 0.001, COLOURS.grad1);
        grad.add_color_stop_rgba(split2 + 0.001, COLOURS.grad2);
        grad.add_color_stop_rgba(1.0, COLOURS.grad2);    
    } else if (slider_name == "Zoom" || slider_name == "Phase") {
        // Bidirectional bar
        if (value > 0.499 && value < 0.501) {
            grad.add_color_stop_rgba(0.0, COLOURS.grad2);
            grad.add_color_stop_rgba(1.0, COLOURS.grad2);
        } else if (value >= 0.5) {
            grad.add_color_stop_rgba(0.0, COLOURS.grad2);
            grad.add_color_stop_rgba(0.4999, COLOURS.grad2);
            grad.add_color_stop_rgba(0.5001, COLOURS.grad1);
            grad.add_color_stop_rgba(split - 0.001, COLOURS.grad1);
            grad.add_color_stop_rgba(split + 0.001, COLOURS.grad2);
            grad.add_color_stop_rgba(1.0, COLOURS.grad2);
        } else {
            grad.add_color_stop_rgba(0.0, COLOURS.grad2);
            grad.add_color_stop_rgba(split - 0.001, COLOURS.grad2);
            grad.add_color_stop_rgba(split + 0.001, COLOURS.grad1);
            grad.add_color_stop_rgba(0.4999, COLOURS.grad1);
            grad.add_color_stop_rgba(0.5001, COLOURS.grad2);
            grad.add_color_stop_rgba(1.0, COLOURS.grad2);
        }
    } else {
        // Linear bar
        grad.add_color_stop_rgba(0.0, COLOURS.grad1);
        grad.add_color_stop_rgba(split - 0.001, COLOURS.grad1);
        grad.add_color_stop_rgba(split + 0.001, COLOURS.grad2);
        grad.add_color_stop_rgba(1.0, COLOURS.grad2); 
    }

    mgraphics.move_to((width / 2) - text_measurement[0] / 2, (height / 2) + text_measurement[1] / 3.5)
    mgraphics.text_path(slider_name);                  // Convert text to path

    // Lable text
    if (slider_name == "Zoom" || slider_name == "Phase") {
        mgraphics.move_to(6, (height / 2) + text_measurement[1] / 3.5);
        mgraphics.text_path("-");

        mgraphics.move_to(width - 12, (height / 2) + text_measurement[1] / 3.5);
        mgraphics.text_path("+");
    } //Direction arrows here

    // Apply gradient
    mgraphics.set_source(grad);
    mgraphics.fill();
}

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
var text_font = "Ableton Sans Bold";  // Bahnschrift, Ableton Sans Bold
var text_size = 11;             // 9.5 is abletons default
var label_text_size = 9.5;

function paint() {
    with (mgraphics) {
        var slider_name = box.varname;
        var value = box.getvalueof()[0];
        var viewsize = size;
        var width = viewsize[0];
        var height = viewsize[1];

        var borderPadding = 2;
        var barPadding = borderPadding * 0.5;

        // Fill Background
        set_source_rgba(COLOURS.background);
        rectangle(0, 0, width, height);
        fill();

        // Draw Border
        var borderTabSize = 4.5;
        set_source_rgba(COLOURS.border);
        set_line_width(1);
        rectangle(0.5, borderPadding * 0.5, width - 1, height - borderPadding);
        stroke();

        set_source_rgba(COLOURS.background);
        rectangle(borderTabSize, 0, width - (borderTabSize * 2), height);
        fill();

        // Draw Bar
        var pointerSize = 13;
        var pointerRoundness = 4;
        var barPos = value * width;
        set_source_rgba(COLOURS.bar);

        if (slider_name == "Direction") {
            // Pointer bar
            //rectangle(barPos - (pointerSize * 0.5), barPadding * 0.5, pointerSize, height - barPadding);

            rectangle_rounded(barPos - (pointerSize * 0.5), barPadding * 0.5, pointerSize, height - barPadding, pointerRoundness, pointerRoundness)
        } else if (slider_name == "Zoom" || slider_name == "Phase") {
            // Bidirectional bar
            if (value > 0.5) {
                barPos = ((value * 2) - 1) * (width * 0.5);
                rectangle(width * 0.5, barPadding * 0.5, barPos, height - barPadding);
            } else {
                rectangle(barPos, barPadding * 0.5, (width * 0.5) - barPos, height - barPadding);
            }
        } else {
            // Linear bar
            rectangle(0, barPadding * 0.5, barPos, height - barPadding);
        }
        fill();


        // Draw Text
        save();
        select_font_face(text_font);
        set_font_size(text_size);

        var text_measurement = text_measure(slider_name);    // Returns text width & height

        var grad = pattern_create_linear(0, 0, width, 0);
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

        move_to((width / 2) - text_measurement[0] / 2, (height / 2) + text_measurement[1] / 3.5)
        text_path(slider_name);                  // Convert text to path

        restore();
        set_source(grad);
        fill();

        // Lable text
        save();
        set_font_size(label_text_size);

        if (slider_name == "Zoom" || slider_name == "Phase") {
            move_to(6, (height / 2) + text_measurement[1] / 4);
            text_path("-");

            move_to(width - 12, (height / 2) + text_measurement[1] / 3.5);
            text_path("+");
        } //Direction arrows here

        restore();
        // Apply gradient
        set_source(grad);
        fill();
    }
}

//Wes L-M 2025
var COLOURS = {
    // Slider backround and bar
    background: [0.212, 0.212, 0.212, 1.000],
    text: [0.710, 0.710, 0.710, 1.000],
    line: [0.710, 0.710, 0.710, 1.000]
};

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var sr = 48000; // Default samplerate

var ui_size = [400, 169];

// Text Style
//var text_font = "Ableton Sans Bold";  // Bahnschrift, Ableton Sans Bold
//var text_size = 12; //12             // 9.5 is abletons default

function paint() {
    with (mgraphics) {

        // Draw Scope
        var scope_length = 160;
        var scope_height = 60;
        var scope_pad = 10;
        var num_ticks = 5;
        var scope_start_x = 100;
        drawScopeBox(scope_start_x, ui_size[1] - (scope_pad * 2), scope_length, scope_height,
            scope_pad, scope_length / num_ticks, 4);


        var mod_area_start_x = scope_start_x + scope_length; //start_x + box_length
        var mod_area_start_y = scope_height + scope_pad; //box_height + pad

        drawModulatorArea(mod_area_start_x, mod_area_start_y, scope_pad, ui_size[1] - scope_pad);

        drawCarrierArea(scope_start_x, ui_size[1] - ((scope_pad * 2) + scope_height),
            scope_pad, ui_size[1] - scope_pad, scope_height)
    }   
}

function drawScopeBox(start_x, start_y, box_length, box_height, pad, tick_spacing, tick_height) {
    with (mgraphics) {

        var line_width = 1;
        set_line_width(line_width);
        set_source_rgba(COLOURS.line);

        var title_text_size = 9.5;
        var title_text_font = "Ableton Sans Bold";


        // Draw Scope Box
        // Draw left vertical line
        move_to(start_x, pad)
        line_to(start_x, box_height + pad);
        stroke();

        //outputValue(pad);

        // Draw right vertical line
        move_to(start_x + box_length, pad)
        line_to(start_x + box_length, box_height + pad);
        stroke();


        // Draw Spectrogram Box
        // Draw bottom line
        //move_to(start_x, start_y);
        //line_to(start_x + box_length, start_y);
        //stroke();

        // Draw left vertical line
        move_to(start_x, start_y)
        line_to(start_x, start_y - box_height);
        stroke();

        // Draw right vertical line
        move_to(start_x + box_length, start_y)
        line_to(start_x + box_length, start_y - box_height);
        stroke();

        // Draw ticks
        for (var i = 0; i <= box_length; i += tick_spacing) {
            var x = start_x + i;
            move_to(x, start_y - (line_width * 0.5));
            line_to(x, start_y + tick_height);
            stroke();
        }


        // Draw Text
        set_source_rgba(COLOURS.text);
        select_font_face("Ableton Sans Medium");
        set_font_size(9.5);

        // Draw first label
        var label_first = "20";
        var label_first_measurement = text_measure(label_first);
        move_to(start_x - (label_first_measurement[0] * 0.5), start_y + tick_height + (label_first_measurement[1] * 0.8));
        show_text(label_first);

        // Draw last label (samplerate dependant)
        var label_last = ((sr * 0.5) * 0.001).toFixed(0) + "k";
        var label_last_measurement = text_measure(label_last);
        move_to(start_x + box_length - (label_last_measurement[0] * 0.5), start_y + tick_height + (label_last_measurement[1] * 0.8));
        show_text(label_last);

        // Draw vertical carrier title
        save();
        var spectrogram_title = "CARRIER";
 
        select_font_face(title_text_font);
        set_font_size(title_text_size);

        var spectrogram_title_measurement = text_measure(spectrogram_title);
        var horizontal_spectrogram_title_pad = spectrogram_title_measurement[1]; 

        move_to(start_x + box_length + horizontal_spectrogram_title_pad, start_y - (box_height * 0.5) + (spectrogram_title_measurement[0] * 0.5))
        rotate(-Math.PI * 0.5);
        show_text(spectrogram_title);
        restore();

        // Draw vertical modulator title
        save();
        var scope_title = "MODULATOR";

        select_font_face(title_text_font);
        set_font_size(title_text_size);

        var scope_title_measurement = text_measure(scope_title);
        var horizontal_scope_title_pad = scope_title_measurement[1] *  0.5;
        move_to(start_x - horizontal_scope_title_pad, (box_height + pad) - (box_height * 0.5) + (scope_title_measurement[0] * 0.5))
        rotate(-Math.PI * 0.5);
        show_text(scope_title);
        restore();
    }
}

function drawModulatorArea(start_x, start_y, top_y, bottom_y) {
    with (mgraphics) {

        var line_width = 1;
        set_line_width(line_width);
        set_source_rgba(COLOURS.line);

        var top_line_length = 110;
        var mid_line_length = 18;
        var diagonal_line_length = mid_line_length + 10;

        // Draw
        // Top line
        move_to(start_x - 0.5, top_y)
        line_to(start_x + top_line_length, top_y);
        stroke();
        // Mid Line
        move_to(start_x - 0.5, start_y)
        line_to(start_x + mid_line_length, start_y);
        stroke();
        // Diagonal Line
        move_to(start_x - 0.5 + mid_line_length, start_y)
        line_to(start_x + diagonal_line_length, bottom_y);
        stroke();
        // Bottom Line
        move_to(start_x - 0.5 + diagonal_line_length, bottom_y)
        line_to(start_x + top_line_length, bottom_y);
        stroke();

    }
}

function drawCarrierArea(start_x, start_y, top_y, bottom_y, height) {
    with (mgraphics) {

        var line_width = 1;
        set_line_width(line_width);
        set_source_rgba(COLOURS.line);

        var top_line_length = 40;
        var mid_line_length = 18;
        var diagonal_line_length = mid_line_length + 10;

        // Draw
        // Bottom line
        move_to(start_x - diagonal_line_length + 0.5, bottom_y)
        line_to(start_x - diagonal_line_length - top_line_length, bottom_y);
        stroke();
        // Mid Line
        move_to(start_x + 0.5, start_y)
        line_to(start_x - mid_line_length, start_y);
        stroke();
        // Diagonal Line
        move_to(start_x - mid_line_length + 0.5, start_y)
        line_to(start_x - diagonal_line_length, top_y + height);
        stroke();
        // Top Line
        move_to(start_x - diagonal_line_length + 0.5, top_y + height)
        line_to(start_x - diagonal_line_length - top_line_length, top_y + height);
        stroke();
    }
}

function setSamplerate(new_sr) {
    sr = new_sr;
    mgraphics.redraw()
}

function setLineColour(r, g, b, a) {
    COLOURS.line = [r, g, b, a];
    COLOURS.text = [r, g, b, a];
    mgraphics.redraw();
}

function outputValue(value) {
    outlet(0, value);
}  
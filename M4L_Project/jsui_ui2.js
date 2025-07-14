//Wes L-M 2025
var COLOURS = {
    // Slider backround and bar
    background: [0.212, 0.212, 0.212, 1.000],
    text: [0.710, 0.710, 0.710, 1.000],
    line: [0.710, 0.710, 0.710, 1.000],

    LCDbackground: [0.094, 0.094, 0.094, 1.000],
    LCDline: [1.000, 1.000, 1.000, 0.459], //constant
    LCDtext: [1.000, 1.000, 1.000, 0.459]  //constant
};

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var sr = 48000; // Default samplerate

var ui_size = [400, 169];

// Text Style
var text_font = "Ableton Sans Medium"; 
var text_size = 9.5;              

function paint() {
    with (mgraphics) {

        //INPUT BUTTON IS 35px
        //padding
        var input_button_size = 35;
        var horizontal_pad = 5;


        // Draw LCD background
        var LCD_x = (horizontal_pad * 2) + input_button_size;
        var LCD_y = 0;
        var LCD_width = 200;
        var LCD_height = 169; 

        drawLCD(LCD_x, LCD_y, LCD_width, LCD_height)

        //Dial size 28 x 28
        var ticks = 11;
        var i_r = 15;
        var o_r = 18;
        var dial_size = 28;
        
        var d1_x = 258 + (dial_size * 0.5);
        var d1_y = 47 + (dial_size * 0.5);
        drawDialTicks(d1_x, d1_y, i_r, o_r, ticks, "Speed")

        var d2_x = 312 + (dial_size * 0.5);
        var d2_y = 47 + (dial_size * 0.5);
        drawDialTicks(d2_x, d2_y, i_r, o_r, ticks, "Curve")

        var d3_x = 258 + (dial_size * 0.5);
        var d3_y = 96 + (dial_size * 0.5);
        drawDialTicks(d3_x, d3_y, i_r, o_r, ticks, "Gain")

        var d4_x = 312 + (dial_size * 0.5);
        var d4_y = 96 + (dial_size * 0.5);
        drawDialTicks(d4_x, d4_y, i_r, o_r, ticks, "Thresh")

    }   
}

function drawLCD(x, y, width, height) {
    with (mgraphics) {
        //Variables
        var line_width = 1; 
        var v_pad = 20;             //vertical padding
        var h_pad = width * 0.1;    //horizontal padding
      
        select_font_face(text_font);
        set_font_size(text_size);

        set_line_width(line_width);

        // LCD background
        var background_roundness = 12;
        set_source_rgba(COLOURS.LCDbackground);
        rectangle_rounded(x, y, width, height,
            background_roundness, background_roundness);
        fill();

        // Spectrogram Box
        // Ticks
        var num_ticks = 5;
        var tick_height = 4;
        var spectrogram_width = width - (h_pad * 2);
        var spectrogram_x = x + h_pad;
        var spectrogram_y = height - v_pad;
        var tick_spacing = spectrogram_width / num_ticks;

        // Bottom line
        //set_source_rgba(COLOURS.LCDline);
        //move_to(spectrogram_x, spectrogram_y);
        //line_to(spectrogram_x + spectrogram_width, spectrogram_y);
        //stroke();

        set_source_rgba(COLOURS.LCDline);
        for (var i = 0; i <= spectrogram_width; i += tick_spacing) {
            var tick_x = spectrogram_x + i;
            move_to(tick_x, spectrogram_y - (line_width * 0.5));
            line_to(tick_x, spectrogram_y + tick_height);
            stroke();
        }

        // Draw text
        set_source_rgba(COLOURS.LCDtext);

        // Title
        save();
        var spectrogram_title = "Carrier";
        var spectrogram_title_measurement = text_measure(spectrogram_title);
        move_to(x + (h_pad * 0.5) + (spectrogram_title_measurement[1] / 3),
            (height * 0.75) + (spectrogram_title_measurement[0] * 0.5))
        rotate(-Math.PI * 0.5);
        show_text(spectrogram_title);
        restore();

        // Low label
        var label_first = "20";
        var label_first_measurement = text_measure(label_first);
        move_to(spectrogram_x - (label_first_measurement[0] * 0.5),
            spectrogram_y + tick_height + label_first_measurement[1]);
        show_text(label_first);

        // High label
        var label_last = ((sr * 0.5) * 0.001).toFixed(0) + "kHz";
        var label_last_measurement = text_measure(label_last);
        move_to(spectrogram_x + spectrogram_width - (label_last_measurement[0] * 0.5),
            spectrogram_y + tick_height + label_last_measurement[1]);
        show_text(label_last);


        // Scope Box
        set_source_rgba(COLOURS.LCDline);

        var scope_x = spectrogram_x;
        var scope_y = v_pad;
        var scope_end_y = (height * 0.5)  - (v_pad * 0.25);
        var scope_width = spectrogram_width;
        
        // Left line   
        move_to(scope_x, scope_y);
        line_to(scope_x, scope_end_y);
        stroke();

        // Right line
        move_to(scope_x + scope_width, scope_y);
        line_to(scope_x + scope_width, scope_end_y);
        stroke();

        // Draw text
        set_source_rgba(COLOURS.LCDtext);

        // Title
        save();
        var scope_title = "Modulator";
        var scope_title_measurement = text_measure(scope_title);
        move_to(x + (h_pad * 0.5) + (scope_title_measurement[1] / 3),
            ((v_pad * 0.5) + (scope_end_y * 0.5)) + (scope_title_measurement[0] * 0.5));
        rotate(-Math.PI * 0.5);
        show_text(scope_title);
        restore();
    }
}

function drawDialTicks(x, y, inner_radius, outer_radius, num_ticks, name) {
    with (mgraphics) {

        // Ticks
        set_line_width(1);
        set_source_rgba(COLOURS.LCDbackground); //change

        var ndegrees = 270;
        var arc_start = (270 - ndegrees * 0.5) * (2 * Math.PI / 360);
        var arc_end = (270 + ndegrees * 0.5) * (2 * Math.PI / 360);

        for (var i = 0; i < num_ticks; i++) {
            var t = i / (num_ticks - 1);
            var angle = arc_start + t * (arc_end - arc_start);

            var x1 = x + inner_radius * Math.cos(angle);
            var y1 = y + inner_radius * Math.sin(angle);
            var x2 = x + outer_radius * Math.cos(angle);
            var y2 = y + outer_radius * Math.sin(angle);

            move_to(x1, y1);
            line_to(x2, y2);
            stroke();

            // Title
/*            select_font_face(text_font);
            set_font_size(text_size);

            //set_source_rgba(COLOURS.LCDtext); //change

            name_measure = text_measure(name);

            var name_pad = 3;
            var name_x = x - (name_measure[0] * 0.5);
            var name_y = y - outer_radius - name_pad;

            move_to(name_x, name_y);
            show_text(name);*/
        }
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

function setLCDBackgroundColour(r, g, b, a) {
    COLOURS.LCDbackground = [r, g, b, a];
    mgraphics.redraw();
}

function outputValue(value) {
    //debug
    outlet(0, value);
}  
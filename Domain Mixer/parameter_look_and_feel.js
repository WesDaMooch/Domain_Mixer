// Copyright 2025 Wesley Lawrence Leggo-Morrell
//
// Author: Wesley Lawrence Leggo-Morrell (wes.mm@outlook.com)
//
// Licensed under the MIT License. See LICENSE file or
// https://opensource.org/licenses/MIT for information.
//
// -----------------------------------------------------------------------------
//
// Domain Mixer Parameter Look and Feel
// Version:     BETAv1.0
// Created:     18/07/2025
//
// TSKWQLTUAD


var COLOURS = {
    // Slider colours
    slider_bar: box.getattr("textcolor"),
    slider_border: box.getattr("textcolor"),

    slider_LCDtext: [1.000, 1.000, 1.000, 0.459],

    // Text gradient
    grad1: box.getattr("slidercolor"),
    grad2: box.getattr("textcolor"), 

    // Dial colours
    dial_body: box.getattr("activefgdialcolor"),
    dial_border: box.getattr("activedialcolor"),
    dial_pointer: box.getattr("activeneedlecolor")
};


// Text style
var text_font = "Ableton Sans Medium";
var text_size = 9.5;   

var label_text_font = "Ableton Sans Bold";                          
var label_text_size = 9.5;

var w = box.rect[2] - box.rect[0];
var h = box.rect[3] - box.rect[1];

function paint() {
    with (mgraphics) {

        var n = box.varname;
        var v = box.getvalueof()[0];

        if (n == "Speed" || n == "Gain" || n == "Thresh" || n == "Curve") {
            // Draw dials
            drawDial(n, v, w, h);
        } else {
            // Draw sliders
            if (n == "Phase") {
                drawHorizontalLCDSlider(v, w, h);
            } else if (n == "Zoom") {
                drawVerticalLCDSlider(v, w, h);
            } else {
                drawHorizontalSlider(n, v, w, h);
            }
        }
    }
}

function drawHorizontalSlider(slider_name, value, width, height) {
    with (mgraphics) {

        //Variables
        var line_width = 2;
        var pointer_width = 2;
        set_line_width(line_width);

        var value_x = value * width;

        set_source_rgba(COLOURS.slider_bar);
        if (slider_name == "Direction") {
            // Left horizontal bar
            move_to(0, height * 0.5);
            line_to((value_x - pointer_width) - (line_width * 0.5), height * 0.5);
            stroke();

            // Right horizontal bar
            move_to(value_x + pointer_width + (line_width * 0.5), height * 0.5);
            line_to(width + (line_width * 0.5), height * 0.5);
            stroke();

            // Pointer arrow
            pointer_width = 2.5;

            var max_arrow_amount = (height * 0.5) - (line_width * 0.5);
            var arrow_value = (((value * 2) * -1) + 1) * 0.75;
            var arrow_amount = max_arrow_amount * arrow_value;

            if (value < 0.5) {
                var bar_offset = Math.pow(((value * 2) * -1) + 1, 5);

                // Top right vertical pointer bar 
                move_to(value_x + (pointer_width * bar_offset), height * 0.5 + line_width * 0.2);
                line_to(value_x + (pointer_width * bar_offset) + arrow_amount, line_width * 0.5);
                stroke();

                // Bottom right vertical pointer bar
                move_to(value_x + (pointer_width * bar_offset), height * 0.5 - line_width * 0.2);
                line_to(value_x + (pointer_width * bar_offset) + arrow_amount, height - line_width * 0.5);
                stroke();

            } else {
                var bar_offset = Math.pow((value * 2) - 1, 5);

                // Top left vertical pointer bar 
                move_to(value_x - (pointer_width * bar_offset), height * 0.5 + line_width * 0.25);
                line_to(value_x - (pointer_width * bar_offset) + arrow_amount, line_width * 0.5);
                stroke();

                // Bottom left vertical pointer bar
                move_to(value_x - (pointer_width * bar_offset), height * 0.5 - line_width * 0.25);
                line_to(value_x - (pointer_width * bar_offset) + arrow_amount, height - line_width * 0.5);
                stroke();
            }
        } else {
    
            // Mix
            value_x = value * (width - 2 * pointer_width - line_width) + pointer_width + (line_width * 0.5);

            // Left horizontal bar
            move_to(0, height * 0.5);
            line_to(value_x - pointer_width - (line_width * 0.5), height * 0.5);
            stroke();

            // Right horizontal bar
            move_to(value_x + pointer_width + (line_width * 0.5), height * 0.5);
            line_to(width, height * 0.5);
            stroke();

            // Left vertical pointer bar
            move_to(value_x - pointer_width, line_width * 0.5);
            line_to(value_x - pointer_width, height - line_width * 0.5);
            stroke();

            // Right vertical pointer bar 
            move_to(value_x + pointer_width, line_width * 0.5);
            line_to(value_x + pointer_width, height - line_width * 0.5);
            stroke();
        }
    }
}

function drawHorizontalLCDSlider(value, width, height) {
    with (mgraphics) {

        var bar_padding = 10;
        var line_width = 1;
        set_line_width(line_width);

        var value_x = value * width;

        // Border
        if (value == 0.5) {
            set_source_rgba(0, 0, 0, 0);
        } else {
            set_source_rgba(COLOURS.slider_border);
        }
        
        // Left vertical
        move_to(line_width * 0.5, bar_padding * 0.5);
        line_to(line_width * 0.5, height - bar_padding * 0.5);
        stroke();
        // Right vertical
        move_to(width - (line_width * 0.5), bar_padding * 0.5);
        line_to(width - (line_width * 0.5), height - bar_padding * 0.5);
        stroke();

        // Bidirectional bar
        set_source_rgba(COLOURS.slider_bar);
        if (value > 0.5) {
            value_x = ((value * 2) - 1) * (width * 0.5);
            rectangle(width * 0.5, bar_padding * 0.5, value_x, height - bar_padding);
        } else {
            rectangle(value_x, bar_padding * 0.5, (width * 0.5) - value_x,
                height - bar_padding);
        }
        fill();

        // Text gradient
        var grad = pattern_create_linear(0, 0, width, 0);
        var split = value;

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

        // Label
        select_font_face(label_text_font);
        set_font_size(label_text_size);

        var left_label = "-";
        var right_label = "+";
        var label_pad = 10;
        var left_label_measurement = text_measure(left_label);
        var right_label_measurement = text_measure(right_label);

        if (value == 0.5) {
            set_source_rgba(COLOURS.slider_LCDtext);
        } else {
            // Apply gradient
            set_source(grad);
        }

        move_to(0 + label_pad, (height * 0.5) + (left_label_measurement[1] * 0.25));
        text_path(left_label);

        move_to(width - right_label_measurement[0] - label_pad, (height * 0.5) + (right_label_measurement[1] * 0.25));
        text_path(right_label);
        fill();
    }
}

function drawVerticalLCDSlider(value, width, height) {
    with (mgraphics) {
        var bar_padding = 10;
        var height_padding = 20;
        var line_width = 1;
        set_line_width(line_width);

        var value_x = ((value * -1) + 1) * height;

        // Border
        if (value == 0.5) {
            set_source_rgba(0, 0, 0, 0);
        } else {
            set_source_rgba(COLOURS.slider_border);
        }

        // Top 
        move_to(bar_padding * 0.5, line_width * 0.5);
        line_to(width - bar_padding * 0.5, line_width * 0.5);
        stroke();
        // Bottom 
        move_to(bar_padding * 0.5, height - line_width * 0.5);
        line_to(width - bar_padding * 0.5, height - line_width * 0.5);
            stroke();

        // Bidirectional bar
        set_source_rgba(COLOURS.slider_bar);
        if (value > 0.5) {
            value_x = ((((value * -1) + 1) * 2) - 1) * (height * 0.5);
            rectangle(bar_padding * 0.5, height * 0.5, width - bar_padding, value_x);
        } else {
            rectangle(bar_padding * 0.5, value_x, width - bar_padding,
                (height * 0.5) - value_x);
        }
        fill();

        // Text gradient
        var grad = pattern_create_linear(0, height, 0, 0);
        var split = value;

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

        // Label
        select_font_face(label_text_font);
        set_font_size(label_text_size);

        var bottom_label = "-";
        var top_label = "+";
        var label_pad = 3;
        var bottom_label_measurement = text_measure(bottom_label);
        var top_label_measurement = text_measure(top_label);

        if (value == 0.5) {
            set_source_rgba(COLOURS.slider_LCDtext);
        } else {
            // Apply gradient
            set_source(grad);
        }

        //move_to(0 + label_pad, (height * 0.5) + (left_label_measurement[1] * 0.25));
        move_to((width * 0.5) - (bottom_label_measurement[0] * 0.5), height - label_pad);
        text_path(bottom_label);

        move_to((width * 0.5) - (top_label_measurement[0] * 0.5),
            top_label_measurement[0] + label_pad);
        text_path(top_label);
        fill();
    }
}

function drawDial(name, value, width, height) {
    with (mgraphics) {

        var ndegrees = 270;

        // Body
        var body_radius = width * 0.5;
        var body_x = width * 0.5;
        var body_y = height - body_radius;

        set_source_rgba(COLOURS.dial_body);
        arc(body_x, body_y, body_radius, 0, 2 * Math.PI);
        fill();

        // Border
        set_line_width(1);
        set_source_rgba(COLOURS.dial_border);

        arc(body_x, body_y, body_radius - 0.5, 0, 2 * Math.PI);
        stroke();

        // Pointer
        var pointer_radius = 1.9;
        var pointer_arc_radius = body_radius - 5;

        var arc_start = (270 - ndegrees * 0.5) * (2 * Math.PI / 360);
        var arc_end = (270 + ndegrees * 0.5) * (2 * Math.PI / 360);

        var angle = arc_start + value * (arc_end - arc_start);
        var pointer_x = body_x + pointer_arc_radius * Math.cos(angle);
        var pointer_y = body_y + pointer_arc_radius * Math.sin(angle);

        set_source_rgba(COLOURS.dial_pointer);
        arc(pointer_x, pointer_y, pointer_radius, 0, 2 * Math.PI);
        fill();
    }
}

    //Wes L-M 2025

var COLOURS = {
    // Dial knob
    body: box.getattr("activefgdialcolor"),
    border: box.getattr("activedialcolor"),
    pointer: box.getattr("activeneedlecolor")
};

// Text
var text_font = "Ableton Sans Medium";
var text_size = 9.5;    

var w = box.rect[2] - box.rect[0];
var h = box.rect[3] - box.rect[1];

function paint() {
    with (mgraphics) {

        var n = box.varname;
        var v = box.getvalueof()[0];

        drawDial(n, v, w, h);
    }
}

function drawDial(name, value, width, height) {
    with (mgraphics) {

        var ndegrees = 270;

        // Body
        var body_radius = width * 0.5;
        var body_x = width * 0.5;
        var body_y = height - body_radius;

        set_source_rgba(COLOURS.body); 
        arc(body_x, body_y, body_radius, 0, 2 * Math.PI);
        fill(); 

        // Border
        set_line_width(1);
        set_source_rgba(COLOURS.border);

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

        set_source_rgba(COLOURS.pointer);
        arc(pointer_x, pointer_y, pointer_radius, 0, 2 * Math.PI);
        fill();
    }
}

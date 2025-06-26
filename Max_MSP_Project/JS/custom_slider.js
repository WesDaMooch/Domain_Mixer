var COLOURS = {
    background: [0.5, 0.5, 0.8],
    bar: [0.8, 0.5, 0.5],
    border: [1, 1, 1],
    text: [1, 1, 1, 1]
};

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
    var barHeight = value * height;
    mgraphics.set_source_rgb(COLOURS.bar);
    mgraphics.rectangle(0, height - barHeight, width, barHeight);
    mgraphics.fill();

    // Draw Border
    mgraphics.set_source_rgb(COLOURS.border);
    mgraphics.set_line_width(1);
    mgraphics.rectangle(0.5, 0.5, width - 1, height - 1);  // Offset for pixel-perfect stroke
    mgraphics.stroke();

    //var text = "Hello";

    // Draw Text
    //var displayText = value.toFixed(2);
    var text = "00000000000000000000000000";
/*    if (value < 0.01) {
        text = "0";
    } 
*/
    mgraphics.select_font_face("Ableton Sans Bold");//Bahnschrift
    mgraphics.set_font_size(16); //9.5

    var text_measurement = mgraphics.text_measure(text);    // Returns text width & height

    // Convert vertical slider value into gradient X offset
    //var visual_split_px = (1 - value) * height;   // value=1 → top (Y=0), value=0 → bottom
    //var split = visual_split_px / width;          // normalize to gradient's X axis

    // Clamp between 0–1 to avoid out-of-bounds due to height > width
    //split = Math.max(0, Math.min(1, split));


    var split = value - 0.5;

    var grad = mgraphics.pattern_create_linear(0, 0, height, 0);
    grad.add_color_stop_rgba(0.0, 0, 0, 0, 1);        // black
    grad.add_color_stop_rgba(split - 0.001, 0, 0, 0, 1);      // still black
    grad.add_color_stop_rgba(split + 0.001, 1, 1, 1, 1);      // immediate white
    grad.add_color_stop_rgba(1.0, 1, 1, 1, 1);        // white

    mgraphics.save();

    // Move to text center and rotate text 270 degrees
    mgraphics.translate(width / 2, height / 2);
    mgraphics.rotate(-Math.PI / 2);

    // Offset text to center after rotation
    mgraphics.move_to(-text_measurement[0] / 2, text_measurement[1] / 3);   //3?
    //mgraphics.move_to(0, 50)
    mgraphics.text_path(text);                  // Convert text to path

    // Apply gradient
    mgraphics.set_source(grad);
    mgraphics.fill();

    mgraphics.restore();
}

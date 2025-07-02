//Wes L-M 2025

// Canvas setup
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var w = box.rect[2] - box.rect[0];
var h = box.rect[3] - box.rect[1];

var ow = box.rect[2] - box.rect[0];
var oh = box.rect[3] - box.rect[1];

var ocan = new MGraphics(ow, oh);
var wave = new Image(ocan);
var bufsize = 1000;

function paint() {
    mgraphics.identity_matrix();

    mgraphics.set_source_surface(wave, 0, 0);
    mgraphics.paint();
}

function onresize() {
    w = box.rect[2] - box.rect[0];
    h = box.rect[3] - box.rect[1];
    ow = box.rect[2] - box.rect[0];
    oh = box.rect[3] - box.rect[1];
    mgraphics.redraw();
}

function drawbuffer(bufferName, x) {
    ocan = new MGraphics(ow, oh);
    var xw = ow / x;
    var u, v;
    var buf = new Buffer(bufferName);
    bufsize = buf.length();
    var samps = Math.floor(buf.framecount() / x);
    var bank;

    with (ocan) {
        set_source_rgb(0, 0, 0);
        set_line_width(1.0);

        move_to(0, oh / 2);
        for (u = 0; u < x; u++) {
            var accum = 0;
            bank = buf.peek(1, u * samps, samps);
            for (v = 0; v < samps; v++) {
                accum = Math.max(accum, Math.abs(bank[v]));
            }
            //line_to(u * xw, (1 - accum) * oh);
            var y = (1 - accum) * (oh / 2);
            line_to(u * xw, y + oh / 2); // draw line centered vertically
        }
        //line_to(ow, oh);
        //line_to(0, oh);
        //close_path();
        //fill();
        stroke();
    }

    wave = new Image(ocan);
    mgraphics.redraw();
}

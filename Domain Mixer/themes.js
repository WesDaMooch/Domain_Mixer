// Inlets and outlets
inlets = 1;
outlets = 12;

// From live
// background
// value_arc
// freeze
// fg
// lcd fg zombie
// control selection

var THEMES = {
    LIVE: {
        // Dynamicly filled by Live
        lcd_background: [0, 0, 0, 0],
        scope: [0, 0, 0, 0],
        freeze: [0, 0, 0, 0],
        text: [0, 0, 0, 0],
        bypass: [0, 0, 0, 0],
        accent: [0, 0, 0, 0], //can be menu texts
        border: [0, 0, 0, 0],
        ui_background: [0, 0, 0, 0], // Transparent for Live
        lcd_text: [1.000, 1.000, 1.000, 0.459], // Not dynamic in Live
        button_off: [0, 0, 0, 0],
        device_background: [0, 0, 0, 0]
    },
    ACTION: {
        lcd_background: [0, 0, 0, 1],
        scope: [0.078, 0.6, 0.329, 1], 
        freeze: [1, 0, 1, 1],
        text: [1, 1, 1, 1],
        bypass: [1, 1, 1, 1],
        accent: [0.894, 0.192, 0.169, 1],
        border: [1, 1, 1, 1],
        ui_background: [0, 0, 0, 1],
        lcd_text: [1, 1, 1, 1],
        button_off: [0, 0, 0, 1],
        device_background: [0, 0, 0, 1]
    }
};

function setLiveTheme(name, r, g, b, a) {
    // Set Live theme
    if (name == "live_lcd_bg") {
        THEMES.LIVE.lcd_background = [r, g, b, a];
    } else if (name == "live_value_arc") {
        THEMES.LIVE.scope = [r, g, b, a];
    } else if (name == "live_freeze_color") {
        THEMES.LIVE.freeze = [r, g, b, a];
    } else if (name == "live_control_fg") {
        THEMES.LIVE.text = [r, g, b, a];
    } else if (name == "live_lcd_control_fg_zombie") {
        THEMES.LIVE.bypass = [r, g, b, a];
    } else if (name == "live_control_selection") {
        THEMES.LIVE.accent = [r, g, b, a];
    } else if (name == "live_contrast_frame") {
        THEMES.LIVE.border = [r, g, b, a];
    } else if (name == "live_macro_title") {
        THEMES.LIVE.button_off = [r, g, b, a];
    } else if (name == "live_surface_bg") {
        THEMES.LIVE.device_background = [r, g, b, a];
    }

}

function getTheme(name) {
    if (name == "LIVE") {
        outlet(0, THEMES.LIVE.lcd_background);
        outlet(1, THEMES.LIVE.scope);
        outlet(2, THEMES.LIVE.freeze);
        outlet(3, THEMES.LIVE.text);
        outlet(4, THEMES.LIVE.bypass);
        outlet(5, THEMES.LIVE.accent);
        outlet(6, THEMES.LIVE.border);
        outlet(7, THEMES.LIVE.ui_background);
        outlet(8, THEMES.LIVE.lcd_text);
        outlet(9, THEMES.LIVE.button_off);
        outlet(10, THEMES.LIVE.device_background);
    } else if (name == "ACTION") {
        outlet(0, THEMES.ACTION.lcd_background);
        outlet(1, THEMES.ACTION.scope);
        outlet(2, THEMES.ACTION.freeze);
        outlet(3, THEMES.ACTION.text);
        outlet(4, THEMES.ACTION.bypass);
        outlet(5, THEMES.ACTION.accent);
        outlet(6, THEMES.ACTION.border);
        outlet(7, THEMES.ACTION.ui_background);
        outlet(8, THEMES.ACTION.lcd_text);
        outlet(9, THEMES.ACTION.button_off);
        outlet(10, THEMES.ACTION.device_background);
    }
    outlet(11, "bang");
}
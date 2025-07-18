{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 84.0, 818.0, 562.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 413.0, 90.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 330.666664212942123, -42.000003933906555, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"id" : "obj-63",
					"jspainterfile" : "custom_dial_style.js",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1273.907135816936488, 419.901709794998169, 27.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 312.0, 96.0, 27.0, 28.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_surface_bg"
						}
,
						"valueof" : 						{
							"parameter_longname" : "live.dial[7]",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Curve",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"textcolor" : [ 0.529411764705882, 0.529411764705882, 0.529411764705882, 1.0 ],
					"varname" : "live.dial[7]"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"id" : "obj-62",
					"jspainterfile" : "custom_dial_style.js",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1222.907135816936488, 419.901709794998169, 27.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 258.0, 96.0, 27.0, 28.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_surface_bg"
						}
,
						"valueof" : 						{
							"parameter_longname" : "live.dial[6]",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Curve",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"textcolor" : [ 0.529411764705882, 0.529411764705882, 0.529411764705882, 1.0 ],
					"varname" : "live.dial[6]"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"id" : "obj-61",
					"jspainterfile" : "custom_dial_style.js",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1222.0, 370.0, 28.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 258.0, 47.0, 28.0, 28.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_surface_bg"
						}
,
						"valueof" : 						{
							"parameter_longname" : "live.dial[5]",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Curve",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"textcolor" : [ 0.529411764705882, 0.529411764705882, 0.529411764705882, 1.0 ],
					"varname" : "live.dial[5]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1283.603926509618759, 291.118489139972667, 180.0, 22.0 ],
					"text" : "jspainterfile custom_dial_style.js"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"id" : "obj-52",
					"jspainterfile" : "custom_dial_style.js",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1273.907135816936488, 370.901709794998169, 27.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 312.0, 47.0, 27.0, 28.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_surface_bg"
						}
,
						"valueof" : 						{
							"parameter_longname" : "live.dial[4]",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Curve",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"textcolor" : [ 0.529411764705882, 0.529411764705882, 0.529411764705882, 1.0 ],
					"varname" : "live.dial[4]"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"id" : "obj-47",
					"jspainterfile" : "custom_horizontal_slider_style_3.js",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1188.0, 345.0, 18.0, 59.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 225.70145720243454, 18.0, 18.0, 59.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_display_handle_one"
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 0.5 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.slider",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "live.slider",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"textcolor" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
					"varname" : "Zoom"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1014.0, 290.5, 123.0, 22.0 ],
					"text" : "setSamplerate 44100"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"id" : "obj-40",
					"jspainterfile" : "custom_horizontal_slider_style_3.js",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1027.0, 327.0, 161.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 64.70145720243454, 0.0, 161.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"slidercolor" : 						{
							"expression" : "themecolor.live_lcd_bg"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_display_handle_one"
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 0.5 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Direction[1]",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Direction",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"textcolor" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
					"varname" : "Phase"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1217.907135816936488, 459.355004721580485, 48.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 255.608593019371028, 133.355004721580485, 48.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.live_control_selection"
						}

					}
,
					"text" : "Mix",
					"textcolor" : [ 1.0, 0.709803921568627, 0.196078431372549, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1217.907135816936488, 326.901709794998169, 48.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 255.608593019371028, -0.098290205001831, 48.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.live_control_selection"
						}

					}
,
					"text" : "Direction",
					"textcolor" : [ 1.0, 0.709803921568627, 0.196078431372549, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"id" : "obj-32",
					"jspainterfile" : "custom_horizontal_slider_style_3.js",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1222.0, 472.0, 80.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 259.70145720243454, 146.0, 80.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_control_selection"
						}
,
						"valueof" : 						{
							"parameter_longname" : "Mix",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Mix",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"textcolor" : [ 1.0, 0.709803921568627, 0.196078431372549, 1.0 ],
					"varname" : "Mix"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"id" : "obj-28",
					"jspainterfile" : "custom_horizontal_slider_style_3.js",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1222.0, 340.0, 80.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 259.70145720243454, 13.0, 80.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_control_selection"
						}
,
						"valueof" : 						{
							"parameter_longname" : "Direction",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Direction",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"textcolor" : [ 1.0, 0.709803921568627, 0.196078431372549, 1.0 ],
					"varname" : "Direction"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1187.858751508121486, 265.562971562147141, 265.0, 22.0 ],
					"text" : "jspainterfile custom_horizontal_slider_style_3.js"
				}

			}
, 			{
				"box" : 				{
					"filename" : "jsui_ui2.js",
					"id" : "obj-18",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 962.360523998737335, 325.118489914833049, 400.0, 169.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 400.0, 169.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 308.827296584844589, 493.998777627944946, 50.0, 22.0 ],
					"text" : "10"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-7",
					"jspainterfile" : "custom_horizontal_slider_style_2",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 746.009475781808874, 445.470717626979763, 80.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 746.009475781808874, 445.470717626979763, 80.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"slidercolor" : 						{
							"expression" : "themecolor.live_value_arc_zombie"
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"trioncolor" : 						{
							"expression" : "themecolor.live_dial_fg"
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 0.2 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Speed[7]",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"slidercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
					"textcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"trioncolor" : [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
					"varname" : "Mix[2]"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-1",
					"jspainterfile" : "custom_horizontal_slider_style_2",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 440.046893312822363, 317.870290928779582, 160.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1083.333380222320557, 374.500017642974854, 160.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"slidercolor" : 						{
							"expression" : "themecolor.live_value_arc_zombie"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_focus_frame"
						}
,
						"trioncolor" : 						{
							"expression" : "themecolor.live_dial_fg"
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 0.5 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Speed",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"slidercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
					"textcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"trioncolor" : [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
					"varname" : "Phase[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 394.5, 250.5, 123.0, 22.0 ],
					"text" : "setLineColour 0 0 0 1"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-19",
					"jspainterfile" : "custom_horizontal_slider_style_2",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 745.940023145512782, 405.395085829666073, 80.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 745.940023145512782, 405.395085829666073, 80.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"slidercolor" : 						{
							"expression" : "themecolor.live_value_arc_zombie"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_focus_frame"
						}
,
						"trioncolor" : 						{
							"expression" : "themecolor.live_dial_fg"
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 0.5 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Speed[6]",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"slidercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
					"textcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"trioncolor" : [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
					"varname" : "Threshold"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-17",
					"jspainterfile" : "custom_horizontal_slider_style_2",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 745.940023145512782, 365.395085829666073, 80.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 745.940023145512782, 365.395085829666073, 80.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"slidercolor" : 						{
							"expression" : "themecolor.live_value_arc_zombie"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_focus_frame"
						}
,
						"trioncolor" : 						{
							"expression" : "themecolor.live_dial_fg"
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 0.5 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Speed[5]",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"slidercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
					"textcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"trioncolor" : [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
					"varname" : "Curve"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 791.148381054401398, 466.870290928779582, 34.861094727407476, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 791.148381054401398, 466.870290928779582, 34.861094727407476, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.numbox",
							"parameter_mmax" : 5000.0,
							"parameter_mmin" : 1.0,
							"parameter_shortname" : "live.numbox",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.numbox"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 746.009475781808874, 466.870290928779582, 34.861094727407476, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 746.009475781808874, 466.870290928779582, 34.861094727407476, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.text",
							"parameter_mmax" : 1,
							"parameter_shortname" : "live.text",
							"parameter_type" : 2
						}

					}
,
					"text" : "RMS",
					"texton" : "Raw",
					"varname" : "live.text"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 352.575900316238403, 163.253665852716381, 144.0, 22.0 ],
					"text" : "buffer~ a @samps 44100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 339.827296584844589, 282.631221026182175, 133.0, 22.0 ],
					"text" : "prepend setSamplerate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 325.988696873188019, 220.903952300548553, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "int", "float", "int", "int" ],
					"patching_rect" : [ 325.988696873188019, 254.237285256385803, 61.0, 22.0 ],
					"text" : "dspstate~"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-15",
					"jspainterfile" : "custom_horizontal_slider_style_2",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 746.009475781808874, 425.470717626979763, 80.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 746.009475781808874, 425.470717626979763, 80.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"slidercolor" : 						{
							"expression" : "themecolor.live_value_arc_zombie"
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"trioncolor" : 						{
							"expression" : "themecolor.live_dial_fg"
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 0.2 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Speed[4]",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"slidercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
					"textcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"trioncolor" : [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
					"varname" : "Gain"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Ableton Sans Bold",
					"id" : "obj-11",
					"jspainterfile" : "custom_horizontal_slider_style_2",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 745.940023363703858, 325.118489914833049, 80.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 745.940023363703858, 325.118489914833049, 80.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"slidercolor" : 						{
							"expression" : "themecolor.theme_bgcolor"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_control_text_bg"
						}
,
						"trioncolor" : 						{
							"expression" : "themecolor.live_dial_fg"
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Speed[2]",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"slidercolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"textcolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
					"trioncolor" : [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
					"varname" : "Speed"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-12",
					"jspainterfile" : "custom_horizontal_slider_style_2",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 745.940023145512782, 345.395085829666073, 80.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 745.940023145512782, 345.395085829666073, 80.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"slidercolor" : 						{
							"expression" : "themecolor.live_value_arc_zombie"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_focus_frame"
						}
,
						"trioncolor" : 						{
							"expression" : "themecolor.live_dial_fg"
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Speed[3]",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"slidercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
					"textcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"trioncolor" : [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
					"varname" : "Direction[2]"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-10",
					"jspainterfile" : "custom_horizontal_slider_style_2",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 745.940023145512782, 385.395085829666073, 80.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 745.940023145512782, 385.395085829666073, 80.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"slidercolor" : 						{
							"expression" : "themecolor.live_value_arc_zombie"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_focus_frame"
						}
,
						"trioncolor" : 						{
							"expression" : "themecolor.live_dial_fg"
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 0.5 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Speed[1]",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Speed",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"slidercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
					"textcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"trioncolor" : [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 1.0 ],
					"varname" : "Zoom[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 2052.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4100.0, 256.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 607.842436000000021, 276.438027024269104, 265.0, 22.0 ],
					"text" : "jspainterfile custom_horizontal_slider_style_2 .js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 340.00393483042717, 85.551090896129608, 358.0, 20.0 ],
					"text" : "http://max-javascript-reference.tim-schenk.de/symbols/#gsc.tab=0"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
					"id" : "obj-30",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 232.162155121564865, 142.725787550210953, 652.27168682217598, 161.905433475971222 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "jsui_ui.js",
					"id" : "obj-3",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 339.827296584844589, 312.870290928779582, 400.0, 169.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 983.333380222320557, 370.000017642974854, 400.0, 169.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 6,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 5,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 4,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 3,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 2,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 1,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"order" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"order" : 3,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"order" : 2,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"order" : 1,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"order" : 3,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"order" : 2,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"order" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1" : [ "Speed", "Speed", 0 ],
			"obj-10" : [ "Speed[1]", "Speed", 0 ],
			"obj-11" : [ "Speed[2]", "Speed", 0 ],
			"obj-12" : [ "Speed[3]", "Speed", 0 ],
			"obj-14" : [ "live.numbox", "live.numbox", 0 ],
			"obj-15" : [ "Speed[4]", "Speed", 0 ],
			"obj-17" : [ "Speed[5]", "Speed", 0 ],
			"obj-19" : [ "Speed[6]", "Speed", 0 ],
			"obj-28" : [ "Direction", "Direction", 0 ],
			"obj-32" : [ "Mix", "Mix", 0 ],
			"obj-40" : [ "Direction[1]", "Direction", 0 ],
			"obj-47" : [ "live.slider", "live.slider", 0 ],
			"obj-52" : [ "live.dial[4]", "Curve", 0 ],
			"obj-61" : [ "live.dial[5]", "Curve", 0 ],
			"obj-62" : [ "live.dial[6]", "Curve", 0 ],
			"obj-63" : [ "live.dial[7]", "Curve", 0 ],
			"obj-7" : [ "Speed[7]", "Speed", 0 ],
			"obj-9" : [ "live.text", "live.text", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "custom_dial_style.js",
				"bootpath" : "~/Documents/GitHub/Domain_Mixer/M4L_Project",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "custom_horizontal_slider_style_2.js",
				"bootpath" : "~/Documents/GitHub/Domain_Mixer/M4L_Project",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "custom_horizontal_slider_style_3.js",
				"bootpath" : "~/Documents/GitHub/Domain_Mixer/M4L_Project",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "jsui_ui.js",
				"bootpath" : "~/Documents/GitHub/Domain_Mixer/M4L_Project",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "jsui_ui2.js",
				"bootpath" : "~/Documents/GitHub/Domain_Mixer/M4L_Project",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}

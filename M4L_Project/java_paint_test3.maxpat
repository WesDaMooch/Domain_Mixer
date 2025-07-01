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
					"id" : "obj-26",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 590.580504729639074, 322.787017935214976, 39.0, 62.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.slider",
							"parameter_shortname" : "live.slider",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.slider"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-19",
					"jspainterfile" : "custom_horizontal_slider_style.js",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 638.509475781808874, 421.574904554782847, 80.0, 18.0 ],
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
					"jspainterfile" : "custom_horizontal_slider_style.js",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 638.509475781808874, 374.880914085803965, 80.0, 18.0 ],
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
					"patching_rect" : [ 683.648381054401398, 450.874686234889964, 34.861094727407476, 15.0 ],
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
					"patching_rect" : [ 638.509475781808874, 450.874686234889964, 34.861094727407476, 15.0 ],
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
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 403.5, 793.0, 43.0, 22.0 ],
					"text" : "refer a"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"id" : "obj-8",
					"maxclass" : "plot~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 403.5, 821.5, 275.991148591041565, 153.557518064975739 ],
					"subplots" : [ 						{
							"color" : [ 0.400000005960464, 0.400000005960464, 0.75, 1.0 ],
							"thickness" : 1.0,
							"point_style" : "none",
							"line_style" : "origin",
							"number_style" : "none",
							"filter" : "none",
							"domain_start" : 0.0,
							"domain_end" : 1.0,
							"domain_style" : "linear",
							"domain_markers" : [  ],
							"domain_labels" : [  ],
							"range_start" : -1.0,
							"range_end" : 1.0,
							"range_style" : "linear",
							"range_markers" : [  ],
							"range_labels" : [  ],
							"origin_x" : 0.0,
							"origin_y" : 0.0
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 520.5, 638.734514057636261, 130.0, 22.0 ],
					"text" : "buffer~ a @samps 100"
				}

			}
, 			{
				"box" : 				{
					"buffername" : "a",
					"id" : "obj-5",
					"maxclass" : "waveform~",
					"numinlets" : 5,
					"numoutlets" : 6,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"patching_rect" : [ 429.0, 695.0, 256.0, 64.0 ]
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
					"jspainterfile" : "custom_horizontal_slider_style.js",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 638.509475781808874, 398.694121712146739, 80.0, 18.0 ],
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
					"jspainterfile" : "custom_horizontal_slider_style.js",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 638.50947599999995, 328.341894000000025, 80.0, 18.0 ],
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
					"jspainterfile" : "custom_horizontal_slider_style.js",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 638.509475781808874, 351.618489914833049, 80.0, 18.0 ],
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
					"varname" : "Direction"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-10",
					"jspainterfile" : "custom_horizontal_slider_style.js",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 741.827296584844589, 328.341894000000025, 80.0, 18.0 ],
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
					"varname" : "Zoom"
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
					"patching_rect" : [ 607.842436000000021, 276.438027024269104, 249.0, 22.0 ],
					"text" : "jspainterfile custom_horizontal_slider_style.js"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-1",
					"jspainterfile" : "custom_horizontal_slider_style.js",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 748.475478484521886, 351.618489914833049, 161.0, 18.0 ],
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
					"varname" : "Phase"
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
					"patching_rect" : [ 339.827296584844589, 312.870290928779582, 400.0, 169.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 0,
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
					"order" : 4,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 3,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 2,
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
					"source" : [ "obj-24", 0 ]
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
			"obj-26" : [ "live.slider", "live.slider", 0 ],
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
				"name" : "custom_horizontal_slider_style.js",
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
 ],
		"autosave" : 0
	}

}

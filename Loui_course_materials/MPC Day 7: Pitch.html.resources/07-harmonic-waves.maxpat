{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 67.0, 72.0, 828.0, 198.0 ],
		"bglocked" : 0,
		"defrect" : [ 67.0, 72.0, 828.0, 198.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "double-click \non \"simple-wavemaker\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 44.0, 157.0, 39.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"presentation_rect" : [ 38.0, 152.0, 0.0, 0.0 ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "simple_wavemaker",
					"numinlets" : 0,
					"patching_rect" : [ 14.0, 15.0, 165.0, 27.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "on_waveforms",
					"numinlets" : 0,
					"patching_rect" : [ 28.0, 92.0, 128.0, 27.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Complex waveforms whose \"partials\" are all whole number multiples of the fundamental or F0 frequency are called harmonic waveforms",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 216.0, 83.0, 594.0, 39.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sinusoidal components can be added together to create complex waveforms",
					"numinlets" : 1,
					"patching_rect" : [ 208.0, 13.0, 483.0, 23.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "conversly, all complex waveforms can be broken down into sinusoidal components",
					"numinlets" : 1,
					"patching_rect" : [ 210.0, 51.0, 522.0, 23.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-5"
				}

			}
 ],
		"lines" : [  ]
	}

}

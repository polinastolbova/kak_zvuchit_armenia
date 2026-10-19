{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 37.0, 77.0, 1465.0, 705.0 ],
        "boxes": [
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 20.0, 650.0, 27.0 ],
                    "text": "ECHOFORMA / КАК ЗВУЧИТ АРМЕНИЯ?  —  generative soundscape"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 70.0, 760.0, 19.0 ],
                    "text": "Эскиз 01 · Воздух / Камень / Резонанс. Записи голоса и дудука можно добавить отдельным слоем позже."
                }
            },
            {
                "box": {
                    "id": "dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 610.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "windlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 120.0, 200.0, 23.0 ],
                    "text": "01  AIR / WIND"
                }
            },
            {
                "box": {
                    "id": "noise",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 35.0, 160.0, 55.0, 22.0 ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "windfilter",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 115.0, 160.0, 110.0, 22.0 ],
                    "text": "lores~ 900 0.7"
                }
            },
            {
                "box": {
                    "id": "windgain",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 260.0, 160.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "windlevel",
                    "maxclass": "flonum",
                    "maximum": 0.5,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 260.0, 125.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "windlevelcomment",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 330.0, 125.0, 150.0, 18.0 ],
                    "text": "Wind level (0–0.5)"
                }
            },
            {
                "box": {
                    "id": "windlfo",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 115.0, 205.0, 85.0, 22.0 ],
                    "text": "cycle~ 0.035"
                }
            },
            {
                "box": {
                    "id": "lfogain",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 220.0, 205.0, 65.0, 22.0 ],
                    "text": "*~ 0.25"
                }
            },
            {
                "box": {
                    "id": "lfooffset",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 300.0, 205.0, 65.0, 22.0 ],
                    "text": "+~ 0.75"
                }
            },
            {
                "box": {
                    "id": "windmod",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 390.0, 160.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "stonelabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 23.0, 247.0, 206.0, 23.0 ],
                    "text": "02  STONE / GEOLOGY"
                }
            },
            {
                "box": {
                    "id": "drone1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 35.0, 310.0, 75.0, 22.0 ],
                    "text": "cycle~ 55"
                }
            },
            {
                "box": {
                    "id": "drone2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 35.0, 345.0, 90.0, 22.0 ],
                    "text": "cycle~ 82.41"
                }
            },
            {
                "box": {
                    "id": "drone1gain",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 155.0, 310.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "drone2gain",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 155.0, 345.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "dronelevel1",
                    "maxclass": "flonum",
                    "maximum": 0.5,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 155.0, 275.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "dronelevel2",
                    "maxclass": "flonum",
                    "maximum": 0.5,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 255.0, 275.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "dronecomment",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 330.0, 275.0, 390.0, 18.0 ],
                    "text": "Two slow, beating tones. Adjust their levels to change the perceived depth."
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "reslabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 23.0, 382.0, 190.0, 23.0 ],
                    "text": "03  STONE / RESONANCE"
                }
            },
            {
                "box": {
                    "id": "resosc1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 35.0, 445.0, 75.0, 22.0 ],
                    "text": "cycle~ 220"
                }
            },
            {
                "box": {
                    "id": "resosc2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 35.0, 480.0, 90.0, 22.0 ],
                    "text": "cycle~ 329.63"
                }
            },
            {
                "box": {
                    "id": "resgain1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 155.0, 445.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "resgain2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 155.0, 480.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "reslevel1",
                    "maxclass": "flonum",
                    "maximum": 0.3,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 155.0, 410.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "reslevel2",
                    "maxclass": "flonum",
                    "maximum": 0.3,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 255.0, 414.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "rescomment",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 330.0, 410.0, 480.0, 18.0 ],
                    "text": "Quiet partials suggest distant resonances; these are artistic tones, not measured site responses."
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "mixlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 241.0, 150.0, 23.0 ],
                    "text": "MIX / OUTPUT"
                }
            },
            {
                "box": {
                    "id": "sum1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 520.0, 315.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "sum2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 580.0, 350.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "sum3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 520.0, 445.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "sum4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 580.0, 480.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "master",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 610.0, 535.0, 75.0, 22.0 ],
                    "text": "*~ 0.35"
                }
            },
            {
                "box": {
                    "id": "clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 610.0, 570.0, 120.0, 22.0 ],
                    "text": "clip~ -0.95 0.95"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "outcomment",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 520.0, 505.0, 415.0, 18.0 ],
                    "text": "Master level is intentionally conservative. Increase carefully after checking your output level."
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "ref",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 675.0, 820.0, 18.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "dac", 1 ],
                    "order": 0,
                    "source": [ "clip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 0 ],
                    "order": 1,
                    "source": [ "clip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "drone1gain", 0 ],
                    "source": [ "drone1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sum1", 0 ],
                    "source": [ "drone1gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "drone2gain", 0 ],
                    "source": [ "drone2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sum1", 1 ],
                    "source": [ "drone2gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "drone1gain", 1 ],
                    "source": [ "dronelevel1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "drone2gain", 1 ],
                    "source": [ "dronelevel2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfooffset", 0 ],
                    "source": [ "lfogain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "windmod", 1 ],
                    "source": [ "lfooffset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "clip", 0 ],
                    "source": [ "master", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "windfilter", 0 ],
                    "source": [ "noise", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sum3", 0 ],
                    "source": [ "resgain1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sum3", 1 ],
                    "source": [ "resgain2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "resgain1", 1 ],
                    "source": [ "reslevel1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "resgain2", 1 ],
                    "source": [ "reslevel2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "resgain1", 0 ],
                    "source": [ "resosc1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "resgain2", 0 ],
                    "source": [ "resosc2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sum2", 0 ],
                    "source": [ "sum1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sum4", 1 ],
                    "source": [ "sum2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sum2", 1 ],
                    "source": [ "sum3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "master", 0 ],
                    "source": [ "sum4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "windgain", 0 ],
                    "source": [ "windfilter", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "windmod", 0 ],
                    "source": [ "windgain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "windgain", 1 ],
                    "source": [ "windlevel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfogain", 0 ],
                    "source": [ "windlfo", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sum4", 0 ],
                    "source": [ "windmod", 0 ]
                }
            }
        ],
        "autosave": 0,
        "oscreceiveudpport": 0
    }
}
;Add stop script hotkeys to prevent blocking the pc clicking endlessly in random places
;For the moment it will remain Alt-Esc and Control-P. Alt-Esc will kill AHK completly, Ctrl-P just stop after a full loop I think
!Escape:: ExitApp
^p:: Pause

;current loaded army position
Deselect1X = 638 
Deselect1Y = 440
Deselect2X = 686
Deselect2Y = 493

;troop to load position
Troop1X = 782
Troop2X = 829
Troop1Y = 720
Troop2Y = 772

;fast units tab position
Fast1X=753
Fast1Y=607
Fast2X=772
Fast2Y=622

;tanks units tab position 
Tank1X = 792
Tank2X = 820
Tank1Y = 604
Tank2Y = 625

;light units tab position
Light1X=842
Light1Y=609
Light2X=860
Light2Y=621

;artilery units tab position
Artilery1X=887
Artilery1Y=607
Artilery2X=903
Artilery2Y=619

;archers units tab position
Archer1X=929
Archer1Y=609
Archer2X=946
Archer2Y=621


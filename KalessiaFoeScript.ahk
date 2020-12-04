#SingleInstance force

;Add stop script hotkeys to prevent blocking the pc clicking endlessly in random places
;For the moment it will remain Alt-Esc and Control-P. Alt-Esc will kill AHK completly, Ctrl-P just stop after a full loop I think
!Escape:: ExitApp
^p:: Pause

;current loaded army position
Deselect1X = 638 
Deselect1Y = 440
Deselect2X = 686
Deselect2Y = 493

GetTroopParameter(Troop, Parameter){
	;troop to load position
	Troop1X = 782
	Troop2X = 829
	Troop1Y = 720
	Troop2Y = 772

	;fast units tab position
	Fast1X:=753
	Fast1Y:=607
	Fast2X:=772
	Fast2Y:=622

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
	if(Troop = 1){
		if(Parameter = "X"){
			Random, rand, Fast1X, Fast2X	
			return rand
		} else {
			Random, rand, Fast1Y, Fast2Y
			return rand
			}
	}
	if(Troop = 2){
		if(Parameter = "X"){
			Random, rand, Tank1X, Tank2X
			return rand
		} else {
			Random, rand, Tank1Y, Tank2Y
			return rand
		}
	}
	if(Troop = 3){
		if(Parameter = "X"){
			Random, rand, Light1X, Light2X
			return rand
		} else {
			Random, rand, Light1Y, Light2Y
			return rand
		}
	}
	if(Troop = 4){
		if(Parameter = "X"){
			Random, rand, Artilery1X, Artilery2X
			return rand
		} else {
			Random, rand, Artilery1Y, Artilery2Y
			return rand
		}
	}
	if(Troop = 5){
		if(Parameter = "X"){
			Random, rand, Archer1X, Archer2X
			return rand
		} else {
			Random, rand, Archer1Y, Archer2Y
			return rand
		}
	}
}

test(){
	InputBox, troopNumber
	InputBox, parameter 
	result := GetTroopParameter(troopNumber,parameter)
	MsgBox, You entered troop number %troopNumber% with parameter %parameter%. The function result is %result%

}

^~:: test()



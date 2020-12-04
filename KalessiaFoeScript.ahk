#SingleInstance force

;Add stop script hotkeys to prevent blocking the pc clicking endlessly in random places
;For the moment it will remain Alt-Esc and Control-P. Alt-Esc will kill AHK completly, Ctrl-P just stop after a full loop I think
!Escape:: ExitApp
^p:: Pause


SelectTroopTab(Troop){
	;fast units tab position
	Fast1X:=753
	Fast1Y:=607
	Fast2X:=772
	Fast2Y:=622

	;tanks units tab position 
	Tank1X = 795
	Tank2X = 820
	Tank1Y = 608
	Tank2Y = 625

	;light units tab position
	Light1X=845
	Light1Y=612
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
		Random, randX, Fast1X, Fast2X	
		Random, randY, Fast1Y, Fast2Y
		Click %randX% %randY%	
	}
	if(Troop = 2){
		Random, randX, Tank1X, Tank2X
		Random, randY, Tank1Y, Tank2Y
		Click %randX% %randY%	
	}
	if(Troop = 3){
		Random, randX, Light1X, Light2X
		Random, randY, Light1Y, Light2Y
		Click %randX% %randY%	
	}
	if(Troop = 4){
		Random, randX, Artilery1X, Artilery2X
		Random, randY, Artilery1Y, Artilery2Y
		Click %randX% %randY%
	}
	if(Troop = 5){
		Random, randX, Archer1X, Archer2X
		Random, randY, Archer1Y, Archer2Y
		Click %randX% %randY%
	}
}


DeselectArmy(){

	;current loaded army position
	Deselect1X = 640 
	Deselect1Y = 443
	Deselect2X = 686
	Deselect2Y = 493
	Times = 8;
	
	while Times > 0 {
		Random, randx, Deselect1X, Deselect2X
		Random, randy, Deselect1Y, Deselect2Y
		Click %randx% %randy%
		Times--
	}
}

FillArmy(Size){
	;troop to load position
	Troop1X = 785
	Troop2X = 835
	Troop1Y = 725
	Troop2Y = 778
	
	
	while(Size>0){
		Random, randx, Troop1X, Troop2X
		Random, randy, Troop1Y, Troop2Y
		Click %randx% %randy%
		Size--
	}
}

ChangeArmy(TroopNr1, Size1, TroopNr2, Size2){
	
	DeselectArmy()
	SelectTroopTab(TroopNr1)
	;ClickRandomNTimes(Size1,Troop1X,Troop1Y,Troop2X,Troop2Y)
	FillArmy(Size1)
	SelectTroopTab(TroopNr2)
	FillArmy(Size2)
	
}

test(){
	InputBox, troopNumber
	InputBox, parameter 
	MsgBox, You entered troop number %troopNumber% with parameter %parameter%.

}

^~:: ChangeArmy(2,2,3,6)



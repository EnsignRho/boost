**********
* main.prg
*****
*
* Boost
*
* A dice rolling game where you give other players a boost.
* Purpose is to reach a particular score (30, 50, 100, etc.)
* chosen by the players.  Roll one less die than the number
* of players.
*
* The roller takes the lowest point value of the dice, given
* other players the score from one dice each until exhausted.
* The goal is to give the weakest playesr the greatest boost,
* helping them out the most.
*
* Scoring is based on self-rolled scores, along with boost
* scores given by other players (totaled, not separate),
* along with the number of rolls obtained to reach the target
* score.
*
*****
* May 26, 2013
* by Rick C. Hodgin
* of Liberty Software Foundation
*****


**********
* Set the basic stuff
*****
	SET STATUS OFF
	SET BELL OFF
	SET DOHISTORY OFF
	SET TALK OFF
	SET ENGINEBEHAVIOR 70
	SET STATUS BAR ON
	SET SAFETY OFF


	SET CLASSLIB TO class\boost.vcx ADDITIVE
	
	_vfp.Visible = .f.
	
	DO FORM forms\frmMain
	
	READ EVENTS


	IF "vfp9.exe" $ LOWER(vfp.ServerName)
		_vfp.Visible = .t.
		SET TALK ON
	ENDIF
	CANCEL

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


//set to 2 if loading HTML
global.winscale = 3;
font_set();

////////Uncomment when using an HTML Version

global.gamemode = "Quliliuqta!"
global.gamegoal = 10
global.num_of_players = 2;
global.gametimer = 0
global.touchmode = true
global.vscomp = false
global.dialect = "NSC"


randomize();

#macro KB 57344
#macro K20 chr(57345)+chr(57344)


#macro K00 chr(57344)
#macro K01 chr(57345)
#macro K02 chr(57346)
#macro K03 chr(57347)
#macro K04 chr(57348)
#macro K05 chr(57349)
#macro K06 chr(57350)
#macro K07 chr(57351)
#macro K08 chr(57352)
#macro K09 chr(57353)
#macro K10 chr(57354)
#macro K11 chr(57355)
#macro K12 chr(57356)
#macro K13 chr(57357)
#macro K14 chr(57358)
#macro K15 chr(57359)
#macro K16 chr(57360)
#macro K17 chr(57361)
#macro K18 chr(57362)
#macro K19 chr(57363)


global.numnamearr = array_create(21,[])
dialect_set("PHO")

function font_set(){
	switch global.winscale{
		
		case 1:
			global.cardtextfont = fnt_cardtext_1
			global.cardnumfont = fnt_cardnum_1
			global.pointfont = fnt_points_1
			break;
		
		case 2:
			global.cardtextfont = fnt_cardtext_2
			global.cardnumfont = fnt_cardnum_2
			global.pointfont = fnt_points_2
			break;
			
		case 3:
			global.cardtextfont = fnt_cardtext_3
			global.cardnumfont = fnt_cardnum_3
			global.pointfont = fnt_points_3
			break;
	}
}

function dialect_set(_dia = "NSC"){


	switch _dia{
		case "NSC":
			global.numnamearr[0] = [["suit","chuq"]]
			global.numnamearr[1] = [["a","tau","siq"]]
			global.numnamearr[2] = [["mal","ġuk"]]
			global.numnamearr[3] = [["pi","ŋa","sut"]]
			global.numnamearr[4] = [["si","sa","mat"]]
			global.numnamearr[5] = [["tal","lim","at"]]
			global.numnamearr[6] = [["it","chak","srat"]]

			global.numnamearr[9] = [["qu","liŋ","ŋu","ġu","tai","ḷaq"]]
			global.numnamearr[10] = [["qu","lit"]]

		break;

		case "AKP":
			global.numnamearr[0] = [["huit","chuq"]]
			global.numnamearr[1] = [["a","tau","hiq"]]
			global.numnamearr[2] = [["mal","ġuk"]]
			global.numnamearr[3] = [["pi","ŋa","hut"]]
			global.numnamearr[4] = [["hi","ha","mat"]]
			global.numnamearr[5] = [["tal","lim","at"]]
			global.numnamearr[6] = [["it","chak","srat"]]

			global.numnamearr[9] = [["qu","liŋ","ŋu","ġu","tai","ḷaq"]]
			global.numnamearr[10] = [["qu","lit"]]


		break;

		case "PHO":
			global.numnamearr[0] = [["suu","ŋi","ḷaq"]]
			global.numnamearr[1] = [["a","tau","siq"]]
			global.numnamearr[2] = [["mal","ġuk"]]
			global.numnamearr[3] = [["pi","ŋa","suy"]]
			global.numnamearr[4] = [["si","sa","maiy"]]
			global.numnamearr[5] = [["tal","lim","aiy"]]
			global.numnamearr[6] = [["it","chak","sraiy"]]

			global.numnamearr[9] = [["qu","liŋ","ŋu","ġu","tai","ḷaq"]]
			global.numnamearr[10] = [["qu","liiy"]]

		break;
	}
	
	global.numnamearr[7] = [global.numnamearr[5][0],global.numnamearr[2][0]]
	global.numnamearr[8] = [global.numnamearr[5][0],global.numnamearr[3][0]]
	global.numnamearr[11] = [global.numnamearr[10][0],global.numnamearr[1][0]]
	global.numnamearr[12] = [global.numnamearr[10][0],global.numnamearr[2][0]]
	global.numnamearr[13] = [global.numnamearr[10][0],global.numnamearr[3][0]]
	global.numnamearr[14] = [["a","ki","mia","ġu","tai","ḷaq"]]
	global.numnamearr[15] = [["a","ki","miaq"]]
	global.numnamearr[16] = [global.numnamearr[15][0],global.numnamearr[1][0]]
	global.numnamearr[17] = [global.numnamearr[15][0],global.numnamearr[2][0]]
	global.numnamearr[18] = [global.numnamearr[15][0],global.numnamearr[3][0]]
	global.numnamearr[19] = [["i","ñuiñ","ña","ġu","tai","ḷaq"]]
	global.numnamearr[20] = [["i","ñuiñ","ñaq"]]
	
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


//set to 2 if loading HTML
global.winscale = 3;
font_set();

////////Uncomment when using an HTML Version



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


global.numname[20] = "iñuññaq"
global.numname[19] = "iñuñña-\nġutaiḷaq"
global.numname[18] = "akimiaq\npiŋasut"
global.numname[17] = "akimiaq\nmalġuk"
global.numname[16] = "akimiaq\natausiq"
global.numname[15] = "akimiaq"
global.numname[14] = "akimia-\nġutaiḷaq"
global.numname[13] = "qulit\npiŋasut"
global.numname[12] = "qulit\nmalġuk"
global.numname[11] = "qulit\natausiq"
global.numname[10] = "qulit"
global.numname[9] = "quliŋŋu-\nġutaiḷaq"
global.numname[8] = "tallimat\npiŋasut"
global.numname[7] = "tallimat\nmalġuk"
global.numname[6] = "itchaksrat"
global.numname[5] = "tallimat"
global.numname[4] = "sisamat"
global.numname[3] = "piŋasut"
global.numname[2] = "malġuk"
global.numname[1] = "atausiq"
global.numname[0] = "suitchuq"


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
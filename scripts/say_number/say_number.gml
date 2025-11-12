// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function say_number(_val){
	audio_stop_all()
	
	switch global.dialect{
		case "North Slope Coastal":
			switch _val{
				case 0: audio_play_sound(snd_00_nsc,1,false); break
				case 1: audio_play_sound(snd_01_nsc,1,false); break
				case 2: audio_play_sound(snd_02_nsc,1,false); break
				case 3: audio_play_sound(snd_03_nsc,1,false); break
				case 4: audio_play_sound(snd_04_nsc,1,false); break
				case 5: audio_play_sound(snd_05_nsc,1,false); break
				case 6: audio_play_sound(snd_06_nsc,1,false); break
				case 7: audio_play_sound(snd_07_nsc,1,false); break
				case 8: audio_play_sound(snd_08_nsc,1,false); break
				case 9: audio_play_sound(snd_09_nsc,1,false); break
				case 10: audio_play_sound(snd_10_nsc,1,false); break
				case 11: audio_play_sound(snd_11_nsc,1,false); break
				case 12: audio_play_sound(snd_12_nsc,1,false); break
				case 13: audio_play_sound(snd_13_nsc,1,false); break
				case 14: audio_play_sound(snd_14_nsc,1,false); break
				case 15: audio_play_sound(snd_15_nsc,1,false); break
				case 16: audio_play_sound(snd_16_nsc,1,false); break
				case 17: audio_play_sound(snd_17_nsc,1,false); break
				case 18: audio_play_sound(snd_18_nsc,1,false); break
				case 19: audio_play_sound(snd_19_nsc,1,false); break
				case 20: audio_play_sound(snd_20_nsc,1,false); break
			}
		break;
		
		case "Wainwright":{
			switch _val{
				case 0: audio_play_sound(snd_00_AIN,1,false); break
				case 1: audio_play_sound(snd_01_AIN,1,false); break
				case 2: audio_play_sound(snd_02_AIN,1,false); break
				case 3: audio_play_sound(snd_03_AIN,1,false); break
				case 4: audio_play_sound(snd_04_AIN,1,false); break
				case 5: audio_play_sound(snd_05_AIN,1,false); break
				case 6: audio_play_sound(snd_06_AIN,1,false); break
				case 7: audio_play_sound(snd_07_AIN,1,false); break
				case 8: audio_play_sound(snd_08_AIN,1,false); break
				case 9: audio_play_sound(snd_09_AIN,1,false); break
				case 10: audio_play_sound(snd_10_AIN,1,false); break
				case 11: audio_play_sound(snd_11_AIN,1,false); break
				case 12: audio_play_sound(snd_12_AIN,1,false); break
				case 13: audio_play_sound(snd_13_AIN,1,false); break
				case 14: audio_play_sound(snd_14_AIN,1,false); break
				case 15: audio_play_sound(snd_15_AIN,1,false); break
				case 16: audio_play_sound(snd_16_AIN,1,false); break
				case 17: audio_play_sound(snd_17_AIN,1,false); break
				case 18: audio_play_sound(snd_18_AIN,1,false); break
				case 19: audio_play_sound(snd_19_AIN,1,false); break
				case 20: audio_play_sound(snd_20_AIN,1,false); break
			}
		}
		
		case "Anaktuvuk Pass":
			switch _val{
				case 0: audio_play_sound(snd_00_AP,1,false); break
				case 1: audio_play_sound(snd_01_AP,1,false); break
				case 2: audio_play_sound(snd_02_AP,1,false); break
				case 3: audio_play_sound(snd_03_AP,1,false); break
				case 4: audio_play_sound(snd_04_AP,1,false); break
				case 5: audio_play_sound(snd_05_AP,1,false); break
				case 6: audio_play_sound(snd_06_AP,1,false); break
				case 7: audio_play_sound(snd_07_AP,1,false); break
				case 8: audio_play_sound(snd_08_AP,1,false); break
				case 9: audio_play_sound(snd_09_AP,1,false); break
				case 10: audio_play_sound(snd_10_AP,1,false); break
				case 11: audio_play_sound(snd_11_AP,1,false); break
				case 12: audio_play_sound(snd_12_AP,1,false); break
				case 13: audio_play_sound(snd_13_AP,1,false); break
				case 14: audio_play_sound(snd_14_AP,1,false); break
				case 15: audio_play_sound(snd_15_AP,1,false); break
				case 16: audio_play_sound(snd_16_AP,1,false); break
				case 17: audio_play_sound(snd_17_AP,1,false); break
				case 18: audio_play_sound(snd_18_AP,1,false); break
				case 19: audio_play_sound(snd_19_AP,1,false); break
				case 20: audio_play_sound(snd_20_AP,1,false); break		
			}
		break;
		
		case "Point Hope":
		switch _val{
			case 0: audio_play_sound(snd_00_ph,1,false); break
			case 1: audio_play_sound(snd_01_ph,1,false); break
			case 2: audio_play_sound(snd_02_ph,1,false); break
			case 3: audio_play_sound(snd_03_ph,1,false); break
			case 4: audio_play_sound(snd_04_ph,1,false); break
			case 5: audio_play_sound(snd_05_ph,1,false); break
			case 6: audio_play_sound(snd_06_ph,1,false); break
			case 7: audio_play_sound(snd_07_ph,1,false); break
			case 8: audio_play_sound(snd_08_ph,1,false); break
			case 9: audio_play_sound(snd_09_ph,1,false); break
			case 10: audio_play_sound(snd_10_ph,1,false); break
			case 11: audio_play_sound(snd_11_ph,1,false); break
			case 12: audio_play_sound(snd_12_ph,1,false); break
			case 13: audio_play_sound(snd_13_ph,1,false); break
			case 14: audio_play_sound(snd_14_ph,1,false); break
			case 15: audio_play_sound(snd_15_ph,1,false); break
			case 16: audio_play_sound(snd_16_ph,1,false); break
			case 17: audio_play_sound(snd_17_ph,1,false); break
			case 18: audio_play_sound(snd_18_ph,1,false); break
			case 19: audio_play_sound(snd_19_ph,1,false); break
			case 20: audio_play_sound(snd_20_ph,1,false); break
		}
	}
}
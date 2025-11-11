// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function say_number(_val){
	audio_stop_all()
	switch _val{
		case 0: audio_play_sound(snd_00_nsc,1,false); break
		case 1: audio_play_sound(snd_01_nsc,1,false); break
		case 2: audio_play_sound(snd_02_nsc,1,false); break
		case 3: audio_play_sound(snd_03_nsc,1,false); break
		case 4: audio_play_sound(snd_04_nsc,1,false); break
		case 5: audio_play_sound(snd_05_nsc,1,false); break
	}
}
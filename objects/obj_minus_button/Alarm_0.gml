/// @description Insert description here
// You can write your code in this editor


if setting == "timer" and global.gametimer > 0 global.gametimer -= 5
else if setting == "Points" and global.pointgoal > 5 global.pointgoal -= 5
else if setting == "Decks" and global.deckgoal > 1 global.deckgoal -= 1
alarm[0] = game_get_speed(gamespeed_fps) div 4

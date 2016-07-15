///music_play(sound)
var sound = argument[0];

//Stop current music
if (Game.music != noone) {
    audio_stop_sound(Game.music);
    //audio_stop_all();
}

audio_play_sound(sound, 0, true);
Game.music = sound;

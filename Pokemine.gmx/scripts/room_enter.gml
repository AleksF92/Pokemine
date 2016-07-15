///room_enter(room)
var rom = argument[0];

switch (rom) {
    case rom_Test: {
        audio_play_sound(bgm_ComeAlong, 0, true);
        room = rom_Test;
        break;
    }
    case rom_Battle: {
        audio_play_sound(bgm_ComeAlong, 0, true);
        Game.alarm[0] = room_speed * 2;
        break;
    }
}

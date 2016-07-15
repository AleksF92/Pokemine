///input_check(code, [PRESSED|RELEASED])
var code = argument[0];
var type = "HELD";
if (argument_count > 1) { type = argument[1]; }

//Check signal
var signal = controls[? code];
var result = false;
if (signal == mb_any
    || signal == mb_left
    || signal == mb_middle
    || signal == mb_none
    || signal == mb_right) {
    //Mouse signal
    if (type == "HELD" && mouse_check_button(signal)) { result = true; }
    if (type == "PRESSED" && mouse_check_button_pressed(signal)) { result = true; }
    if (type == "RELEASED" && mouse_check_button_released(signal)) { result = true; }
}
else {
    //Keyboard signal
    if (type == "HELD" && keyboard_check(signal)) { result = true; }
    if (type == "PRESSED" && keyboard_check_pressed(signal)) { result = true; }
    if (type == "RELEASED" && keyboard_check_released(signal)) { result = true; }
}

return result;

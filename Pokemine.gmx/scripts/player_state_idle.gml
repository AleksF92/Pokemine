///player_state_idle()

//Init state
image_speed = 0;
image_index = 0;

//Check for new direction
var dirX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var dirY = keyboard_check(ord("S")) - keyboard_check(ord("W"));
if (dirX > 0) { dir = RIGHT; }
if (dirY < 0) { dir = UP; }
if (dirX < 0) { dir = LEFT; }
if (dirY > 0) { dir = DOWN; }

//Check for movement
if (dirX != 0 || dirY != 0) {
    //Walk
    stateId = WALK;
    stateAction = player_state_walk;
}

/*
if (keyboard_check_pressed(ord("D"))) { dir = RIGHT; }
if (keyboard_check_pressed(ord("W"))) { dir = UP; }
if (keyboard_check_pressed(ord("A"))) { dir = LEFT; }
if (keyboard_check_pressed(ord("S"))) { dir = DOWN; }

//Check for movement
if ((keyboard_check(ord("D")) && dir == RIGHT)
    || (keyboard_check(ord("W")) && dir == UP)
    || (keyboard_check(ord("A")) && dir == LEFT)
    || (keyboard_check(ord("S")) && dir == DOWN)) {
    stateId = WALK;
    stateAction = player_state_walk;
}
*/

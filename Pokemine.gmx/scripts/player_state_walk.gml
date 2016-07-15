///player_state_walk

var walkSpeed = 8;
image_speed = walkSpeed / room_speed;
var dur = image_number / image_speed;

//Check sprint
if (keyboard_check(vk_lshift)) {
    stateId = RUN;
    walkSpeed = 20;
    image_speed = walkSpeed / room_speed;
    var boost = 1;
    if (dir == UP or dir == DOWN) { boost = 0.25; }
    dur = (image_number + boost) / image_speed;
}

var xSpeed = GRID_H / dur;
var ySpeed = GRID_V / dur;

if (dir == RIGHT) { x += xSpeed; }
if (dir == UP) { y -= ySpeed; }
if (dir == LEFT) { x -= xSpeed; }
if (dir == DOWN) { y += ySpeed; }

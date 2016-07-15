///player_snap

//Snap and center player
x -= 8;
y -= 8;
move_snap(GRID_H, GRID_V);
x += GRID_H div 2;
y += GRID_V div 2;

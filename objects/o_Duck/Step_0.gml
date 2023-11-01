x += hsp;
y += vsp;

var up, down, left, right;

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

if (up || down or left || right){		
	dir = point_direction(0,0,(right - left), (down - up));
	spd = lerp(spd,max_spd, 0.3);
}
else{
	spd = lerp(spd,0,0.1);
}

//codigo de velocidade com base na direção do char
hsp = lengthdir_x(spd,dir);
vsp = lengthdir_y(spd,dir);
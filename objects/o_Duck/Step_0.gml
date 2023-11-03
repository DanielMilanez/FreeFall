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
	
	if(left){
		target_angle = 5;
	}
	else if(right){
		target_angle = -5;
	}

}
else{
	spd = lerp(spd,0,0.1);
	target_angle = 0;
}

if (spd <= 1){
	target_angle = 0;
}

// Interpolação suave para image_angle
image_angle = lerp(image_angle, target_angle, 0.1);

//codigo de velocidade com base na direção do char
hsp = lengthdir_x(spd,dir);
vsp = lengthdir_y(spd,dir);
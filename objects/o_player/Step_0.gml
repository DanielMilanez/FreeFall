x += hsp;
y += vsp;

var up, down, left, right;

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

// Verificar se ambas as teclas opostas estão pressionadas
if ((left && right) || (up && down)) {
    left = false;
    right = false;
    up = false;
    down = false;
}

if (up || down) {
    vsp = lerp(vsp, (down - up) * max_spd, 0.3);
} else {
    vsp = lerp(vsp, 0, 0.1);
}

if (left || right) {
    hsp = lerp(hsp, (right - left) * max_spd, 0.3);
	if(left){
		target_angle = 10;
    }
    else if(right){
        target_angle = -10;
    }
} else {
    hsp = lerp(hsp, 0, 0.1);
	target_angle = 0;
}

// Atualizar a direção
if (hsp != 0 || vsp != 0) {
    dir = point_direction(0, 0, hsp, vsp);
}

// Interpolação suave para image_angle
image_angle = lerp(image_angle, target_angle, 0.1);

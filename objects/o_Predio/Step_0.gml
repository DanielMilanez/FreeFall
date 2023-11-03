y += vsp;

vsp = -8;


if (x <= 53){
	if (y <= -270){
	instance_destroy(id);
	instance_create_layer(53,790,"predios",o_Predio);
	}
}


if (x >= 902){
	if (y <= -270){
		instance_destroy(id);
		instance_create_layer(902,790,"predios",o_Predio);
	}
}
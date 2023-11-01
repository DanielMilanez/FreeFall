y += vsp;

vsp = -8;

if (y <= -270){
	instance_destroy(id);
	instance_create_layer(53,790,"predios",o_Predio);
}
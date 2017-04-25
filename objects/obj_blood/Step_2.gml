// Shrink over time
image_xscale -= shrink;
image_yscale = image_xscale;

//Fade over time
if speed > 0 {
	image_alpha -= 0.1;
}

//Draw to Surface

if instance_exists(obj_bloodCont){
	
	surface_set_target(obj_bloodCont.surfBlood);
	draw_sprite_ext(spr_blood,0,x,y,image_xscale,image_yscale,0,c_white,1);
	surface_reset_target();
}


//Destroy Object

if image_xscale <=0 {
instance_destroy();
}
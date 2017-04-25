if mouse_check_button_pressed(mb_left)
   {
   window_set_cursor(cr_none);
   }

move_right = keyboard_check(ord("D"));
move_left = keyboard_check(ord("A"));
move_up = keyboard_check(ord("W"));
move_down = keyboard_check(ord("S"));

xx = move_right - move_left;
yy = move_down - move_up;

hspd = xx*spd;
vspd = yy*spd;

if (place_meeting(x+hspd,y,obj_wall)){
	while(!place_meeting(x+sign(hspd),y,obj_wall)){
		x+=sign(hspd);
	}
	hspd = 0;
}
x += hspd;

if (place_meeting(x,y+vspd,obj_wall)){
	while(!place_meeting(x,y+sign(vspd),obj_wall)){
		y+=sign(vspd);
	}
	vspd = 0;
}
y += vspd;

image_angle = point_direction(x,y, mouse_x,mouse_y);

//shoot
if (mouse_check_button(mb_left)) && (cooldown <1) 
{
	var spwx =x+ lengthdir_x(sprite_width/2+50, image_angle);
	var spwy = y+ lengthdir_y(sprite_width/2+50,image_angle);
	var px = x;
	var py = y;
	var pspd = vspd;
	var psph = hspd;
	bullet = instance_create_layer(spwx, spwy,"bulletsLayer", obj_bullet)
	instance_create_layer(spwx,spwy,"wallLayer",obj_flash);
	audio_sound_pitch(snd_shoot,random_range(0.5,1.2));
	audio_play_sound(snd_shoot,0,0);
	
	with(bullet)
	{
		direction = point_direction(px, py, mouse_x, mouse_y);
		speed += sqrt(pspd * pspd + psph *psph);
		image_angle = direction;
	}
	cooldown = 6;
	
}

cooldown = cooldown - 1;
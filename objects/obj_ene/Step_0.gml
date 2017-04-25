//Create the path
playerdis = distance_to_object(obj_player);
vision = collision_line(x, y, obj_player.x, obj_player.y, obj_wallT, false,true) ;


if (playerdis <= DistanciaAtacar)
{
	state = estados.Atacando;
}
else if (playerdis <= DistanciaPerseguir && !vision)
{
	state = estados.Perseguindo;
}



/// Create the path and move to the mouse

switch(state)
{
	case estados.Perseguindo:
	event_user(0);
	break;
	case estados.Atacando:
	event_user(1);
	break;
	case estados.Patrulhando:
	event_user(2);
	break;
}


/*if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y, spd);
}*/

image_angle = direction;

if (hp <= 0)
{
layer = layer_get_id("Instances_3")
scr_blood(x,y);
instance_create_layer(x,y,"bulletsLayer",obj_explosion);

	with (obj_score) thescore = thescore + 25;
	audio_sound_pitch(snd_explosion,random_range(0.8,1.2));
	audio_play_sound(snd_explosion,0,0);
	instance_change(obj_morto,true);

}


direction = point_direction(x,y,obj_player.x,obj_player.y);
speed = 10;
image_angle = direction;

	audio_sound_pitch(snd_cus,random_range(0.8,1.2));
	audio_play_sound(snd_cus,0,0);
	

scr_blood(other.x, other.y);
	hp = hp - 1;
	with(other)
	{
	instance_destroy();
	}

	audio_sound_pitch(snd_dead,random_range(0.5,1.8));
	audio_play_sound(snd_dead,0,0);
	
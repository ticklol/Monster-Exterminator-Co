x = obj_player.x;
y = obj_player.y;

if(obj_player.move_down && obj_player.move_right)
{
image_angle = 295;
image_speed = room_speed;
}
else if(obj_player.move_down && obj_player.move_left)
{
image_angle = 225;
image_speed = room_speed;
}
else if(obj_player.move_down)
{
image_angle = 260;
image_speed = room_speed;
}


if(obj_player.move_right)
{
image_angle = 0;
image_speed = room_speed;
}
if(obj_player.move_left)
{
image_angle = 180;
image_speed = room_speed;
}
if(obj_player.move_up && obj_player.move_right)
{
image_angle = 45;
image_speed = room_speed;
}
else if(obj_player.move_up && obj_player.move_left)
{
image_angle = 135;
image_speed = room_speed;
}
else if(obj_player.move_up)
{
image_angle = 90
image_speed = room_speed;
}

if(!obj_player.move_down && !obj_player.move_right && !obj_player.move_left && !obj_player.move_up)
{
if(image_index == 0 || image_index == 7)
image_speed = 0;
}


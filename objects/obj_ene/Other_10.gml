/// @description Perseguir
// You can write your code in this editor

path = path_add();

var mx = (obj_player.x div 32)*32+16;
var my = (obj_player.y div 32)*32+16

if(mp_grid_path(global.grid, path, x, y, mx,my, 1))
{
	path_start(path,spd, path_action_stop, false);
	
}

if (playerdis >= DistanciaPerseguir + 20)
{
	state = estados.Patrulhando;
}
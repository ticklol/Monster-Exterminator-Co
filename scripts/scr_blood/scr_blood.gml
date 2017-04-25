///scr_blood(x, y)

var a = argument0
var b = argument1


//emitter
part_emitter_region(obj_bloodCont.partBlood_sys,obj_bloodCont.partBlood_emit,a+5,a-5,b+5,b-5,1,1);
part_emitter_burst(obj_bloodCont.partBlood_sys,obj_bloodCont.partBlood_emit,obj_bloodCont.partBlood,20);

//Create Blood On Floor 
spawn = random_range(10,30);

for(i=0;i<spawn;i++){
	instance_create_layer(x+random_range(-32,32),y+random_range(-32,32),"Instances_3",obj_blood)
}

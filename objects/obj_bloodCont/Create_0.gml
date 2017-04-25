x = room_width/2
y = room_width/2

//Blood Particle System
partBlood_sys = part_system_create();
part_system_depth(partBlood_sys,1);
part_system_layer(partBlood_sys, layer_get_id("Instances_3"))
//Blood Particle
partBlood = part_type_create();
part_type_shape(partBlood,pt_shape_disk);
part_type_size(partBlood,0.70, 0.90,-0.01,0);
part_type_color1(partBlood,c_green);
part_type_alpha1(partBlood,1);
part_type_speed(partBlood,1,3,0,0);
part_type_direction(partBlood,obj_player.direction - 50,obj_player.direction + 50,0,0);
part_type_gravity(partBlood,2,obj_player.direction);
part_type_life(partBlood,10,20);
part_type_blend(partBlood,0);


// Particle Emitter
partBlood_emit = part_emitter_create(partBlood_sys);

// Create Blood Surface

surfBlood = surface_create(room_width,room_height);

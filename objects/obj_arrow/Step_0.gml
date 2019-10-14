if(place_meeting(x,y,obj_wall)){
	show_debug_message("Hit!");
	instance_destroy();
}
var collision_obj_enemy=instance_place(x,y,obj_enemy);
if(collision_obj_enemy!=noone){
	with(collision_obj_enemy){
		instance_destroy();
	}
}
/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,obj_wall)){
	instance_destroy();
}
var collision_obj_cat=instance_place(x,y,obj_cat);
	if(collision_obj_cat!=noone){
		with(collision_obj_cat){
			instance_destroy();
			room_goto(gameover);
	}
}
//move
//if(x>0+sprite_xoffset&&y!=random_range(475,575)){
	//x=x+hspeed;
	//y=y+vspeed;
if(keyboard_check(ord("W")) && place_free(x,y-collision_speed)){
		//spd_cat=-spd_cat;
		vspeed=-spd_cat;
		hspeed=0;
		sprite_index=spr_up;
		image_speed=2;
	}else if(keyboard_check(ord("S")) && place_free(x,y+collision_speed)){
		vspeed=spd_cat;
		hspeed=0;
		sprite_index=spr_down;
		image_speed=2;
	}else if(keyboard_check(ord("A")) && place_free(x-collision_speed,y)){
		//spd_cat=-spd_cat;
		//spd_cat=5;
		hspeed=-spd_cat;
		vspeed=0;
		sprite_index=spr_left;
		image_speed=2;
	}else if(keyboard_check(ord("D")) && place_free(x+collision_speed,y)){
		//spd_cat=5;
		hspeed=spd_cat;
		vspeed=0;
		sprite_index=spr_right;
		image_speed=2;
	}else{
		speed=0;
		image_speed=0;
	}
//}
if(x<0+sprite_xoffset){
	hspeed=spd_cat;
}
//shoot
if(mouse_check_button_pressed(mb_left)&& cooldown<1){
	instance_create_layer(x,y,"Bullets",obj_arrow);
	cooldown=3;
}
cooldown=cooldown-1;
//win
if(y<0){
	room_goto(gamewin);
}
//wall
/*
var collision_obj_cat=instance_place(x,y,obj_wall);
if(collision_obj_cat!=noone){
	show_debug_message("It's a wall!");
	with(collision_obj_cat){
		speed=-speed;
	}
}
*/
if(place_meeting(x+hspeed,y+vspeed,obj_wall)){
	show_debug_message("hitting a wall");
	//hspeed=-hspeed;
	//vspeed=-vspeed;
	if(direction=90 || direction=270){
		direction=360-direction;
	}else{
		direction=180-direction;
	}
	//x=x-hspeed;
//	y=y-vspeed;
}
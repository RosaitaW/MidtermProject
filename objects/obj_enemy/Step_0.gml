// shooting
frames++;

if(frames%(room_speed*2)==0){
	instance_create_layer(x,y,"Bullets",obj_bullet);
}
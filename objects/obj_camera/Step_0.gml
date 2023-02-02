//Follow Target

if(instance_exists(target)){
	global.cameraX = target.x - (global.cameraWidth/2);
	global.cameraY = target.y - (global.cameraHeight/2);
	
	global.cameraX = clamp(global.cameraX, 0, room_width-global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height-global.cameraHeight);
}

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);

layer_x("Parallax0", global.cameraX*.98);
layer_y("Parallax0", global.cameraY*.98);

layer_x("Parallax1", global.cameraX*.92);
layer_y("Parallax1", global.cameraY*.92);

layer_x("Parallax2", global.cameraX*.9);
layer_y("Parallax2", global.cameraY*.9);


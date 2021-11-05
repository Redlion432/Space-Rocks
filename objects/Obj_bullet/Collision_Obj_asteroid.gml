score += 10;
audio_play_sound(snd_die, 1, false);
instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == spr_Large_Asteroid){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y, "Instances" ,Obj_asteroid);
			new_asteroid.sprite_index = spr_Medium_Asteroid;
		}
	} else if (sprite_index == spr_Medium_Asteroid){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y, "Instances" ,Obj_asteroid);
			new_asteroid.sprite_index = spr_Small_Asteroid;
		}
	}
	repeat(10){
		instance_create_layer(x,y, "Instances" ,Obj_debris);
	}
	
}
/// @description Insert description here
draw_self()

if(image_alpha = 0){
	instance_destroy (self)
}
image_alpha = image_alpha-0.02;
image_xscale = image_xscale+0.01;
image_yscale = image_yscale+0.01;
y = y-2;


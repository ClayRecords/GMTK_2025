if(quantity <= 0){
	quantity = 0;
	exit;
}

var px = mouse_x;
var py = mouse_y;
var equipment_object = noone;
switch(trap_name){
	case "Baseball":
		equipment_object = obj_baseball;
		break;
	case "MouseTrap":
		equipment_object = obj_mouse_trap;
		break;
	case "Block":
		equipment_object = obj_block;
		break;
}
var lyr = layer_get_id("Equipment");
instance_create_layer(px, py, lyr, equipment_object);

quantity = max(quantity - 1, 0);
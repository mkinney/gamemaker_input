/// @description Create virtual arrows

var xx = 10;
var yy = 10;

var offset = 64;

show = true;

// define the instances
virtual_arrow_left = instance_create_layer(xx, yy + offset / 2, "Instances", o_virtual_arrow);
virtual_arrow_up = instance_create_layer(xx + offset / 2, yy, "Instances", o_virtual_arrow);
virtual_arrow_down = instance_create_layer(xx + offset / 2, yy + offset, "Instances", o_virtual_arrow);
virtual_arrow_right = instance_create_layer(xx + offset, yy + offset / 2, "Instances", o_virtual_arrow);

// rotate the sprite accordingly
virtual_arrow_up.image_angle = 90;
virtual_arrow_down.image_angle = 270;
virtual_arrow_left.image_angle = 180;

// add a "dir" to each
virtual_arrow_left.dir = "left";
virtual_arrow_right.dir = "right";
virtual_arrow_up.dir = "up";
virtual_arrow_down.dir = "down";
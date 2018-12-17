line_1 = "NONE";
line_2 = "NONE";
line_3 = "NONE";
line_4 = "";

white_circle_selected = false;
red_circle_selected = false;
blue_circle_selected = false;

show_virtual_keyboard = false;
virtual_arrows = instance_create_layer(10, 10, "Instances", o_virtual_arrows);
o_virtual_arrows_button.image_alpha = 0.5;

// we have this in case we "reset"
if (! show_virtual_keyboard) {
	keyboard_virtual_hide();
	o_virtual_keyboard.image_alpha = 0.5;
}

// some joysticks are "sensitive"
// so let's ignore tiny amounts from them
for (var i = 0; i < 11; i++) {
	gamepad_set_axis_deadzone(i, 0.1);
}
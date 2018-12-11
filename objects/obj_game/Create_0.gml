line_1 = "NONE";
line_2 = "NONE";
line_3 = "NONE";

circle_selected = false;

// some joysticks are "sensitive"
// so let's ignore tiny amounts from them
for (var i = 0; i < 11; i++) {
	gamepad_set_axis_deadzone(i, 0.1);
}
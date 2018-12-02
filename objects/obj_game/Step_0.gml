if (keyboard_check_pressed(vk_enter)) {
	line_1 = "vk_enter";
	line_2 = "test";
}

if (keyboard_check_pressed(vk_escape)) {
	line_1 = "vk_escape";
}

line_3 = "lastchar:" + keyboard_lastchar;

var number_game_pads = gamepad_get_device_count();
//var number_buttons = gamepad_button_count(0);
//line_2 = "There are " + string(number_game_pads) + " game_pads detected with " + string(number_buttons) + " buttons.";

//for (var i = 0; i < number_game_pads; i++) {
for (var i = 0; i < 11; i++) {
	var tmp_line_1 = "gp" + string(i) + " ";
	
/*	for (var j = 0; j < gamepad_button_count(i); j++) {
		line_2 = "gp button:" + gamepad_button_check_pressed(i, j);
	} */
	

	if (gamepad_button_check(i, gp_face1)) {
		line_1 = tmp_line_1 + "gp_face1";
	}
	if (gamepad_button_check(i, gp_face2)) {
		line_1 = tmp_line_1 + "gp_face2";
	}
	if (gamepad_button_check(i, gp_face3)) {
		line_1 = tmp_line_1 + "gp_face3";
	}
	if (gamepad_button_check(i, gp_face4)) {
		line_1 = tmp_line_1 + "gp_face4";
	}
	if (gamepad_button_check(i, gp_shoulderl)) {
		line_1 = tmp_line_1 + "gp_shoulderl";
	}
	if (gamepad_button_check(i, gp_shoulderlb)) {
		line_1 = tmp_line_1 + "gp_shoulderlb";
	}
	if (gamepad_button_check(i, gp_shoulderr)) {
		line_1 = tmp_line_1 + "gp_shoulderr";
	}
	if (gamepad_button_check(i, gp_shoulderrb)) {
		line_1 = tmp_line_1 + "gp_shoulderrb";
	}
	if (gamepad_button_check(i, gp_select)) {
		line_1 = tmp_line_1 + "gp_select";
	}
	if (gamepad_button_check(i, gp_start)) {
		line_1 = tmp_line_1 + "start";
	}
	if (gamepad_button_check(i, gp_stickl)) {
		line_1 = tmp_line_1 + "gp_stickl";
	}
	if (gamepad_button_check(i, gp_stickr)) {
		line_1 = tmp_line_1 + "gp_stickr";
	}
	if (gamepad_button_check(i, gp_padu)) {
		line_1 = tmp_line_1 + "gp_padu";
	}
	if (gamepad_button_check(i, gp_padd)) {
		line_1 = tmp_line_1 + "gp_padd";
	}
	if (gamepad_button_check(i, gp_padl)) {
		line_1 = tmp_line_1 + "gp_padl";
	}
	if (gamepad_button_check(i, gp_padr)) {
		line_1 = tmp_line_1 + "gp_padr";
	}
	
	// axis left
	var axislh = gamepad_axis_value(i, gp_axislh);
	var axislv = gamepad_axis_value(i, gp_axislv);
	if ((axislh < 0.0) or (axislh > 0.0) or
		(axislv < 0.0) or (axislv > 0.0)
	   ) {
		line_1 = tmp_line_1 + "lh:" + string(axislh) + " lv:" + string(axislv);
	}
	
	// axis right
	var axisrh = gamepad_axis_value(i, gp_axisrh);
	var axisrv = gamepad_axis_value(i, gp_axisrv);
	if ((axisrh < 0.0) or (axisrh > 0.0) or
		(axisrv < 0.0) or (axisrv > 0.0)
	   ) {
		line_1 = tmp_line_1 + "rh:" + string(axisrh) + " rv:" + string(axisrv);
	}


}


for (var i = 0; i < 10; i++) {
	var tmp_line_1 = "mouse " + string(i) + " ";

	if (device_mouse_check_button_pressed(i, mb_left)) {
		line_1 = tmp_line_1 + "mb_left";
	}
	if (device_mouse_check_button_pressed(i, mb_middle)) {
		line_1 = tmp_line_1 + "mb_middle";
	}
	if (device_mouse_check_button_pressed(i, mb_right)) {
		line_1 = tmp_line_1 + "mb_right";
	}
	if (device_mouse_check_button_pressed(i, mb_any)) {
		line_2 = "mb_any";
	}
}

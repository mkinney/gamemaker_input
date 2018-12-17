if (keyboard_check_pressed(vk_enter)) {
	line_1 = "vk_enter";
	line_2 = "test";
}

if (keyboard_check_pressed(vk_escape)) {
	line_1 = "vk_escape";
}

if (keyboard_check(vk_left)) {
	line_1 = "vk_left";
	o_triangle.image_angle += 5;
	o_triangle.direction += 5;
}

if (keyboard_check(vk_right)) {
	line_1 = "vk_right";
	o_triangle.image_angle -= 5;
	o_triangle.direction -= 5;
}

if (keyboard_check(vk_up)) {
	line_1 = "vk_up";
	o_triangle.speed += 1;
}

if (keyboard_check(vk_down)) {
	line_1 = "vk_down";
	o_triangle.speed -= 1;
}

if (keyboard_check(vk_space)) {
	line_1 = "vk_space";
	game_restart();
}

/*
if (keyboard_check(ord("r"))) {
	game_restart();
} */

/*
if ((keyboard_lastchar == "r") || (keyboard_lastchar == " ")) {
	keyboard_lastchar = "";
	game_restart();
} */


line_3 = "lastchar:" + keyboard_lastchar;

for (var i = 0; i < 11; i++) {
	var tmp_line_1 = "gp" + string(i) + " ";


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
		o_triangle.speed += 1;
	}
	if (gamepad_button_check(i, gp_padd)) {
		line_1 = tmp_line_1 + "gp_padd";
		o_triangle.speed -= 1;
	}
	if (gamepad_button_check(i, gp_padl)) {
		line_1 = tmp_line_1 + "gp_padl";
		o_triangle.image_angle += 5;
		o_triangle.direction += 5;
	}
	if (gamepad_button_check(i, gp_padr)) {
		line_1 = tmp_line_1 + "gp_padr";
		o_triangle.image_angle -= 5;
		o_triangle.direction -= 5;
	}
	
	if (! red_circle_selected) {
		// axis left
		var axislh = gamepad_axis_value(i, gp_axislh);
		var axislv = gamepad_axis_value(i, gp_axislv);
		if ((axislh < 0.0) or (axislh > 0.0) or
			(axislv < 0.0) or (axislv > 0.0)
		   ) {
			line_1 = tmp_line_1 + "lh:" + string(axislh) + " lv:" + string(axislv);
			if (axislh < 0.5) {
				o_triangle.image_angle += 5;
			}
			if (axislh > 0.5) {
				o_triangle.image_angle -= 5;
			}
		}
	}
	
	if (! blue_circle_selected) {
		// axis right
		var axisrh = gamepad_axis_value(i, gp_axisrh);
		var axisrv = gamepad_axis_value(i, gp_axisrv);
		if ((axisrh < 0.0) or (axisrh > 0.0) or
			(axisrv < 0.0) or (axisrv > 0.0)
		   ) {
			line_1 = tmp_line_1 + "rh:" + string(axisrh) + " rv:" + string(axisrv);
			if (axisrh < 0.5) {
				o_triangle.image_angle += 5;
			}
			if (axisrh > 0.5) {
				o_triangle.image_angle -= 5;
			}
		}		
	}

}


for (var i = 0; i < 10; i++) {
	var tmp_line_1 = "mouse " + string(i) + " ";

	if (device_mouse_check_button_pressed(i, mb_left)) {
		line_1 = tmp_line_1 + "mb_left";
		
		// see if we have left clicked the virtual keyboard
		// (to show/hide the built-in virtual keyboard)
		var vk = instance_position(mouse_x, mouse_y, o_virtual_keyboard);
		if (vk != noone) {
			show_debug_message("vk pressed");
			show_virtual_keyboard = !show_virtual_keyboard;
			if (show_virtual_keyboard) {
				o_virtual_keyboard.image_alpha = 1;
				keyboard_virtual_show(kbv_type_default, kbv_returnkey_default, kbv_autocapitalize_none, false);
			} else {
				o_virtual_keyboard.image_alpha = 0.5;
				keyboard_virtual_hide();
			}
		}
		
		// see if we have left clicked the virtual arrows button
		// (to show/hide the some custom virtual arrows)
		var vab = instance_position(mouse_x, mouse_y, o_virtual_arrows_button);
		if (vab != noone) {
			show_debug_message("vab pressed");
			if (!virtual_arrows.show) {
				virtual_arrows.show = true;
				o_virtual_arrows_button.image_alpha = 1;
			} else {
				virtual_arrows.show = false;
				o_virtual_arrows_button.image_alpha = 0.5;
			}
		}
		
		if (virtual_arrows.show) {
			// see if they pressed a virtual arrow
			var vas = instance_position(mouse_x, mouse_y, o_virtual_arrow);
			if (vas != noone) {
			
				show_debug_message("a virtual arrow was pressed");
			
				if (vas.dir == "left") {
					o_triangle.image_angle += 5;
					o_triangle.direction += 5;
					line_4 = "va left";
				}

				if (vas.dir == "right") {
					o_triangle.image_angle -= 5;
					o_triangle.direction -= 5;
					line_4 = "va right";
				}

				if (vas.dir == "up") {
					o_triangle.speed += 1;
					line_4 = "va up";
				}

				if (vas.dir == "down") {
					o_triangle.speed -= 1;
					line_4 = "va down";
				}
			}
		}
		
		if (white_circle_selected) {
			white_circle_selected = false;
			o_circle_white.image_alpha = 1;
			o_circle_white.x = mouse_x;
			o_circle_white.y = mouse_y;
		} else {
			if (red_circle_selected) {
				red_circle_selected = false;
				o_circle_red.image_alpha = 1;
				o_circle_red.x = mouse_x;
				o_circle_red.y = mouse_y;
			} else {
				if (blue_circle_selected) {
					// see if we have left clicked the blue circle again
					var b = instance_position(mouse_x, mouse_y, o_circle_blue);
					if (b != noone) {
						blue_circle_selected = false;
						o_circle_blue.image_alpha = 1;
					}
				} else {
					// see if we have left clicked the white circle
					var w = instance_position(mouse_x, mouse_y, o_circle_white);
					if (w != noone) {
						white_circle_selected = true;
						// indicate that we have the circle selected
						o_circle_white.image_alpha = 0.5;
					}
					// see if we have left clicked the red circle
					var r = instance_position(mouse_x, mouse_y, o_circle_red);
					if (r != noone) {
						red_circle_selected = true;
						// indicate that we have the circle selected
						o_circle_red.image_alpha = 0.5;
					}
					// see if we have left clicked the blue circle
					var b = instance_position(mouse_x, mouse_y, o_circle_blue);
					if (b != noone) {
						blue_circle_selected = true;
						// indicate that we have the circle selected
						o_circle_blue.image_alpha = 0.5;
					}
				}
			}
		}
	}
	if (device_mouse_check_button_pressed(i, mb_middle)) {
		line_1 = tmp_line_1 + "mb_middle";
	}
	if (device_mouse_check_button_pressed(i, mb_right)) {
		// if you double click, it is the same as mouse right click
		line_1 = tmp_line_1 + "mb_right";
		if (! virtual_arrows.show) {
			// move square to wherever we right click the mouse, only if we don't have virtual arrows showing
			o_square.x = mouse_x;
			o_square.y = mouse_y;
		}
	}
	if (device_mouse_check_button_pressed(i, mb_any)) {
		line_2 = "mb_any";
	}
}
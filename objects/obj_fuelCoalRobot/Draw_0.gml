/// @description Insert description here
// You can write your code in this editor

draw_self();


if(txtbox = 1){
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-85,240,45);
	draw_text(x-10,y-80,"Spend 1 Coal to:");
	draw_text(x-10,y-64,"Give power to: Coal Robot");
}

if(txtbox = 2){
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-101,200,60);
	draw_text(x-10,y-96,"Power was transfered");
	draw_text(x-10,y-80,"New Power: " + string(new_power));
	draw_text(x-10,y-64,"Coal Remaining: " + string(obj_RobotManager.coal_mined_total));
}

if(txtbox = 3){
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-65,225,35);
	draw_text(x-10,y-60,"No Coal in reserve");
}

if(txtbox = 4){
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-65,225,35);
	draw_text(x-10,y-60,"Battery is full");
}

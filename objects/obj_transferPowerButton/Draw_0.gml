/// @description Insert description here
// You can write your code in this editor

draw_self();


if(txtbox = 1){
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-65,200,35);
	draw_text(x-10,y-60,"Transfer Robot Power?");
}

if(txtbox = 2){
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-85,200,60);
	draw_text(x-10,y-80,"Power was transfered");
	draw_text(x-10,y-64,"Power Transfered: " + string(power_transfered));
}

if(txtbox = 3){
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-65,225,35);
	draw_text(x-10,y-60,"Needs two robots present");
}


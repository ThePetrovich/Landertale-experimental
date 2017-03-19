///draw_window_info(x,y,width,height,headerText,mainText,closeText)
draw_set_halign(fa_left);

draw_rectangle_color(argument0,argument1,argument0+argument2,argument1+argument3,make_color_rgb(192,192,192),make_color_rgb(192,192,192),make_color_rgb(192,192,192),make_color_rgb(192,192,192),false);
draw_rectangle_color(argument0+8,argument1+8,argument0+argument2-8,argument1+argument3-8,make_color_rgb(32,32,32),make_color_rgb(32,32,32),make_color_rgb(32,32,32),make_color_rgb(32,32,32),false);
draw_set_font(fnt_train_info);
draw_set_color(c_green);
draw_set_valign(fa_middle);
draw_text(argument0+32,argument1+32,argument4);
draw_set_font(fnt_dialog_main);
draw_set_color(c_white);
draw_set_valign(fa_top);
mainText = scr_linebreak(argument5,(argument2-32)/14,99);
draw_text(argument0+32,argument1+48,mainText);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_dialog_options);
draw_set_color(c_white);
space = 48;
selection = 0;
menu[0]=argument6;
var m;
for (m = 0; m < array_length_1d(menu); m+=1)
{
    draw_text((argument0+argument2/2),(argument1+argument3)-40+ (m*space), string(menu[m]));
}
draw_sprite(spr_dialog_selector, 0,(argument0+argument2/2), (argument1+argument3)-40 + selection * space);


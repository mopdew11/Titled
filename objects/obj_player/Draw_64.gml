/// @description HUD

scp_healthV2(playerHealth);

draw_set_font(fnt_small);
draw_text(x,y,i);
draw_text_transformed_color(0,37,playerHealth,5,5,0,c_red,c_red,c_maroon,c_maroon,1);


draw_text(100,100,"detected:" + string(detected));

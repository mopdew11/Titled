//scp_textBox("text",speed,x,y)

//create the text box
txt = instance_create_depth(argument2, argument3,0,obj_text);

//with that instance, set all these variables
with(txt)
{
	//is it a response
	r = argument4;
	
	//start
	start = 0;
	
	//the padding around the text
	padding = 1;
	
	//the maximum length the text box can be
	maxLength = window_get_width();
	
	//what to write in the textbox
	text = argument0;
	
	//the speed to type at. measered in charecters per frame
	spd = argument1;
	
	//the font to type in
	font = fnt_textBox;
	
	//determin the length of the text
	text_length = string_length(text);
	
	
	//get the font size
	font_size = font_get_size(font);
	
//set to draw in the font
	draw_set_font(font);
	
	//find the width/height of the text
	text_width = string_width_ext(text,font_size+(font_size/2),maxLength);
	text_height = string_height_ext(text,font_size+(font_size/2),maxLength);
	
	//determin the width of the textbox
	box_width = text_width + (padding*2);
	box_height = text_height +(padding*2);

}
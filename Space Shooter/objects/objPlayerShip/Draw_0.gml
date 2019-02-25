/// @description Draws flames & Health
draw_self();

if(keyDown == "up" ) {
	draw_sprite(sprFlames, 0, bbox_left + 5, bbox_bottom - 10); //Left Flame
	draw_sprite(sprFlames, 0, bbox_right - 5, bbox_bottom - 10); //RightFlame
}
else if(keyDown == "down") {
	draw_sprite_ext(sprFlames, 0, bbox_left, bbox_top + 28, 1, 1, 180, c_white, 1);
	draw_sprite_ext(sprFlames, 0, bbox_right, bbox_top + 28, 1, 1, 180, c_white, 1);
}

//Draw Healthbar
draw_healthbar(room_width - 300, 25, room_width - 25, 75, (currentHealth /maxHealth) * 100, 
c_maroon, c_red, c_lime, 0, true, true)

//Draw Lives -- For Loop
for(i = 0; i < myLives; ++i) {
	draw_sprite(sprPlayerLives, 0, room_width - 50 - (i *50), 100);
}	

//Draw Score
draw_set_font(fntGUI);
draw_text(15, 15, "Player Score: " + string(global.playerScore))
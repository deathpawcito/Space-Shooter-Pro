/// @description Variable Set Up
flySpeed = 10;
maxShots = 5;
keyDown = 0;
maxHealth = 10;
currentHealth = maxHealth;
myLives = 3;

keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);

//Set Laser shot to Spacebar
keyboard_set_map(vk_space, ord("Z"));
/// @description insanity drain

//alarm_set(0, global.drain);

//global.insanity += -1;


//drain = rs(60)  / sec(5)

var step = 6;

global.insanity = global.insanity - (room_speed/global.drain)/(room_speed/step);
alarm[0] = step;

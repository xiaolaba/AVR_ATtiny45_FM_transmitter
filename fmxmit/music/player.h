// ref, https://stackoverflow.com/questions/42125/warning-error-function-declaration-isnt-a-prototype
// xiaolaba


//void player_reset();
//void player_tick();

void player_reset(void); // avoid warning: function declaration isn't a prototype [-Wstrict-prototypes]
void player_tick(void);  // avoid warning: function declaration isn't a prototype [-Wstrict-prototypes]

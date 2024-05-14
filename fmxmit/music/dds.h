// ref, https://stackoverflow.com/questions/42125/warning-error-function-declaration-isnt-a-prototype
// xiaolaba

//char dds_get_next_sample();
char dds_get_next_sample(void); // avoid warning: function declaration isn't a prototype [-Wstrict-prototypes]

void dds_set_channel(unsigned char chan, unsigned char note);
#ifndef MULTITONE
//void dds_play_next_channel();
void dds_play_next_channel(void); // avoid warning: function declaration isn't a prototype [-Wstrict-prototypes]

#endif

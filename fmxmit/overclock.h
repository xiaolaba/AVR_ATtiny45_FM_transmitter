void overclockInit(void);
void overclockCpu(char toWhat);

// ref, https://stackoverflow.com/questions/42125/warning-error-function-declaration-isnt-a-prototype
// xiaolaba
//char overclockGetState();
char overclockGetState(void);

#define OVERCLOCK_STD 0
#define OVERCLOCK_MAX 1
N = 128;

para = 100;

dv = para*2/N;
vec = -1*para:dv:1*para;
win = sinc(vec);
plot(win);
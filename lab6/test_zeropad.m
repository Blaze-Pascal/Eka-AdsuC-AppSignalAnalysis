N = 128;
n = 0:N-1;
w = ones(1, N);
padNum = 10;

% f=fft(x.*w);

 f=fft(x.*w, pow2(padNum + 6));

%new
n = 0:length(f)-1; 

modf=abs(f)/(N/2);
hold("off");
plot(n, modf,'g.');
hold("on");
plot(n, modf,'g');

%i 1in len for square ein is 512
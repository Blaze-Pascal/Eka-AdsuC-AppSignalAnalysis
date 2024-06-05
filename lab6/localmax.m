close all;

N = 128;

%load ("probki1n.mat");
%load ("probki2n.mat");

%x = zeros(1,N);
%x(N/2) = .01;
%x(1:N) = 0.5;
%x = ones(1,N);

%x = rand(1,N);

x = 2.*hann(N, "periodic");
x = x';

dn = N/2^16;
n = 0:dn:N-dn;

w = 2.*hann(N, "periodic");
w = w';

%f = abs(fft(x.*w,2^16))/(N/2);
f = abs(fft(w,2^16))/(N/2);
%f = movmean(f,1024);

plot(x)
hold on
plot(x.*w);
plot(n ,20*log10(f));
load ("probki1n.mat");
f = abs(fft(x.*w,2^16))/(N/2);
plot(n ,20*log10(f));

% 
% [obw_a, obw_f] = findpeaks(20*log10(f),n);
% [max_a, max_f] = findpeaks(obw_a,obw_f);
% 
% 
% format shortG;
% disp(["Freq[Hz]:", max_f; "Amp[dB]:", max_a]);
% 
% figure;
% plot(n ,20*log10(f));
% hold("on");
% findpeaks(obw_a,obw_f);
% text(max_f+2,max_a-2, num2str((1:numel(max_f))'));

% hold on;
% plot(obw_f, obw_a, 'b');
% plot(max_f, max_a, "go");
% hold off;
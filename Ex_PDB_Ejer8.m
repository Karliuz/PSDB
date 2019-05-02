clc
clear all
close all

Fs=60.1/2;
Wp=3/Fs;
Ws=8/Fs;
Rp=3;
Rs=25;

%Obtencion del Orden y la frecuencia de corte
[N,Wn]=buttord(Wp,Ws,Rp,Rs)

%diseño del filtro y ecuación
[b,a]=butter(N,Wn,'low'); 
sys=tf(b,a,1) %periodo de muestreo=1

%Grafica
[h,w]=freqz(b,a);
plot(w,abs(h)),title('respuesta en frecuencia del filtro')
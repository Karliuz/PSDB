clc
clear all
close all

%diseño del filtro
Wn=0.2; %la frecuencia de corte debe estar en el intervalo de (0,1) %200=0.2x10^{3}
[b,a]=butter(9,Wn,'high');
sys=tf(b,a,1) %1=periodo de muestreo

%Grafica
[h,w]=freqz(b,a);
plot(w,abs(h)),title('respuesta en frecuencia del filtro')
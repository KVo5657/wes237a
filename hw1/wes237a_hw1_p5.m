%% WES 237A Assignment 1 Question 5 Plot
% Kevin Vo
% Shaowen Wang

clc
clear all
close all

%% Relationship of % Brightness vs. Duty Cycle

figure()

% LED Brightness Percentage Perceived by Human Eye (0%-100%)
led = [0,5,20,40,70,80,85,90,95,97,100];

% Duty Cycle Percentage Stepped through (0%-100%)
duty_cycle = [0 100:100:1000]/10;

plot(duty_cycle,led,'b',LineWidth=2)

title('% LED Brightness Perceived vs. Duty Cycle')
ylabel('LED Brightness (%)');
xlabel('Duty Cycle (%)');
grid on;
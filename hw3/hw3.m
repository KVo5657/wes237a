%% WES 237A Assignment 3 Data Collection

clear all
close all
clc
format long

%% Import Data

T_data = readtable('Assignment 3 Data Collection.xlsx');

% Run Number
run_num = reshape(table2array(T_data(1:end,1)),3,30);
avg_run_num = mean(run_num);

% Fibonacci Term
% n = reshape(table2array(T_data(1:end,2)),3,30);
% avg_n = mean(n);

n = 1:30;

% Python Time Before (Seconds)
py_time_before = reshape(table2array(T_data(1:end,3)),3,30);
avg_py_time_before = mean(py_time_before);
std_py_time_before = std(py_time_before);

% Python Time After (Seconds)
py_time_after = reshape(table2array(T_data(1:end,4)),3,30);
avg_py_time_after = mean(py_time_after);
std_py_time_after = std(py_time_after);

% Python Time (Seconds)
py_time = reshape(table2array(T_data(1:end,5)),3,30);
avg_py_time = mean(py_time);
std_py_time = std(py_time);

% Cycle Count Before (Cycles)
cycle_count_before = reshape(table2array(T_data(1:end,6)),3,30);
avg_cycle_count_before = mean(cycle_count_before);
std_cycle_count_before = std(cycle_count_before);

% Cycle Count Before (Cycles)
cycle_count_after = reshape(table2array(T_data(1:end,7)),3,30);
avg_cycle_count_after = mean(cycle_count_after);
std_cycle_count_after = std(cycle_count_after);

% Cycle Count (Cycles)
cycle_count = reshape(table2array(T_data(1:end,8)),3,30);
avg_cycle_count = mean(cycle_count);
std_cycle_count = std(cycle_count);

% Cycle Count Before (Seconds)
cycle_count_before_s = reshape(table2array(T_data(1:end,9)),3,30);
avg_cycle_count_before_s = mean(cycle_count_before_s);
std_cycle_count_before_s = std(cycle_count_before_s);

% Cycle Count Before (Seconds)
cycle_count_after_s = reshape(table2array(T_data(1:end,10)),3,30);
avg_cycle_count_after_s = mean(cycle_count_after_s);
std_cycle_count_after_s = std(cycle_count_after_s);

% Cycle Count (Seconds)
cycle_count_s = reshape(table2array(T_data(1:end,11)),3,30);
avg_cycle_count_s = mean(cycle_count_s);
std_cycle_count_s = std(cycle_count_s);

%% Plot Python Time And N
figure()
errorbar(n, avg_py_time, std_py_time);

title('Average PTM Time Elapsed vs. Fibonacci Sequence Nth Term')
xlabel('Fibonacci Sequence Nth Term')
ylabel('Average Time Taken to Complete (seconds)')
grid on

%% Plot Cycle Count vs. Fibonacci term
figure()
errorbar(n,avg_cycle_count,std_cycle_count)
title('Average Cycle Count  vs. Fibonacci Sequence Nth Term')
xlabel('Fibonacci Sequence Nth Term')
ylabel('Average Cycle Count (cycles)')
grid on

%% Plot Cycle Count (Seconds) vs. Fibonacci term
figure()
errorbar(n,avg_cycle_count_s,std_cycle_count_s)
title('Average CC Time Taken to Complete (Seconds) vs. Fibonacci Sequence Nth Term')
xlabel('Fibonacci Sequence Nth Term')
ylabel('Average Time Taken to Complete (Seconds)')
grid on
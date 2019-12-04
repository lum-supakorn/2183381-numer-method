% Numerical Methods
% Chapter: 1
% Exercise: 15
% -----
% Author: Supakorn Suttiruang (Lum)
% Date: 21 Aug 2019

clear
clc

student_id = 1:100;
student_scores = randi([0, 100], 1, numel(student_id)); % Inclusive range

student_map = containers.Map(student_id, student_scores);

% Better to do this in Python
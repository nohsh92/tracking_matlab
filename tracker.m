clear; clc;

dt = 1;
iterations = 6;
transition = [1 0 dt 0; 0 1 0 dt; 0 0 1 0; 0 0 0 1];
target = zeros(4, iterations);
ownship = zeros(4, iterations);

target(:,1) = [1 5 0 -1]';
ownship(:,1) = [0 0 0 1]';

for i = 2:iterations
   target(:,i) = transition * target(:,i-1);
   ownship(:,i) = transition * ownship(:,i-1);
end

plot_target_x = target(1, 1:5);
plot_target_y = target(2, 1:5);

plot_ownship_x = ownship(1, 1:5);
plot_ownship_y = ownship(2, 1:5);

plot(plot_target_x,plot_target_y, plot_ownship_x, plot_ownship_y)
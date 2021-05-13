clear; clc;

dt = 1;
iterations = 5;
transition = [1 0 dt 0; 0 1 0 dt; 0 0 1 0; 0 0 0 1];
x = zeros(4, iterations);

x(:,1) = [1 5 0 -1]';

for i = 2:iterations
   x(:,i) = transition * x(:,i-1);
end

plot_x = x(1,1:5);
plot_y = x(2,1:5);

plot(plot_x,plot_y)
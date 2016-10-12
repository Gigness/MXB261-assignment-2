%% MXB261 - Assignment 2

%% MXB261 - Question 2: 2-D Random Walks

porosity = [0.1, 0.2, 0.3, 0.4];
MSD_fences = zeros(1, length(porosity));
MSD_random = zeros(1, length(porosity));
x_rand_obstacle = zeros(length(porosity), 1000);
y_rand_obstacle = zeros(length(porosity), 1000);
x_fence_obstacle = zeros(length(porosity), 1000);
y_fence_obstacle = zeros(length(porosity), 1000);
distance_rand_obstacle = zeros(length(porosity), 1000);
distance_fence = zeros(length(porosity), 1000);

% simulate each walk scenario for each porosity value
for i = 1:length(porosity)
    [MSD_fences(i), x_fence_obstacle(i, :), y_fence_obstacle(i, :), distance_fence(i, :)] = fence_random_walk(porosity(i));
    [MSD_random(i), x_rand_obstacle(i, :), y_rand_obstacle(i, :), distance_rand_obstacle(i, :) ] = random_obstacle_walk(porosity(i));
end

%% 2a - quantitative analysis of MSD versus density of obstacles/fences
figure();
plot(porosity, MSD_fences, 'b.', 'MarkerSize', 40);
title({'MSD vs Porosity'; 'Fence Scenario'});
figure();
plot(porosity, MSD_random, 'r.', 'MarkerSize', 40);
title({'MSD vs Porosity'; 'Random Obstacle Scenario'});

%% 2b - Quantitative analysis of distribution of end positions vs density
%% 10% porosity
figure();
subplot(2, 2, 1);
histogram(x_fence_obstacle(1, :));
title('x positions');
axis([0, 200, 0, 200]);

subplot(2, 2, 2);
histogram(y_fence_obstacle(1, :));
title('y positions');
axis([0, 200, 0, 200]);

subplot(2, 2, 3);
histogram(x_rand_obstacle(1, :));
title('x positions');
axis([0, 200, 0, 200]);

subplot(2, 2, 4);
histogram(y_rand_obstacle(1, :));
title('y positions')
axis([0, 200, 0, 200]);

%% 20% porosity
figure();
subplot(2, 2, 1);
histogram(x_fence_obstacle(2, :));
title('x positions');
axis([0, 200, 0, 200]);

subplot(2, 2, 2);
histogram(y_fence_obstacle(2, :));
title('y positions');
axis([0, 200, 0, 200]);

subplot(2, 2, 3);
histogram(x_rand_obstacle(2, :));
title('x positions');
axis([0, 200, 0, 200]);

subplot(2, 2, 4);
histogram(y_rand_obstacle(2, :));
title('y positions')
axis([0, 200, 0, 200]);

%% 30% porosity
figure();

subplot(2, 2, 1);
histogram(x_fence_obstacle(3, :));
title('x positions');
axis([0, 200, 0, 200]);

subplot(2, 2, 2);
histogram(y_fence_obstacle(3, :));
title('y positions');
axis([0, 200, 0, 200]);

subplot(2, 2, 3);
histogram(x_rand_obstacle(3, :));
title('x positions');
axis([0, 200, 0, 200]);

subplot(2, 2, 4);
histogram(y_rand_obstacle(3, :));
title('y positions')
axis([0, 200, 0, 200]);

%% 40% porosity
figure();

subplot(2, 2, 1);
histogram(x_fence_obstacle(4, :));
title('x positions');
axis([0, 200, 0, 200]);

subplot(2, 2, 2);
histogram(y_fence_obstacle(4, :));
title('y positions');
axis([0, 200, 0, 200]);

subplot(2, 2, 3);
histogram(x_rand_obstacle(4, :));
title('x positions');
axis([80, 120, 0, 400]);

subplot(2, 2, 4);
histogram(y_rand_obstacle(4, :));
title('y position')
axis([80, 120, 0, 400]);

%% 2d - Final positions
% Fence scenario
figure()
subplot(2, 2, 1);
plot(x_fence_obstacle(1, :), y_fence_obstacle(1, :), 'b.', 'MarkerSize', 10);
title({'Fence Scenario: Final Positions'; '10% porosity'});
axis([0, 200, 0, 200]);

subplot(2, 2, 2);
plot(x_fence_obstacle(2, :), y_fence_obstacle(1, :), 'b.', 'MarkerSize', 10);
title({'Fence Scenario: Final Positions'; '20% porosity'});
axis([0, 200, 0, 200]);

subplot(2, 2, 3);
plot(x_fence_obstacle(3, :), y_fence_obstacle(1, :), 'b.', 'MarkerSize', 10);
title({'Fence Scenario: Final Positions'; '30% porosity'});
axis([0, 200, 0, 200]);

subplot(2, 2, 4);
plot(x_fence_obstacle(4, :), y_fence_obstacle(1, :), 'b.', 'MarkerSize', 10);
title({'Fence Scenario: Final Positions'; '40% porosity'});
axis([0, 200, 0, 200]);

% Random obstacle scenario
figure()
subplot(2, 2, 1);
plot(x_rand_obstacle(1, :), y_rand_obstacle(1, :), 'b.', 'MarkerSize', 10);
title({'Fence Scenario: Final Positions'; '10% porosity'});
axis([0, 200, 0, 200]);

subplot(2, 2, 2);
plot(x_rand_obstacle(2, :), y_rand_obstacle(1, :), 'b.', 'MarkerSize', 10);
title({'Fence Scenario: Final Positions'; '20% porosity'});
axis([0, 200, 0, 200]);

subplot(2, 2, 3);
plot(x_rand_obstacle(3, :), y_rand_obstacle(1, :), 'b.', 'MarkerSize', 10);
title({'Fence Scenario: Final Positions'; '30% porosity'});
axis([0, 200, 0, 200]);

subplot(2, 2, 4);
plot(x_rand_obstacle(4, :), y_rand_obstacle(1, :), 'b.', 'MarkerSize', 10);
title({'Fence Scenario: Final Positions'; '40% porosity'});
axis([0, 200, 0, 200]);

%% MXB261 - Assignment 2

%% Question 2: 2-D Random Walks

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
%% Fence scenario
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

%% Random obstacle scenario
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

%% Question 3: Population growth of a parasite
%% Q3a
k1 = 0.01;
k2 = 0.9;
k3 = 0.9;
k4 = 0.1;
k5 = 0.1;
tspan = [0, 80]; 

x0 = [20, 20]';
[t, x] = ode45(@(t, x) predator_prey_fn(t, x, k1, k2, k3, k4, k5), tspan, x0); 
plot(t, x(:, 1)); hold on; plot(t, x(:, 2)); hold off;
legend('parasite', 'host');

%% Q3b stochastic model
%% simulation properties
steps = 100000;
grid_width = 200;
[food_para_mask, x_pos, y_pos, age] = food_parasite_random_placement(0.01, grid_width);
parasite_max_age = 50;
%% Simulation
for step = 1:steps
    
    num_parasites = length(x_pos);
    for p = 1:num_parasites
        
        % current parasite position
        old_x = x_pos(p);
        old_y = y_pos(p);
        
        % parasite has reached peak age - delete it
        if age(p) == parasite_max_age
            x_pos(p) = [];
            y_pos(p) = [];
            age(p) = [];
            food_para_mask(old_y, old_x) = 1;
        
        % check if off grid - do nothing if off grid
        elseif new_x >= 1 && new_x <= 200 && new_y >= 1 && new_y <= 200

            [dx, dy] = random_movement();

            new_x = old_x + dx;
            new_y = old_y + dy;
            
            % collision with food
            if food_para_mask(new_y, new_x) == 0.5
                
                % add parasite to mask at new position
                % leave parasite existing at initial position
                food_para_mask(new_y, new_x) = 0;
                
                % update parasite's position
                x_pos(p) = new_x;
                y_pos(p) = new_y;
                
                % add new parasite's position and age to vectors
                x_pos(end + 1) = old_x;
                y_pos(end + 1) = old_y;
                age(end + 1) = 0;
            
            % empty space
            else
                x_pos(p) = new_x;
                y_pos(p) = new_y;   
                % update mask
                food_para_mask(old_y, old_x) = 1;
                food_para_mask(new_y, new_x) = 0;
            end
        end
        
    end

end



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
%% simulation properties random placement of food
steps = 2500;
grid_width = 200;
[food_para_mask, parasites, food] = food_parasite_random_placement(0.1, grid_width);
[food_para_mask1, parasites1, food1] = localised_food_random_parasite_placement(0.2, grid_width, 20);
parasite_max_age = 500;
M = zeros(1, steps);
video_writer = VideoWriter('test.avi');
open(video_writer);

%%
plot(parasites(:, 1:1), parasites(:, 2:2), 'r.', 'MarkerSize', 5);
hold on;
plot(food(:, 1:1), food(:, 2:2), 'b.', 'MarkerSize', 5)
hold off;



%% Simulation - Test case 1 - no deaths

f = figure;

for step = 1:steps
    figure(f);
    num_parasites = length(parasites);
    
    for p = 1:num_parasites
        
        old_x = parasites(p, 1:1);
        old_y = parasites(p, 2:2);
        
        [dx, dy] = random_movement();
        new_x = old_x + dx;
        new_y = old_y + dy;
        
        % parasite has reached peak age - delete it
        if parasites(p, 3:3) == parasite_max_age + 1
            parasites(p, :) = [];
            food_para_mask(old_y, old_x) = 1;
        
        % parasite has valid new position
        elseif new_x >= 1 && new_x <= 200 && new_y >= 1 && new_y <= 200

            % collision with food
            if food_para_mask(new_y, new_x) == 0.5
                
                % add parasite to mask at new position
                % leave parasite existing at initial position
                food_para_mask(new_y, new_x) = 0;
                
                % delete the food
                % find the food at new_y, new_x
                food_index = find(ismember(food,[new_x new_y], 'rows'));
                
                % delete the food
                food(food_index, :) = [];
                
                % update parasite's position
                parasites(p, 1:2) = [new_x, new_y];
                
                % add new parasite's position and age to vector
                parasites(end + 1, :) = [old_x, old_y, 0];
            
            % empty space
            elseif food_para_mask(new_y, new_x) == 1
                parasites(p, 1:2) = [new_x, new_y];   
                % update mask
                food_para_mask(old_y, old_x) = 1;
                food_para_mask(new_y, new_x) = 0;
            end
        end    
    end
    plot(parasites(:, 1), parasites(:, 2), 'r.', 'MarkerSize', 10);
    hold on;
    plot(food(:, 1), food(:, 2), 'b.', 'MarkerSize', 10);
    hold off;
    frame = getframe(gcf);
    writeVideo(video_writer, frame);
    
end

close(video_writer);

%% Scenario 1: Random food creation
steps = 1000;
grid_width = 200;
[food_para_mask, parasites, food] = food_parasite_random_placement(0.01, grid_width);
parasite_max_age = 100;
M = zeros(1, steps);
video_writer = VideoWriter('test.avi');
open(video_writer);
food_creation_threshold = 0.03;


f_id = figure;
axis([1 grid_width 1 grid_width]);

for step = 1:steps
    figure(f_id);
    num_parasites = length(parasites);
    num_food = length(food);
    
    % Parasite movement
    for p = 1:num_parasites
        
        % check if it is dead
        if parasites(p, 1) ~= -1
        
            old_x = parasites(p, 1:1);
            old_y = parasites(p, 2:2);

            [dx, dy] = random_movement();
            new_x = old_x + dx;
            new_y = old_y + dy;

            % parasite has reached peak age - delete it
            if parasites(p, 3:3) == parasite_max_age + 1
                parasites(p, 1:2) = [-1 -1];
                food_para_mask(old_y, old_x) = 1;

            % parasite has valid new position
            elseif new_x >= 1 && new_x <= 200 && new_y >= 1 && new_y <= 200

                % collision with food
                if food_para_mask(new_y, new_x) == 0.5

                    % add parasite to mask at new position
                    % leave parasite existing at initial position
                    food_para_mask(new_y, new_x) = 0;

                    % delete the food
                    % find the food at new_y, new_x
                    food_index = find(ismember(food,[new_x new_y], 'rows'));

                    % delete the food
                    food(food_index, :) = [-1 -1];

                    % update parasite's position
                    parasites(p, 1:2) = [new_x, new_y];

                    % add new parasite's position and age to vector
                    parasites(end + 1, :) = [old_x, old_y, 0];

                % empty space
                elseif food_para_mask(new_y, new_x) == 1
                    parasites(p, 1:2) = [new_x, new_y];   
                    % update mask
                    food_para_mask(old_y, old_x) = 1;
                    food_para_mask(new_y, new_x) = 0;
                end
            end    
        end
    end
    
    % age parasites
    parasites(:, 3) = parasites(:, 3) + 1;

    % Food generation
    for f = 1:num_food
        if food(f, 1) ~= -1
            
            if rand < food_creation_threshold
                x_pos = food(f, 1);
                y_pos = food(f, 2);
                
                x_pos_right = x_pos + 1;
                x_pos_left = x_pos - 1;
                y_pos_up = y_pos + 1;
                y_pos_down = y_pos - 1;
                
                % reproduce to the right
                if food_para_mask(y_pos, x_pos_right) ~= 0 && food_para_mask(y_pos, x_pos_right) ~= 0.5 && x_pos_right <= grid_width
                    food_para_mask(y_pos, x_pos_right) = 0.5;
                    food_para_mask(end + 1, :) = [x_pos_right, y_pos];
                elseif food_para_mask(y_pos, x_pos_left) ~= 0 && food_para_mask(y_pos, x_pos_left) ~= 0.5 && x_pos_left >= 1
                    food_para_mask(y_pos, x_pos_left) = 0.5;
                    food_para_mask(end + 1, :) = [x_pos_left, y_pos];
                elseif food_para_mask(y_pos_up, x_pos) ~= 0 && food_para_mask(y_pos_up, x_pos) ~= 0.5 && y_pos_up <= grid_width
                    food_para_mask(y_pos_up, x_pos) = 0.5;
                    food_para_mask(end + 1, :) = [x_pos, y_pos_up];
                elseif food_para_mask(y_pos_down, x_pos) ~= 0 && food_para_mask(y_pos_down, x_pos) ~= 0.5 && y_pos_down >= 1
                    food_para_mask(y_pos_down, x_pos) = 0.5;
                    food_para_mask(end + 1, :) = [x_pos, y_pos_down];
                end
            end
        end 
    end
    
    
    plot(parasites(:, 1), parasites(:, 2), 'r.', 'MarkerSize', 10);
    hold on;
    plot(food(:, 1), food(:, 2), 'b.', 'MarkerSize', 10);
    hold off;
    axis([1 grid_width 1 grid_width]);
    frame = getframe(gcf);
    writeVideo(video_writer, frame);
    
end

close(video_writer);


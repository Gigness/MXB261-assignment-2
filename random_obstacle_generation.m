function obstacles = random_obstacle_generation( porosity_percentage )
%RANDOM_OBSTACLE_GENERATION

% grid params
grid_width = 200;

% total obstacles
total_obstacles = grid_width^2 * porosity_percentage;

% matrix of obstacles
obstacles = zeros(grid_width, grid_width);

% fill grid with obstacles
while total_obstacles > 0
   
    rand_x = randi([1 grid_width]);
    rand_y = randi([1 grid_width]);
    
    % check if an obstacle at rand_x and rand_y already exists
    while obstacles(rand_y, rand_x) == 1
        rand_x = randi([1 grid_width]);
        rand_y = randi([1 grid_width]);
    end
    
    obstacles(rand_y, rand_x) = 1;
    total_obstacles = total_obstacles - 1;
end
end


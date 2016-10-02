function [ obstacles ] = fence_obstacle_generation( porosity_percentage )
% FENCE_GENERATION 
% Generates fence obstcles in set locations
% the number of obstacles are determined by the input: porosity_percentage

% grid paramter
grid_width = 200;
fence = [80, 90, 110, 120];

% obstacles per fence
obstacles_per_fence = grid_width * porosity_percentage; 

% matrix of obstacles
obstacles = zeros(grid_width, grid_width);

% populate each horizontal fence line
for i = 1:length(fence)
    
    obstacles_remaining_x = obstacles_per_fence;
    obstacles_remaining_y = obstacles_per_fence;
    
    x = fence(i);
    y = fence(i);
    
    % populate vertical fence at given coordinate
    while obstacles_remaining_x > 0
        % get a random y position to place along the vertical fence
        rand_y = randi([1 grid_width]);
        if obstacles(rand_y, x) == 0
            obstacles(rand_y, x) = 1;
            obstacles_remaining_x = obstacles_remaining_x - 1;
        end 
    end
    
    % populate horizontal fence at given coordinate
    while obstacles_remaining_y > 0
       % get rand x pos to place on horizontal fence
       rand_x = randi([1 grid_width]);
       if obstacles(y, rand_x) == 0
           obstacles(y, rand_x) = 1;
           obstacles_remaining_y = obstacles_remaining_y - 1;
       end
    end
end

end


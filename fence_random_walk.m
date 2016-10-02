function MSD = fence_random_walk( porosity_percentage )
%FENCE_WALK Summary
% Set parameters 
walks = 1000;       % number of Walks
steps = 750;         % number of steps
S = 0;           % initialise sum for MSD     

% Define directions that can be taken as an ordered pair which will be
% added on
north = [0 1];
east = [1 0];
south = [0 -1];
west = [-1 0];

% initialise grid and obstacles
grid = fence_obstacle_generation(porosity_percentage);

% simulate walks
while walks > 0
    position = [100 100];    % initial position for walker
    valid_walk = true;

    for step = 1:steps
        
        u = randi(4);    % Random integer from 1-4 to determine direction
        before_step = position;       % use a TEMP to hold position before
        if u == 1
            position = position + north;
        elseif u == 2
            position = position + east;
        elseif u == 3
            position = position + south;
        elseif u == 4
            position = position + west;
        end
        
        % Check if obstacle is there, if so go back to previous position
        % Reverse coords as we're checking the masking on the matrix
        if grid(position(2), position(1)) == 1
            position = before_step;
        end  
        
        % check if walker is outside grid boundary
        outside_x = position(1) < 1 || position(1) > 200;
        outside_y = position(2) < 1 || position(2) > 200;
        
        if outside_x || outside_y
            valid_walk = false;
            break
        end
        
    end
    
    if valid_walk
        % Sum the squared distances of each walk
        S = S + (position(1) - 100)^2 + (position(2) - 100)^2;

        % Decrement our walk counter by 1
        walks = walks - 1;

    end
   
end

% Calculate the MSD 
MSD = 1 / 1000 * S;


end


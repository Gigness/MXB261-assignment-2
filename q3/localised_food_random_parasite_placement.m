function mask = localised_food_random_parasite_placement(density, grid_width, std_dev)
% LOCALISED_FOOD_RANDOM_PARASITE_PLACEMENT
%
% four regions of localised food
%             |              |
%             |              |
%      *      |      *       |
%             |              |
%----------------------------|            
%             |              |
%             |              |
%      *      |      *       |
%             |              |
%-----------------------------

num_regions = 4;
mask = ones(grid_width, grid_width);
population = grid_width^2 * density;
pop_per_region = population / num_regions;

dist_from_origin = grid_width / num_regions;

x_origins = [dist_from_origin * 1, dist_from_origin * 3, dist_from_origin * 1, dist_from_origin * 3];
y_origins = [dist_from_origin * 1, dist_from_origin * 3, dist_from_origin * 3, dist_from_origin * 1];

for i = 1:num_regions
    x_origin = x_origins(i);
    y_origin = y_origins(i);
    
    for j = 1:pop_per_region
        
        position_taken = true;
        
        while position_taken == true
            x = abs(round(normrnd(x_origin, std_dev)));
            y = abs(round(normrnd(y_origin, std_dev)));
            
            while (x < 1 || x > grid_width || y < 1 || y > grid_width)
                x = abs(round(normrnd(x_origin, std_dev)));
                y = abs(round(normrnd(y_origin, std_dev)));

            end
            
            if mask(y, x) == 0.5
                position_taken = true;
            else
                position_taken = false;
            end
        
        end
        mask(y, x) = 0.5;
    end
end

for k = 1:population
    x = randi([1 200]);
    y = randi([1 200]);
    
    while mask(y, x) == 0.5 || mask(y, x) == 0
        x = randi([1 200]);
        y = randi([1 200]);
    end
    mask(y, x) = 0;
end

end


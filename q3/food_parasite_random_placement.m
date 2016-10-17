function [mask, parasites_x, parasites_y, parasites_age] = food_parasite_random_placement(density, grid_width)
% food_spatial_mask
% creates food at random locations in a 200 by 200 grid

population = density * grid_width^2;
% parasite locations in matrix
mask = ones(grid_width, grid_width); 
parasites_x = zeros(1, population);
parasites_y = zeros(1, population);
parasites_age = zeros(1, population);

% populate food (as 0.5)
for i = 1:population
    
    x = randi([1 200]);
    y = randi([1 200]);
    
    while mask(y, x) == 0.5
       x = randi([1 200]);
       y = randi([1 200]); 
    end
    
    mask(y, x) = 0.5;
end

% populate parasites as 0
for j = 1:population
   
    x = randi([1 200]);
    y = randi([1 200]);
    
    while mask(y, x) == 0.5 || mask(y, x) == 0
        x = randi([1 200]);
        y = randi([1 200]);
    end
    mask(y, x) = 0;
    parasites_x(j) = x;
    parasites_y(j) = y;
end


end


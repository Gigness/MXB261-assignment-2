%% MXB261 - Assignment 2

%% MXB261 - Question 2: 2-D Random Walks

porosity = [0.1, 0.2, 0.3, 0.4];
MSD_fences = zeros(1, length(porosity));
MSD_random = zeros(1, length(porosity));

for i = 1:length(porosity)
    MSD_fences(i) = fence_random_walk(porosity(i));
    MSD_random(i) = random_obstacle_walk(porosity(i));
end

%% Case 1: Random F and P placements with Food created in neighbouring cells

make_video = true;
grid_width = 200;
density = 0.1;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 500;
parasite_max_age = 100;
food_creation_threshold = 0.05;
food_death_threshold = 0.02;
file_name = 'case1_simulation.avi';

[p1, f1] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);

%% Results
% Food dies out from parasites
% Parasites dieout

%% Case 2: Random F and P placements with Food created in neighbouring cells

grid_width = 200;
density = 0.1;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 1000;
parasite_max_age = 20;
food_creation_threshold = 0.45;
food_death_threshold = 0.02;
file_name = 'case2_simulation.avi';

simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video)
%% Results
% Equilibrium is reached, althought only 1000 steps are run.

%% Case 3: Random F and P placements with Food created in neighbouring cells

grid_width = 200;
density = 0.1;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 500;
parasite_max_age = 20;
food_creation_threshold = 0.05;
food_death_threshold = 0.02;
file_name = 'case3_simulation.avi';

simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video)

%% Results
% Food lives
% Parasites dieout

%% Case 4: Localised F placements with Food reproduced in neighbouring cells
grid_width = 200;
density = 0.1;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 500;
parasite_max_age = 100;
food_creation_threshold = 0.05;
food_death_threshold = 0.02;
file_name = 'case4_simulation.avi';

simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video)

%% Results
% Food becomes extinct followed by parasites going extinct

%% Case 5: Localised F placements with Food reproduced in neighbouring cells
grid_width = 200;
density = 0.1;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 500;
parasite_max_age = 30;
food_creation_threshold = 0.08;
food_death_threshold = 0.02;
file_name = 'case5_simulation.avi';

simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video)
%% Results
% Parasites become extinct
% Food lives on

%% Case 6: Localised F placements with Food reproduced in neighbouring cells
grid_width = 200;
density = 0.1;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 500;
parasite_max_age = 20;
food_creation_threshold = 0.50;
food_death_threshold = 0.02;
file_name = 'case6_simulation.avi';

simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video)
%% Results
% Equilibrium


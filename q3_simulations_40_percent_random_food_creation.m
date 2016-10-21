%% Case 35: Random F and P placements with Food created in random locations

make_video = true;
grid_width = 200;
density = 0.4;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 500;
parasite_max_age = 300;
food_creation_num = 30;
food_death_threshold = 0.50;
file_name = 'case35_simulation.avi';

[p35, f35] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);

%% Results
% Food - Almost Extinct
% Parasites - Live

%% Case 36: Random F and P placements with Food created in random locations

make_video = true;
grid_width = 200;
density = 0.4;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 500;
parasite_max_age = 30;
food_creation_num = 100;
food_death_threshold = 0.02;
file_name = 'case36_simulation.avi';

[p36, f36] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);

%% Results
% Equilibrium
t = 1:1:size(p36, 2);
figure;
plot(t, p36, 'r.');
hold on
plot(t, f36, 'b.');
legend('parasites', 'food');
title({'Random Food with Parasite Placement at 40%'; 'Random Food Reproduction'});
%% Case 37: Random F and P placements with Food created in neighbouring cells

make_video = true;
grid_width = 200;
density = 0.4;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 250;
parasite_max_age = 20;
food_creation_num = 50;
food_death_threshold = 0.05;
file_name = 'case37_simulation.avi';

[p37, f37] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);

%% Results
% Food - Lives
% Parasites - Extinct

%% Case 38: Localised F placements with Food reproduced in neighbouring cells
grid_width = 200;
density = 0.4;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 500;
parasite_max_age = 100;
food_creation_num = 50;
food_death_threshold = 0.02;
file_name = 'case38_simulation.avi';

[p38, f38] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);

%% Results
% Equilibrium
t = 1:1:size(p38, 2);
figure;
plot(t, p38, 'r.');
hold on
plot(t, f38, 'b.');
legend('parasites', 'food');
title({'Localised Food with Parasite Placement at 40%'; 'Random Food Reproduction'});

%% Case 39: Localised F placements with Food reproduced in neighbouring cells
grid_width = 200;
density = 0.4;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 500;
parasite_max_age = 50;
food_creation_num = 50;
food_death_threshold = 0.02;
file_name = 'case39_simulation.avi';

[p39, f39] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);
%% Results
% Food - Extinct
% Parasites - Live
% Not possible due to random creation of set amount of Food


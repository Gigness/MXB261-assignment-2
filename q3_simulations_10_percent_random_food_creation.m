%% Case 13: Random F and P placements with Food created in random locations

make_video = true;
grid_width = 200;
density = 0.1;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 1000;
parasite_max_age = 300;
food_creation_num = 30;
food_death_threshold = 0.50;
file_name = 'case13_simulation.avi';

[p13, f13] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);

%% Results
% Food - Can never go Extinct
% Parasites - Live


%% Case 14: Random F and P placements with Food created in random locations

make_video = true;
grid_width = 200;
density = 0.1;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 1000;
parasite_max_age = 40;
food_creation_num = 100;
food_death_threshold = 0.02;
file_name = 'case14_simulation.avi';

[p14, f14] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);

%% Results
% Equilibrium
t = 1:1:steps;
figure;
plot(t, p14, 'r');
hold on
plot(t, f14, 'b');
legend('parasites', 'food');
title({'Random Food with Parasite Placement at 10%'; 'Random Food Reproduction'});

%% Case 15: Random F and P placements with Food created in random cells

make_video = true;
grid_width = 200;
density = 0.1;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 1000;
parasite_max_age = 50;
food_creation_num = 50;
food_death_threshold = 0.20;
file_name = 'case15_simulation.avi';

[p15, f15] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);

%% Results
% Food lives
% Parasites dieout

%% Case 16: Localised F placements with Food reproduced in random cells
grid_width = 200;
density = 0.1;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 500;
parasite_max_age = 100;
food_creation_num = 50;
food_death_threshold = 0.02;
file_name = 'case16_simulation.avi';

[p16, f16] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);

%% Results
% Not possible to simulate as a constant number of food particles are
% created at each iteration

%% Case 17: Localised F placements with Food reproduced in random cells
grid_width = 200;
density = 0.1;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 500;
parasite_max_age = 30;
food_creation_num = 50;
food_death_threshold = 0.02;
file_name = 'case17_simulation.avi';

[p17, f17] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);
%% Results
% Food - Lives
% Parasites - Extinct

%% Case 18: Localised F placements with Food reproduced in random cells
grid_width = 200;
density = 0.1;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 500;
parasite_max_age = 60;
food_creation_num = 50;
food_death_threshold = 0.02;
file_name = 'case18_simulation.avi';

[p18, f18] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);
%% Results
% Equilibrium
t = 1:1:steps;
figure;
plot(t, p18, 'r.');
hold on
plot(t, f18, 'b.');
legend('parasites', 'food');
title({'Localised Food with Parasite Placement at 10%'; 'Random Food Reproduction'});


%% Case 30: Random F and P placements with Food created in random locations

make_video = true;
grid_width = 200;
density = 0.3;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 1000;
parasite_max_age = 300;
food_creation_num = 30;
food_death_threshold = 0.50;
file_name = 'case30_simulation.avi';

[p30, f30] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);

%% Results
% Food - Almost Extinct
% Parasites - Live

%% Case 31: Random F and P placements with Food created in random locations

make_video = true;
grid_width = 200;
density = 0.3;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 1000;
parasite_max_age = 20;
food_creation_num = 250;
food_death_threshold = 0.02;
file_name = 'case31_simulation.avi';

[p31, f31] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);

%% Results
% Equilibrium
t = 1:1:size(p31, 2);
figure;
plot(t, p31, 'r');
hold on
plot(t, f31, 'b');
legend('parasites', 'food');
title({'Random Food with Parasite Placement at 30%'; 'Localised Food Reproduction'});
%% Case 32: Random F and P placements with Food created in neighbouring cells

make_video = true;
grid_width = 200;
density = 0.3;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 250;
parasite_max_age = 20;
food_creation_num = 50;
food_death_threshold = 0.05;
file_name = 'case32_simulation.avi';

[p32, f32] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);

%% Results
% Food - Lives
% Parasites - Extinct
t = 1:1:size(p32, 2);
figure;
plot(t, p32, 'r');
hold on
plot(t, f32, 'b');
legend('parasites', 'food');
title({'Random Food with Parasite Placement at 30%'; 'Localised Food Reproduction'});

%% Case 33: Localised F placements with Food reproduced in random cells
make_video = true;
grid_width = 200;
density = 0.3;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 500;
parasite_max_age = 20;
food_creation_num = 250;
food_death_threshold = 0.02;
file_name = 'case33_simulation.avi';

[p33, f33] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);

%% Results
% Equilibrium
t = 1:1:size(p33, 2);
figure;
plot(t, p33, 'r');
hold on
plot(t, f33, 'b');
legend('parasites', 'food');
title({'Localised Food with Parasite Placement at 30%'; 'Random Food Reproduction'});

%% Case 34: Localised F placements with Food reproduced in neighbouring cells
grid_width = 200;
density = 0.3;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 500;
parasite_max_age = 50;
food_creation_num = 50;
food_death_threshold = 0.02;
file_name = 'case34_simulation.avi';

[p34, f34] = simulation_case_2(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_num, food_death_threshold, file_name, make_video);
%% Results
% Food - Extinct
% Parasites - Live
% Not possible due to random creation of set amount of Food


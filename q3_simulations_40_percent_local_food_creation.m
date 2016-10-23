%% Case 40: Random F and P placements with Food created in neighbouring cells

make_video = true;
grid_width = 200;
density = 0.4;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 500;
parasite_max_age = 250;
food_creation_threshold = 0.10;
food_death_threshold = 0.02;
file_name = 'case40_simulation.avi';

[p40, f40] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);

%% Results
% Food - Extinct
% Parasites - Eventually Extinct

%% Case 41: Random F and P placements with Food created in neighbouring cells

grid_width = 200;
density = 0.40;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 300;
parasite_max_age = 10;
food_creation_threshold = 0.30;
food_death_threshold = 0.02;
file_name = 'case41_simulation.avi';

[p41, f41] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);
%% Results
% Food - Live
% Parasites - Extinct

%% Case 42: Random F and P placements with Food created in neighbouring cells

make_video = true;
grid_width = 200;
density = 0.4;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 500;
parasite_max_age = 5;
food_creation_threshold = 0.30;
food_death_threshold = 0.05;
file_name = 'case42_simulation.avi';

[p42, f42] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);

%% Results
% Equilibrium
t = 1:1:size(p42, 2);
figure;
plot(t, p42, 'r');
hold on
plot(t, f42, 'b');
legend('parasites', 'food');
title({'Random Food and Parasite Placement at 40%'; 'Localised Food Reproduction'});

%% Case 43: Localised F placements with Food reproduced in neighbouring cells
grid_width = 200;
density = 0.4;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 500;
parasite_max_age = 100;
food_creation_threshold = 0.05;
food_death_threshold = 0.02;
file_name = 'case43_simulation.avi';

[p43, f43] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);

%% Results
% Food - Extinct
% Parasites - Eventually Extinct
t = 1:1:size(p43, 2);
figure;
plot(t, p43, 'r.');
hold on
plot(t, f43, 'b.');
legend('parasites', 'food');
title({'Random Food and Parasite Placement at 40%'; 'Localised Food Reproduction'});


%% Case 44: Localised F placements with Food reproduced in neighbouring cells
grid_width = 200;
density = 0.2;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 250;
parasite_max_age = 12;
food_creation_threshold = 0.10;
food_death_threshold = 0.02;
file_name = 'case44_simulation.avi';

[p44, f4] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);
%% Results
% Food - Live
% Parasites - Extinct
t = 1:1:steps;
figure;
plot(t, p44, 'r.');
hold on
plot(t, f44, 'b.');
legend('parasites', 'food');
title({'Random Food and Parasite Placement at 40%'; 'Localised Food Reproduction'});

%% Case 45: Localised F placements with Food reproduced in neighbouring cells
make_video = true;
grid_width = 200;
density = 0.40;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 1000;
parasite_max_age = 10;
food_creation_threshold = 0.70;
food_death_threshold = 0.10;
file_name = 'case45_simulation.avi';

[p45, f45] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);
%% Results
% Equilibrium
t = 1:1:size(p45, 2);
figure;
plot(t, p45, 'r.');
hold on
plot(t, f45, 'b.');
legend('parasites', 'food');
title({'Localised Food with Random Parasite Placement at 40%'; 'Localised Food Reproduction'});


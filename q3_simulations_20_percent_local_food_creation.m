%% Case 7: Random F and P placements with Food created in neighbouring cells

make_video = true;
grid_width = 200;
density = 0.2;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 500;
parasite_max_age = 40;
food_creation_threshold = 0.05;
food_death_threshold = 0.02;
file_name = 'case7_simulation.avi';

[p7, f7] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);

%% Results
% Food - Extinct
% Parasites - Extinct
t = 1:1:size(p7, 1);
figure;
plot(t, p7, 'r.');
hold on
plot(t, f7, 'b.');
legend('parasites', 'food');
title({'Random Food with Parasite Placement at 20%'; 'Localised Food Reproduction'});
%% Case 8: Random F and P placements with Food created in neighbouring cells

grid_width = 200;
density = 0.2;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 300;
parasite_max_age = 15;
food_creation_threshold = 0.30;
food_death_threshold = 0.10;
file_name = 'case8_simulation.avi';

[p8, f8] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);
%% Results
% Food - Live
% Parasties - Extinct

%% Case 9: Random F and P placements with Food created in neighbouring cells

make_video = true;
grid_width = 200;
density = 0.2;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 500;
parasite_max_age = 8;
food_creation_threshold = 0.50;
food_death_threshold = 0.15;
file_name = 'case9_simulation.avi';

[p9, f9] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);

%% Results
% Equilibrium
t = 1:1:steps;
figure;
plot(t, p9, 'r.');
hold on
plot(t, f9, 'b.');
legend('parasites', 'food');
title({'Random Food and Parasite Placement at 20%'; 'Localised Food Reproduction'});

%% Case 10: Localised F placements with Food reproduced in neighbouring cells
grid_width = 200;
density = 0.2;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 500;
parasite_max_age = 100;
food_creation_threshold = 0.05;
food_death_threshold = 0.02;
file_name = 'case10_simulation.avi';

[p10, f10] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);

%% Results
% Food becomes extinct followed by parasites going extinct

%% Case 11: Localised F placements with Food reproduced in neighbouring cells
grid_width = 200;
density = 0.2;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 250;
parasite_max_age = 12;
food_creation_threshold = 0.10;
food_death_threshold = 0.02;
file_name = 'case11_simulation.avi';

[p11, f11] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);
%% Results
% Parasites become extinct
% Food lives on

%% Case 12: Localised F placements with Food reproduced in neighbouring cells
grid_width = 200;
density = 0.2;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 1500;
parasite_max_age = 20;
food_creation_threshold = 0.50;
food_death_threshold = 0.10;
file_name = 'case12_simulation.avi';

[p12, f12] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);
%% Results
% Equilibrium
t = 1:1:size(p12,2);
figure;
plot(t, p12, 'r.');
hold on
plot(t, f12, 'b.');
legend('parasites', 'food');
title({'Localised Food with Parasite Placement at 20%'; 'Localised Food Reproduction'});


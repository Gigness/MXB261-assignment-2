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
% Food - Extinct
% Parasites - Eventually Extinct
t = 1:1:size(p1,2);
figure;
plot(t, p1, 'r');
hold on
plot(t, f1, 'b');
legend('parasites', 'food');
title({'Random Food with Parasite Placement at 10%'; 'Localised Food Reproduction'});


%% Case 2: Random F and P placements with Food created in neighbouring cells

make_video = true;
grid_width = 200;
density = 0.1;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 1000;
parasite_max_age = 20;
food_creation_threshold = 0.50;
food_death_threshold = 0.02;
file_name = 'case2_simulation.avi';

[p2, f2] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);

%% Results
% Equilibrium
t = 1:1:steps;
figure;
plot(t, p2, 'r');
hold on
plot(t, f2, 'b');
legend('parasites', 'food');
title({'Random Food and Parasite Placement at 10%'; 'Localised Food Reproduction'});


%% Case 3: Random F and P placements with Food created in neighbouring cells

grid_width = 200;
density = 0.1;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 500;
parasite_max_age = 20;
food_creation_threshold = 0.05;
food_death_threshold = 0.02;
file_name = 'case3_simulation.avi';

simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);

%% Results
% Food - Live
% Parasites - Extinct

%% Case 4: Localised F placements with Food reproduced in neighbouring cells
grid_width = 200;
density = 0.1;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 500;
parasite_max_age = 100;
food_creation_threshold = 0.05;
food_death_threshold = 0.02;
file_name = 'case4_simulation.avi';

simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);

%% Results
% Food - Extinct
% Parasties - Extinct

%% Case 5: Localised F placements with Food reproduced in neighbouring cells
make_video = false;
grid_width = 200;
density = 0.1;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 500;
parasite_max_age = 30;
food_creation_threshold = 0.08;
food_death_threshold = 0.02;
file_name = 'case5_simulation.avi';

[p5, f5] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);
%% Results
% Food - Live
% Parasites - Exist
t = 1:1:size(p5, 2);
figure;
plot(t, p5, 'r');
hold on
plot(t, f5, 'b');
legend('parasites', 'food');
title({'Localised Food with Parasite Placement at 10%'; 'Localised Food Reproduction'});


%% Case 6: Localised F placements with Food reproduced in neighbouring cells
grid_width = 200;
density = 0.1;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 1500;
parasite_max_age = 20;
food_creation_threshold = 0.55;
food_death_threshold = 0.02;
file_name = 'case6_simulation.avi';

[p6, f6] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);
%% Results
% Equilibrium
t = 1:1:steps;
figure;
plot(t, p6, 'r');
hold on
plot(t, f6, 'b');
legend('parasites', 'food');
title({'Localised Food with Parasite Placement at 10%'; 'Localised Food Reproduction'});


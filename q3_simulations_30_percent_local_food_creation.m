%% Case 24: Random F and P placements with Food created in neighbouring cells

make_video = true;
grid_width = 200;
density = 0.3;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 500;
parasite_max_age = 250;
food_creation_threshold = 0.10;
food_death_threshold = 0.02;
file_name = 'case24_simulation.avi';

[p24, f24] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);

%% Results
% Food - Extinct
% Parasites - Eventually Extinct

%% Case 25: Random F and P placements with Food created in neighbouring cells

grid_width = 200;
density = 0.2;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 300;
parasite_max_age = 15;
food_creation_threshold = 0.30;
food_death_threshold = 0.10;
file_name = 'case25_simulation.avi';

[p25, f25] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);
%% Results
% Food - Live
% Parasites - Extinct

%% Case 26: Random F and P placements with Food created in neighbouring cells

make_video = true;
grid_width = 200;
density = 0.1;
[mask, parasites, food] = food_parasite_random_placement(density, grid_width);
steps = 500;
parasite_max_age = 8;
food_creation_threshold = 0.50;
food_death_threshold = 0.15;
file_name = 'case26_simulation.avi';

[p26, f26] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);

%% Results
% Equilibrium
t = 1:1:steps;
figure;
plot(t, p26, 'r.');
hold on
plot(t, f26, 'b.');
legend('parasites', 'food');
title({'Random Food and Parasite Placement at 30%'; 'Localised Food Reproduction'});

%% Case 27: Localised F placements with Food reproduced in neighbouring cells
grid_width = 200;
density = 0.2;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 500;
parasite_max_age = 100;
food_creation_threshold = 0.05;
food_death_threshold = 0.02;
file_name = 'case27_simulation.avi';

[p27, f27] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);

%% Results
% Food - Extinct
% Parasites - Eventually Extinct
t = 1:1:steps;
figure;
plot(t, p27, 'r.');
hold on
plot(t, f27, 'b.');
legend('parasites', 'food');
title({'Random Food and Parasite Placement at 30%'; 'Localised Food Reproduction'});


%% Case 28: Localised F placements with Food reproduced in neighbouring cells
grid_width = 200;
density = 0.2;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 250;
parasite_max_age = 12;
food_creation_threshold = 0.10;
food_death_threshold = 0.02;
file_name = 'case28_simulation.avi';

[p28, f28] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);
%% Results
% Food - Live
% Parasites - Extinct
t = 1:1:steps;
figure;
plot(t, p28, 'r.');
hold on
plot(t, f28, 'b.');
legend('parasites', 'food');
title({'Random Food and Parasite Placement at 30%'; 'Localised Food Reproduction'});

%% Case 29: Localised F placements with Food reproduced in neighbouring cells
make_video = true;
grid_width = 200;
density = 0.2;
[mask, parasites, food] = localised_food_random_parasite_placement(density, grid_width, 10);
steps = 1000;
parasite_max_age = 20;
food_creation_threshold = 0.50;
food_death_threshold = 0.10;
file_name = 'case29_simulation.avi';

[p29, f29] = simulation_case_1(mask, parasites, food, steps, grid_width, parasite_max_age, food_creation_threshold, food_death_threshold, file_name, make_video);
%% Results
% Equilibrium
t = 1:1:size(p29, 2);
figure;
plot(t, p29, 'r');
hold on
plot(t, f29, 'b');
legend('parasites', 'food');
title({'Localised Food with Random Parasite Placement at 30%'; 'Localised Food Reproduction'});
% axis([])


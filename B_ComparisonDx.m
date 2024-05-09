%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Load data
x_source_9x3x3 = readNPY('Results\NPR9x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_imp\\x_source.npy');
x_source_24x3x3S1 = readNPY('Results\NPR24x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_imp\\x_source.npy');
x_source_39x3x3S1 = readNPY('Results\NPR39x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_imp\\x_source.npy');
x_source_39x3x3S15 = readNPY('Results\NPR39x3x3-S15,1.5,1.5-Rx,1.5,1.5\results_diff_imp\\x_source.npy');

mean_path_9x3x3 = readNPY('Results\NPR9x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_imp\\mean_free_path.npy');
mean_path_24x3x3S1 = readNPY('Results\NPR24x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_imp\\mean_free_path.npy');
mean_path_39x3x3S1 = readNPY('Results\NPR39x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_imp\\mean_free_path.npy');
mean_path_39x3x3S15 = readNPY('Results\NPR39x3x3-S15,1.5,1.5-Rx,1.5,1.5\results_diff_imp\\mean_free_path.npy');

Dx_9x3x3 = readNPY('Results\NPR9x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_opt\\Dx.npy');
Dx_24x3x3S1 = readNPY('Results\NPR24x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_opt\\Dx.npy');
Dx_39x3x3S1 = readNPY('Results\NPR39x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_opt\\Dx.npy');
Dx_39x3x3S15 = readNPY('Results\NPR39x3x3-S15,1.5,1.5-Rx,1.5,1.5\results_diff_opt\\Dx.npy');

x_9x3x3m = readNPY('Results\NPR9x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_opt\\x_axis.npy');
x_24x3x3m = readNPY('Results\NPR24x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_opt\\x_axis.npy');
x_39x3x3m = readNPY('Results\NPR39x3x3-S15,1.5,1.5-Rx,1.5,1.5\results_diff_opt\\x_axis.npy');

Dth_9x3x3 = readNPY('Results\NPR9x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_imp\\D_th.npy');
Dth_24x3x3 = readNPY('Results\NPR24x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_imp\\D_th.npy');
Dth_39x3x3 = readNPY('Results\NPR39x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_imp\\D_th.npy');

k_9x3x3 = readNPY('Results\NPR9x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_opt\\optimal_D.npy');
k_24x3x3S1 = readNPY('Results\NPR24x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_opt\\optimal_D.npy');
k_39x3x3S1 = readNPY('Results\NPR39x3x3-S1.5,1.5,1.5-Rx,1.5,1.5\results_diff_opt\\optimal_D.npy');
k_39x3x3S15 = readNPY('Results\NPR39x3x3-S15,1.5,1.5-Rx,1.5,1.5\results_diff_opt\\optimal_D.npy');

%Distance from for 9x3x3
pos_from_9x3x3 = x_source_9x3x3 + mean_path_9x3x3;
temp = abs(pos_from_9x3x3 - x_9x3x3m);
x_from_9x3x3 = x_9x3x3m(temp == min(abs(pos_from_9x3x3 - x_9x3x3m)));
idx_dist_9x3x3 = find(x_9x3x3m == x_from_9x3x3);
dist_from_9x3x3 = x_9x3x3m(idx_dist_9x3x3:end)-x_source_9x3x3;

Dx_9x3x3 = Dx_9x3x3(idx_dist_9x3x3:end);

%Distance from for 24x3x3
pos_from_24x3x3S1 = x_source_24x3x3S1 + mean_path_24x3x3S1;
temp = abs(pos_from_24x3x3S1 - x_24x3x3m);
x_from_24x3x3 = x_24x3x3m(temp == min(abs(pos_from_24x3x3S1 - x_24x3x3m)));
idx_dist_24x3x3 = find(x_24x3x3m == x_from_24x3x3);
dist_from_24x3x3 = x_24x3x3m(idx_dist_24x3x3:end)-x_source_24x3x3S1;

Dx_24x3x3S1 = Dx_24x3x3S1(idx_dist_24x3x3:end);

%Distance from for 39x3x3
pos_from_39x3x3S1 = x_source_39x3x3S1 + mean_path_39x3x3S1;
temp = abs(pos_from_39x3x3S1 - x_39x3x3m);
x_from_39x3x3 = x_39x3x3m(temp == min(abs(pos_from_39x3x3S1 - x_39x3x3m)));
idx_dist_39x3x3 = find(x_39x3x3m == x_from_39x3x3);
dist_from_39x3x3 = x_39x3x3m(idx_dist_39x3x3:end)-x_source_39x3x3S1;

Dx_39x3x3S1 = Dx_39x3x3S1(idx_dist_39x3x3:end);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Ratio Dx/Dth for rooms with different length (same source position)
Ratio_9x3x3 = Dx_9x3x3./Dth_9x3x3;
Ratio_24x3x3S1 = Dx_24x3x3S1./Dth_24x3x3;
Ratio_39x3x3S1 = Dx_39x3x3S1./Dth_39x3x3;
Ratio_39x3x3S15 = Dx_39x3x3S15./Dth_39x3x3;

f1 = figure(1);
plot(dist_from_9x3x3, Ratio_9x3x3, ":" , "Color", "#000000",'LineWidth',2.5)
hold on
plot(dist_from_24x3x3, Ratio_24x3x3S1,"-.", "Color", "#000000",'LineWidth',2)
hold on
plot(dist_from_39x3x3, Ratio_39x3x3S1,"-", "Color", "#000000",'LineWidth',0.5)
set(gca,'fontsize',14)
xlabel('distance from source (m)')%,'Interpreter','latex')
ylabel('D_{opt}/D_{th}')%,'Interpreter','latex')
%legend('SPL_{rad}','SPL_{diff}')
f1.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
xlim([dist_from_39x3x3(1) dist_from_39x3x3(end)])
ylim([0.8 2.8])
xticks([dist_from_39x3x3(1) 5 10 15 20 25 30 35])
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Comparison 39x3x3 with S15 and 39x3x3 with S1.5 and 39x3x3 with S19.5

Ratio_39x3x3S15(26:36) = inf;

f2 = figure(2);
plot(x_39x3x3m, Ratio_39x3x3S15,"-.", "Color", "#000000", "LineWidth",2)
hold on
plot(dist_from_39x3x3+1.5, Ratio_39x3x3S1,"-", "Color", "#000000")
set(gca,'fontsize',14)
xlabel('x-axis (m)')%,'Interpreter','latex')
ylabel('D_{opt}/D_{th}')%,'Interpreter','latex')
%legend('SPL_{rad}','SPL_{diff}')
f2.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
xlim([x_39x3x3m(1) x_39x3x3m(end)])
ylim([0.8 2.8])
xticks([x_39x3x3m(1) 5 10 15 20 25 30 35])
hold off
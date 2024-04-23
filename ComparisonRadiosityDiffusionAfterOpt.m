%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Comparison OVER AXIS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Load Matlab
load("results_rad_imp\\SPL_t0_R.mat","SPL_t0_R")
load("results_rad_imp\\T30_x.mat","T30_x")

%Load Python BEFORE
SPL_t0_PY_before = readNPY('results_diff_imp\\spl_rec_x_t0.npy');
x_source = readNPY('results_diff_imp\\x_source.npy');
mean_free_path = readNPY('results_diff_imp\\mean_free_path.npy');
T30_x_PY = readNPY('results_diff_imp\\t30_x.npy');

%Load Python AFTER
x_axis = readNPY('results_diff_opt\\x_axis.npy');
SPL_t0_PY_after = readNPY('results_diff_opt\\spl_rec_x_t0.npy');
Dx = readNPY('results_diff_opt\\Dx.npy');

acc = 0.5;
mean_free_path_rounded = round(mean_free_path/acc)*acc;
if x_source <= mean_free_path_rounded
    pos_from = x_source + mean_free_path_rounded;
    temp = abs(pos_from - x_axis);
    x_from = x_axis(temp == min(abs(pos_from - x_axis)));
    idx_dist = find(x_axis == x_from);
    dist_from = x_axis(idx_dist:end)-x_source;
    SPL_t0_R_nosource = SPL_t0_R(idx_dist:end);
    SPL_t0_PY_before_nosource = SPL_t0_PY_before(idx_dist:end);
    SPL_t0_PY_after_nosource = SPL_t0_PY_after(idx_dist:end);
    Dx_nosource = Dx(idx_dist:end);
    T30_x_nosource= T30_x(idx_dist:end);
    T30_x_PY_nosource= T30_x_PY(idx_dist:end);
else
    pos_source = find(x_axis == x_source);
    pos_source_before = find(x_axis == x_source-mean_free_path_rounded);
    pos_source_after = find(x_axis == x_source+mean_free_path_rounded);
    SPL_t0_R_nosource = SPL_t0_R;
    SPL_t0_R_nosource(pos_source_before+1:pos_source_after-1) = inf;
    SPL_t0_PY_before_nosource = SPL_t0_PY_before;
    SPL_t0_PY_before_nosource(pos_source_before+1:pos_source_after-1) = inf;
    SPL_t0_PY_after_nosource = SPL_t0_PY_after;
    SPL_t0_PY_after_nosource(pos_source_before+1:pos_source_after-1) = inf;
    T30_x_nosource = T30_x;
    T30_x_nosource(pos_source_before+1:pos_source_after-1) = inf;
    T30_x_PY_nosource = T30_x_PY;
    T30_x_PY_nosource(pos_source_before+1:pos_source_after-1) = inf;
    Dx_nosource = Dx;
    Dx_nosource(pos_source_before+1:pos_source_after-1) = inf;
end

%Comparison BEFORE
%Figure 1 SPL
if x_source <= mean_free_path_rounded
    f1 = figure(1);
    plot(dist_from, SPL_t0_R_nosource,"Color", "#000000",'LineWidth',0.5)
    hold on
    plot(dist_from, SPL_t0_PY_before_nosource,"Color", "#000000",'LineWidth',2)
    set(gca,'fontsize',14)
    xlabel('distance from source (m)')
    ylabel('SPL (dB)')
    xlim([dist_from(1) dist_from(end)])
    f1.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
    xticks([dist_from(1) 5 10 15 20 25 30 35])
    hold off
else
    f1 = figure(1);
    plot(x_axis, SPL_t0_R_nosource,"Color", "#000000",'LineWidth',0.5)
    hold on
    plot(x_axis, SPL_t0_PY_before_nosource,"Color", "#000000",'LineWidth',2)
    set(gca,'fontsize',14)
    xlabel('x-axis (m)')
    ylabel('SPL (dB)')
    xlim([x_axis(1) x_axis(end)])
    f1.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
    xticks([x_axis(1) 5 10 15 20 25 30 35])
    hold off
end 

%Figure 2 RT
if x_source <= mean_free_path_rounded
    f2 = figure(2);
    plot(dist_from, T30_x_nosource,"Color", "#000000",'LineWidth',0.5)
    hold on
    plot(dist_from, T30_x_PY_nosource,"Color", "#000000",'LineWidth',2)
    set(gca,'fontsize',14)
    xlabel('distance from source (m)')
    ylabel('RT (s)')
    xlim([dist_from(1) dist_from(end)])
    f2.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
    xticks([dist_from(1) 5 10 15 20 25 30 35])
    hold off
else
    f2 = figure(2);
    plot(x_axis, T30_x_nosource,"Color", "#000000",'LineWidth',0.5)
    hold on
    plot(x_axis, T30_x_PY_nosource,"Color", "#000000",'LineWidth',2)
    set(gca,'fontsize',14)
    xlabel('x-axis (m)')
    ylabel('RT (s)')
    xlim([x_axis(1) x_axis(end)])
    f2.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
    xticks([x_axis(1) 5 10 15 20 25 30 35])
    hold off
end

%Comparison AFTER
if x_source <= mean_free_path_rounded
    f3 = figure(3);
    plot(dist_from, SPL_t0_R_nosource,"Color", "#000000",'LineWidth',0.5)
    hold on
    plot(dist_from, SPL_t0_PY_after_nosource,"Color", "#000000",'LineWidth',2)
    set(gca,'fontsize',14)
    %title('Radiosity and Diffusion SPL at t = 0*lambda','fontsize',12,'Interpreter','latex')
    xlabel('distance from source (m)')%,'Interpreter','latex')
    ylabel('SPL (dB)')%,'Interpreter','latex')
    xlim([dist_from(1) dist_from(end)])
    %ylim([75 95])
    %axis([dist_from(1) dist_from(end) 95 105])
    f3.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
    xticks([dist_from(1) 5 10 15 20 25 30 35])
    hold off
else
    f3 = figure(3);
    plot(x_axis, SPL_t0_R_nosource,"Color", "#000000",'LineWidth',0.5)
    hold on
    plot(x_axis, SPL_t0_PY_after_nosource,"Color", "#000000",'LineWidth',2)
    set(gca,'fontsize',14)
    %title('Radiosity and Diffusion SPL at t = 0*lambda','fontsize',12,'Interpreter','latex')
    xlabel('x-axis (m)')%,'Interpreter','latex')
    ylabel('SPL (dB)')%,'Interpreter','latex')
    xlim([x_axis(1) x_axis(end)])
    %ylim([75 95])
    %axis([dist_from(1) dist_from(end) 95 105])
    f3.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
    xticks([x_axis(1) 5 10 15 20 25 30 35])
    hold off
end

if x_source <= mean_free_path_rounded
    f4 = figure(4);
    plot(dist_from, Dx_nosource,"Color", "#000000",'LineWidth',2)
    set(gca,'fontsize',14)
    %title('Diffusion Coefficient Dx considering direct sound and no source','fontsize',12,'Interpreter','latex')
    xlabel('distance from source (m)')%,'Interpreter','latex')
    ylabel('D_{opt} (m^2/s)')%,'Interpreter','latex')
    f4.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
    xlim([dist_from(1) dist_from(end)])
    xticks([dist_from(1) 5 10 15 20 25 30 35])
else
    f4 = figure(4);
    plot(x_axis, Dx_nosource,"Color", "#000000",'LineWidth',2)
    set(gca,'fontsize',14)
    %title('Diffusion Coefficient Dx considering direct sound and no source','fontsize',12,'Interpreter','latex')
    xlabel('x-axis (m)')%,'Interpreter','latex')
    ylabel('D_{opt} (m^2/s)')%,'Interpreter','latex')
    f4.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
    xlim([x_axis(1) x_axis(end)])
    xticks([x_axis(1) 5 10 15 20 25 30 35])
end
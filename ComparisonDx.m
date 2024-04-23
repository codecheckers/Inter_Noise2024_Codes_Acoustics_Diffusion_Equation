%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Load things

Dx_9x3x3 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR9x3x3 - S1.5,1.5,1.5 - Rx,1.5,1.5\10 - Tenth Opt\results_diff_opt\\Dx_nosource3.npy');
Dx_24x3x3S1 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR24x3x3 - S1.5,1.5,1.5 - Rx,1.5,1.5\4 - Fourth Opt\results_diff_opt\\Dx_nosource3.npy');
Dx_24x3x3S8 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR24x3x3 - S8,1.5,1.5 - Rx,1.5,1.5\1 - First Opt\results_diff_opt\\Dx.npy');
Dx_24x3x3S12 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR24x3x3 - S12,1.5,1.5 - Rx,1.5,1.5\1 - First Opt\results_diff_opt\\Dx.npy');

Dx_39x3x3S1 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x3x3 - S1.5,1.5,1.5 - Rx,1.5,1.5\6 - Sixth Opt\results_diff_opt\\Dx_nosource3.npy');
Dx_39x3x3S15 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x3x3 - S15,1.5,1.5 - Rx,1.5,1.5\1 - First Opt\results_diff_opt\\Dx.npy');
Dx_39x3x3S195 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x3x3 - S19.5,1.5,1.5 - Rx,1.5,1.5\1 - First Opt\results_diff_opt\\Dx.npy');
Dx_39x3x3S24 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x3x3 - S24,1.5,1.5 - Rx,1.5,1.5\1 - First Opt\results_diff_opt\\Dx.npy');
Dx_39x2x2S1 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x2x2 - S1,1,1 - Rx,1,1\1 - First Opt\results_diff_opt\\Dx_nosource3.npy');
Dx_39x4x4S1 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x4x4 - S2,2,2 - Rx,2,2\1 - First Opt\results_diff_opt\\Dx_nosource3.npy');

dist_from_9x3x3 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR9x3x3 - S1.5,1.5,1.5 - Rx,1.5,1.5\10 - Tenth Opt\results_diff_imp\\dist_from3.npy');
dist_from_24x3x3 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR24x3x3 - S1.5,1.5,1.5 - Rx,1.5,1.5\4 - Fourth Opt\results_diff_imp\\dist_from3.npy');
dist_from_39x3x3 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x3x3 - S1.5,1.5,1.5 - Rx,1.5,1.5\6 - Sixth Opt\results_diff_imp\\dist_from3.npy');
dist_from_39x2x2 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x2x2 - S1,1,1 - Rx,1,1\1 - First Opt\results_diff_imp\\dist_from3.npy');
dist_from_39x4x4 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x4x4 - S2,2,2 - Rx,2,2\1 - First Opt\results_diff_imp\\dist_from3.npy');
x_24x3x3m = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR24x3x3 - S1.5,1.5,1.5 - Rx,1.5,1.5\1 - First Opt\results_diff_imp\\x_axis.npy');
x_39x3x3m = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x3x3 - S1.5,1.5,1.5 - Rx,1.5,1.5\1 - First Opt\results_diff_imp\\x_axis.npy');

Dth_9x3x3 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR9x3x3 - S1.5,1.5,1.5 - Rx,1.5,1.5\10 - Tenth Opt\results_diff_imp\\D_th.npy');
Dth_24x3x3 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR24x3x3 - S1.5,1.5,1.5 - Rx,1.5,1.5\4 - Fourth Opt\results_diff_imp\\D_th.npy');
Dth_39x3x3 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x3x3 - S1.5,1.5,1.5 - Rx,1.5,1.5\6 - Sixth Opt\results_diff_imp\\D_th.npy');
Dth_39x2x2 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x2x2 - S1,1,1 - Rx,1,1\1 - First Opt\results_diff_imp\\D_th.npy');
Dth_39x4x4 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x4x4 - S2,2,2 - Rx,2,2\1 - First Opt\results_diff_imp\\D_th.npy');

k_9x3x3 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR9x3x3 - S1.5,1.5,1.5 - Rx,1.5,1.5\10 - Tenth Opt\results_diff_opt\\optimal_D.npy');
k_24x3x3S1 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR24x3x3 - S1.5,1.5,1.5 - Rx,1.5,1.5\4 - Fourth Opt\results_diff_opt\\optimal_D.npy');
k_24x3x3S8 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR24x3x3 - S8,1.5,1.5 - Rx,1.5,1.5\1 - First Opt\results_diff_opt\\optimal_D.npy');
k_24x3x3S12 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR24x3x3 - S12,1.5,1.5 - Rx,1.5,1.5\1 - First Opt\results_diff_opt\\optimal_D.npy');

k_39x3x3S1 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x3x3 - S1.5,1.5,1.5 - Rx,1.5,1.5\6 - Sixth Opt\results_diff_opt\\optimal_D.npy');
k_39x3x3S15 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x3x3 - S15,1.5,1.5 - Rx,1.5,1.5\1 - First Opt\results_diff_opt\\optimal_D.npy');
k_39x3x3S195 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x3x3 - S19.5,1.5,1.5 - Rx,1.5,1.5\1 - First Opt\results_diff_opt\\optimal_D.npy');
k_39x3x3S24 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x3x3 - S24,1.5,1.5 - Rx,1.5,1.5\1 - First Opt\results_diff_opt\\optimal_D.npy');
k_39x2x2S1 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x2x2 - S1,1,1 - Rx,1,1\1 - First Opt\results_diff_opt\\optimal_D.npy');
k_39x4x4S1 = readNPY('C:\Users\20225533\OneDrive\Desktop\PhD\2 - Non Proportionate Rooms comparison\NPR39x4x4 - S2,2,2 - Rx,2,2\1 - First Opt\results_diff_opt\\optimal_D.npy');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Graph Dx rooms with different length (same source position)
f1 = figure(1);
plot(dist_from_9x3x3, Dx_9x3x3)
hold on
plot(dist_from_24x3x3, Dx_24x3x3S1,"red")
hold on
plot(dist_from_39x3x3, Dx_39x3x3S1,"green")
set(gca,'fontsize',14)
xlabel('distance from source (m)')%,'Interpreter','latex')
ylabel('D_{opt} (m^2/s)')%,'Interpreter','latex')
%legend('SPL_{rad}','SPL_{diff}')
f1.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
xlim([dist_from_39x3x3(1) dist_from_39x3x3(end)])
xticks([dist_from_39x3x3(1) 5 10 15 20 25 30 35])
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Ratio graph like Visentin
Ratio_9x3x3 = Dx_9x3x3./Dth_9x3x3;

Ratio_24x3x3S1 = Dx_24x3x3S1./Dth_24x3x3;
Ratio_24x3x3S8 = Dx_24x3x3S8./Dth_24x3x3;
Ratio_24x3x3S12 = Dx_24x3x3S12./Dth_24x3x3;

Ratio_39x3x3S1 = Dx_39x3x3S1./Dth_39x3x3;
Ratio_39x3x3S15 = Dx_39x3x3S15./Dth_39x3x3;
Ratio_39x3x3S195 = Dx_39x3x3S195./Dth_39x3x3;
Ratio_39x3x3S24 = Dx_39x3x3S24./Dth_39x3x3;

Ratio_39x2x2S1 = Dx_39x2x2S1./Dth_39x2x2;
Ratio_39x4x4S1 = Dx_39x4x4S1./Dth_39x4x4;

f2 = figure(2);
plot(dist_from_9x3x3, Ratio_9x3x3, ":" , "Color", "#000000",'LineWidth',2.5)
hold on
plot(dist_from_24x3x3, Ratio_24x3x3S1,"-.", "Color", "#000000",'LineWidth',2)
hold on
plot(dist_from_39x3x3, Ratio_39x3x3S1,"-", "Color", "#000000",'LineWidth',0.5)
set(gca,'fontsize',14)
xlabel('distance from source (m)')%,'Interpreter','latex')
ylabel('D_{opt}/D_{th}')%,'Interpreter','latex')
%legend('SPL_{rad}','SPL_{diff}')
f2.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
xlim([dist_from_39x3x3(1) dist_from_39x3x3(end)])
ylim([0.8 2.8])
xticks([dist_from_39x3x3(1) 5 10 15 20 25 30 35])
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Comparison 39x3x3 with S15 and 24x3x3
Dx_39x3x3S15(26:36) = inf;

f3 = figure(3);
plot(dist_from_24x3x3(4:end)-1.5, Ratio_24x3x3S1(4:end),"-.", "Color", "#000000")
hold on
plot(x_39x3x3m(37:end)-18, Ratio_39x3x3S15(37:end),"-", "Color", "#000000")
set(gca,'fontsize',14)
xlabel('distance from source (m)')%,'Interpreter','latex')
ylabel('D_{opt}/D_{th}')%,'Interpreter','latex')
%legend('SPL_{rad}','SPL_{diff}')
f3.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
xlim([dist_from_39x3x3(1) dist_from_24x3x3(end)-1.5])
ylim([0.8 1.8])
xticks([x_39x3x3m(1) 5 10 15 20])
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Comparison 39x3x3 with S15 and 39x3x3 with S1.5 and 39x3x3 with S19.5

Ratio_39x3x3S15(26:36) = inf;
Ratio_39x3x3S195(34:46) = inf;

f4 = figure(4);
plot(x_39x3x3m, Ratio_39x3x3S195,":", "Color", "#000000", "LineWidth",2)
hold on
plot(x_39x3x3m, Ratio_39x3x3S15,"-.", "Color", "#000000", "LineWidth",2)
hold on
plot(dist_from_39x3x3+1.5, Ratio_39x3x3S1,"-", "Color", "#000000")
set(gca,'fontsize',14)
xlabel('x-axis (m)')%,'Interpreter','latex')
ylabel('D_{opt}/D_{th}')%,'Interpreter','latex')
%legend('SPL_{rad}','SPL_{diff}')
f4.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
xlim([x_39x3x3m(1) x_39x3x3m(end)])
ylim([0.8 2.8])
xticks([x_39x3x3m(1) 5 10 15 20 25 30 35])
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Comparison of C2 constants compared to the position of the source in  a
%39x3x3 room

pos_sou_39x3x3 = [1.5 15 19.5 24];
C2_vect_39x3x3 = [k_39x3x3S1(1) k_39x3x3S15(1) k_39x3x3S195(1) k_39x3x3S24(1)];


f5 = figure(5);
plot(pos_sou_39x3x3, C2_vect_39x3x3,"-.", "Color", "#000000")
hold on
set(gca,'fontsize',14)
xlabel('x-axis (m)')%,'Interpreter','latex')
ylabel('C_2 constant')%,'Interpreter','latex')
%legend('SPL_{rad}','SPL_{diff}')
f5.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
xlim([x_39x3x3m(1) x_39x3x3m(end)])
%ylim([0.8 2.8])
xticks(x_39x3x3m(1):3:x_39x3x3m(end))
hold off

%Find equation of line passing trhough three points;
P1_39x3x3 = [pos_sou_39x3x3(1) k_39x3x3S1(1)];
P2_39x3x3 = [pos_sou_39x3x3(2) k_39x3x3S15(1)];
P3_39x3x3 = [pos_sou_39x3x3(3) k_39x3x3S195(1)];

coefficients_39x3x3 = polyfit([P1_39x3x3(1) P2_39x3x3(1) P3_39x3x3(1)], [P1_39x3x3(2) P2_39x3x3(2) P3_39x3x3(2)],2);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Comparison 39x3x3 with S1.5, 39x4x4 with S2 and 39x2x2 with S1
f6 = figure(6);
plot(dist_from_39x3x3, Ratio_39x3x3S1,"-", "Color", "#000000",'LineWidth',0.5)
hold on
plot(dist_from_39x4x4, Ratio_39x4x4S1,"-", "Color", "#000000",'LineWidth',2)
hold on
plot(dist_from_39x2x2, Ratio_39x2x2S1,"-", "Color", "#000000",'LineWidth',4)
set(gca,'fontsize',14)
xlabel('distance from source (m)')%,'Interpreter','latex')
ylabel('D_{opt}/D_{th}')%,'Interpreter','latex')
%legend('SPL_{rad}','SPL_{diff}')
f6.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
xlim([x_39x3x3m(1) x_39x3x3m(end)])
ylim([0.8 5])
xticks([x_39x3x3m(1) 5 10 15 20 25 30 35])
hold off


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Comparison of C2 constants compared to the position of the source
area_cross = [4 9 16]; %[Area_cross_39x2x2 Area_cross_39x3x3 Area_cross_39x4x4]
C2_area_cross = [k_39x2x2S1(1) k_39x3x3S1(1) k_39x4x4S1(1)];

f7 = figure(7);
plot(area_cross, C2_area_cross,"-.", "Color", "#000000")
hold on
set(gca,'fontsize',14)
xlabel('cross-section (m^2)')%,'Interpreter','latex')
ylabel('C_2 constant')%,'Interpreter','latex')
%legend('SPL_{rad}','SPL_{diff}')
f7.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
%xlim([x_39x3x3m(1) x_39x3x3m(end)])
%ylim([0.8 2.8])
xticks([area_cross(1) area_cross(2) area_cross(end)])
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Comparison of C2 constants compared to the position of the source in  a
%24x3x3 room

pos_sou_24x3x3 = [1.5 8 12];
C2_vect_24x3x3 = [k_24x3x3S1(1) k_24x3x3S8(1) k_24x3x3S12(1)];


f8 = figure(8);
plot(pos_sou_24x3x3, C2_vect_24x3x3,"-.", "Color", "#000000")
hold on
set(gca,'fontsize',14)
xlabel('x-axis (m)')%,'Interpreter','latex')
ylabel('C_2 constant')%,'Interpreter','latex')
%legend('SPL_{rad}','SPL_{diff}')
f8.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
xlim([x_24x3x3m(1) x_24x3x3m(end)])
%ylim([0.8 2.8])
xticks(x_24x3x3m(1):3:x_24x3x3m(end))
hold off

%Find equation of line passing trhough three points;
P1_24x3x3 = [pos_sou_24x3x3(1) k_24x3x3S1(1)];
P2_24x3x3 = [pos_sou_24x3x3(2) k_24x3x3S8(1)];
P3_24x3x3 = [pos_sou_24x3x3(3) k_24x3x3S12(1)];

coefficients_24x3x3 = polyfit([P1_24x3x3(1) P2_24x3x3(1) P3_24x3x3(1)], [P1_24x3x3(2) P2_24x3x3(2) P3_24x3x3(2)],2);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Comparison of C2 constants when changing the length of the room from 9x3x3
%to 39x3x3

room_length = [9 24 39];
C2_vect_room_length = [k_9x3x3(1) k_24x3x3S1(1) k_39x3x3S1(1)];


f9 = figure(9);
plot(room_length, C2_vect_room_length,"-.", "Color", "#000000")
hold on
set(gca,'fontsize',14)
xlabel('x-axis (m)')%,'Interpreter','latex')
ylabel('C_2 constant')%,'Interpreter','latex')
%legend('SPL_{rad}','SPL_{diff}')
f9.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
xlim([x_39x3x3m(1) x_39x3x3m(end)])
%ylim([0.8 2.8])
xticks(x_39x3x3m(1):3:x_39x3x3m(end))
hold off


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Comparison 24x3x3 with S1.5 and 24x3x3 with S8 and 24x3x3 with S12

Ratio_24x3x3S8(12:22) = inf;
Ratio_24x3x3S12(20:30) = inf;

f10 = figure(10);
plot(x_24x3x3m, Ratio_24x3x3S12,":", "Color", "#000000", "LineWidth",2)
hold on
plot(x_24x3x3m, Ratio_24x3x3S8,"-.", "Color", "#000000", "LineWidth",2)
hold on
plot(dist_from_24x3x3+1.5, Ratio_24x3x3S1,"-", "Color", "#000000")
set(gca,'fontsize',14)
xlabel('x-axis (m)')%,'Interpreter','latex')
ylabel('D_{opt}/D_{th}')%,'Interpreter','latex')
%legend('SPL_{rad}','SPL_{diff}')
f10.Position = [500 500 340 250]; % Position (first two-values) and Size (last two-values)
xlim([x_24x3x3m(1) x_24x3x3m(end)])
ylim([0.8 1.8])
xticks([x_24x3x3m(1) 5 10 15 20])
hold off

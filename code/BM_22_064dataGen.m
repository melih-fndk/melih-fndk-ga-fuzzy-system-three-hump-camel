clc; clear;

N = 30; % raporda küçük tutmak hesap kolaylaştırır
x1 = -5 + 10*rand(N,1);
x2 = -5 + 10*rand(N,1);
y  = camel3([x1 x2]);

TrainData = [x1 x2 y];
writematrix(TrainData, "BM_22_064_Train.xlsx");
save("BM_22_064_Train.mat","TrainData");

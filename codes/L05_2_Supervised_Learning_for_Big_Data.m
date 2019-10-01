%% Naive Approach
clear all
close all
clc

N=100000;
d=1000;
X = rand(N, d);
R = X(:,1) + 2*X(:,2) + X(:,3) + 2*X(:,4) + X(:,5) + normrnd(0,0.01);

tic
Q = X'*X;
toc

tic
S = inv(Q);
toc

tic
T = S*X';
toc

clear X

tic
theta = T*R;
toc

%% Improved Order of Operations
clear all
close all
clc

N=100000;
d=1000;
X = rand(N, d);
R = X(:,1) + 2*X(:,2) + X(:,3) + 2*X(:,4) + X(:,5) + normrnd(0,0.01);

tic
Q = X'*X;
toc

tic
S = X'*R;
toc

clear X

tic
T = inv(Q);
toc

tic
theta = T*S;
toc

%% Variable Selection
clear all
close all
clc

N=100000;
d=1000;
X = rand(N, d);
R = X(:,1) + 2*X(:,2) + X(:,3) + 2*X(:,4) + X(:,5) + normrnd(0,0.01);

tic
[rho, pvalue] = corr(X, R);
toc

% select variables that are significant within 5% range
idx = find(pvalue < 0.05);
X = X(:, idx);

tic
Q = X'*X;
toc

tic
S = X'*R;
toc

clear X;

tic
T = inv(Q);
toc

tic
theta = T*S;
toc

%% GPU Computing
clear all
close all
clc

N=100000;
d=1000;
X = rand(N, d);
R = X(:,1) + 2*X(:,2) + X(:,3) + 2*X(:,4) + X(:,5) + normrnd(0,0.01);

tic
GX = gpuArray(X);
GR = gpuArray(R);
toc

clear X

tic
GQ = GX'*GX;
toc

tic
GS = GX'*GR;
toc

tic
Q = gather(GQ);
S = gather(GS);
toc

tic
T = inv(Q);
toc

tic
theta = T*S;
toc

%% Ensemble Method
clear all
close all
clc

N=100000;
d=1000;
X = rand(N, d);
R = X(:,1) + 2*X(:,2) + X(:,3) + 2*X(:,4) + X(:,5) + normrnd(0,0.01);

idx = randperm(N);

for i=1:100
    sub_index = idx(1000*(i-1)+1 : 1000*i);
    Xsub = X(sub_index,:);
    Rsub = R(sub_index);
    
    if i==1; tic; end
    Q = Xsub'*Xsub;
    if i==1; toc; end

    if i==1; tic; end
    S = Xsub'*Rsub;
    if i==1; toc; end

    clear Xsub Rsub

    if i==1; tic; end
    T = inv(Q);
    if i==1; toc; end

    if i==1; tic; end
    theta(:,i) = T*S;
    if i==1; toc; end
end

% simple model averaging
theta = mean(theta');

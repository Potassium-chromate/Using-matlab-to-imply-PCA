%%
clear
close
clc

m = 100; 
n = 10; 
A = rand(n, 4); %rank = 10
B = rand(4,m);  %rank = 4
X = A*B;        %rank(AB)<= min(rank(A) , rank(B))
row_means = mean(X, 2);

X_centered = bsxfun(@minus, X, row_means);
C = X_centered*transpose(X_centered); %Covariance matrix

[V, D] = eig(C); %[eig_vector , eig_value]
eig_val = diag(D);
[~, sorted_idx] = sort(eig_val, 'descend');
top_eig_idx = sorted_idx(1:4); %get top four eig_value
top_eig_vec = V(:, top_eig_idx); %get top four eig_vector

Y = transpose(top_eig_vec)*X_centered;

Xc = top_eig_vec*Y; %top_eig_vec is the basis matrix
Xc = bsxfun(@plus, Xc, row_means);
Result = X-Xc;
%Result(Result>-0.001 & Result<0.001) = 0;

% plot the four curves of C
figure;
plot(top_eig_vec);
title('eigen_vector');

% plot the difference image Xc - X as a 2D map
figure;
imagesc(Result);
colorbar;
title('Difference Image Xc - X');
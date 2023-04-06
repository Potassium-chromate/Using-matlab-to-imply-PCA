%%
clc; clear; close;

A = imread('original_image.jpg');
dims = size(A);
A = double(reshape(A, [], 3))';

row_means = mean(A, 2);
A_re_centered = A - row_means;
C = A_re_centered * A_re_centered'; % Covariance matrix

[V, D] = eig(C); %[vector , eigen value]
[~, sorted_idx] = sort(diag(D), 'descend');
top_eig_vec = V(:, sorted_idx(1:2)); %get top 2 eigenvalue

A_compress = top_eig_vec' * A_re_centered; 
A_decompress = top_eig_vec * A_compress + row_means; %CY+d

A_decompress = uint8(reshape(A_decompress', dims));
A = uint8(reshape(A', dims));

gray_1 = uint8(reshape(A_compress(1, :), dims(1), dims(2))); %band1
gray_2 = uint8(reshape(A_compress(2, :), dims(1), dims(2))); %band2

% Calculate the difference between the original and decompressed images
difference = abs(double(A) - double(A_decompress));

% Convert the difference back to uint8
difference = uint8(difference);

% Multiply the difference by 10
difference_10 = difference * 10;

% Create a new figure window and set its size
figure('Position', [100, 100, 2*dims(2), 2*dims(1)]);

% Plot the original image
subplot(3, 2, 1);
imshow(A);
title('Original Image');

% Plot the Decompressed image
subplot(3, 2, 2);
imshow(A_decompress);
title('Decompressed Image');

% Plot the gray_1 image
subplot(3, 2, 3);
imshow(gray_1);
title('Gray 1');

% Plot the gray_2 image
subplot(3, 2, 4);
imshow(gray_2);
title('Gray 2');

% Plot the difference image
subplot(3, 2, 5);
imshow(difference);
title('difference');

% Plot the difference_10 image
subplot(3, 2, 6);
imshow(difference_10);
title('difference_10');
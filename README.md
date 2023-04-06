# Code 1: PCA on Generated Dataset

This repository contains a MATLAB script that demonstrates Principal Component Analysis (PCA) on a generated dataset. PCA is a widely-used technique for dimensionality reduction and data compression, which helps in visualizing high-dimensional data and reducing noise.

## Files
`main1.m`: The main MATLAB script that performs PCA on the generated dataset, visualizes the top eigenvectors, and computes the difference between the original and reconstructed data.

## Description
This code demonstrates that a matrix with rank = 4 can be 100% restored using the top four eigenvectors, as PCA preserves the subspace in which the original data lies. The script illustrates the following:
+ How to generate a matrix of `size = 10x100` with `rank =  4`.
+ Performing PCA and selecting the top four eigenvectors.
+ Reconstructing the original matrix from the PCA-compressed representation.
+ Comparing the decompressed matrix with the original matrix to show that they are identical.

## Usage
1. Open MATLAB and navigate to the repository folder.
2. Run the `main1.m` script in MATLAB.

The script will generate two figures:

+ The first figure displays the top 4 eigenvectors.
+ The second figure displays the difference between the original and reconstructed matrices as a 2D map.

## Requirements
+ MATLAB (tested with R2021a or later)

## Result
### The top four eigen vector
![Alt Text](https://github.com/Potassium-chromate/Using-matlab-to-imply-PCA/blob/main/Picture/main1/top%20four%20eigenvector.png)
### Compare the decompressed matrix with original matrix
![Alt Text](https://github.com/Potassium-chromate/Using-matlab-to-imply-PCA/blob/main/Picture/main1/Compare.png)

## License
+ This project is licensed under the MIT License



# Code 2: PCA on Image Data
This repository contains a MATLAB script that demonstrates how to compress and decompress an image using Principal Component Analysis (PCA). The script illustrates the process of rearranging the image matrix, applying PCA, and reconstructing the image from the compressed representation.

## Files
`main2.m`: The MATLAB script that compresses and decompresses an image using PCA. And it will show you the how difference of the result compare to the original picture

## Description
1. The original image is read into MATLAB and reshaped into a `3xN` matrix, where `N` is the total number of pixels in the image.
2. The mean is calculated for each row (color channel) and subtracted to center the data.
3. The covariance matrix is calculated using the centered data.
4. The eigenvectors and eigenvalues of the covariance matrix are calculated.
5. The top 2 eigenvectors are selected for compression.
6. The image data is projected onto the top eigenvectors to create a compressed representation.
7. The compressed data is decompressed by projecting it back onto the original subspace and adding the mean back.
8. The decompressed image is reshaped back into the original dimensions and displayed alongside the original image for comparison.

## Usage
1. Open MATLAB and navigate to the repository folder.
2. Add an image file named 'original_image.jpg' to the repository folder.
3. Run the `main2.m` script in MATLAB.

The script will generate a figure with six subplots:
+ The first subplot displays the original image.
+ The second subplot displays the decompressed image.
+ The third and fourth subplots display the grayscale components of the compressed image.
+ The fifth subplot displays the difference between the original and decompressed images.
+ The sixth subplot displays the difference multiplied by a factor of 10 to enhance the contrast.

## Result
### Original picture
![Alt Text](https://github.com/Potassium-chromate/Using-matlab-to-imply-PCA/blob/main/Picture/main2/eaxmple_1.jpg)
### Compare the decompressed picture with original matrix
![Alt Text](https://github.com/Potassium-chromate/Using-matlab-to-imply-PCA/blob/main/Picture/main2/Compare_example1.png)
### Choose the two bands with the highest and second-highest eigenvalues. 
![Alt Text](https://github.com/Potassium-chromate/Using-matlab-to-imply-PCA/blob/main/Picture/main2/Compare_eigenvalue_example1.png)
### Use grayscale images to visualize the differences more clearly. 
![Alt Text](https://github.com/Potassium-chromate/Using-matlab-to-imply-PCA/blob/main/Picture/main2/Compare_gray_example1.png)

## License
+ This project is licensed under the MIT License

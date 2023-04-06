# Principal Component Analysis (PCA) Demonstration

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

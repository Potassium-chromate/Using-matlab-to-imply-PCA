# Principal Component Analysis (PCA) Demonstration

This repository contains a MATLAB script that demonstrates Principal Component Analysis (PCA) on a generated dataset. PCA is a widely-used technique for dimensionality reduction and data compression, which helps in visualizing high-dimensional data and reducing noise.

## Files
`main1.m`: The main MATLAB script that performs PCA on the generated dataset, visualizes the top eigenvectors, and computes the difference between the original and reconstructed data.

## Description
The code is to used to demostrate a matrix with rank = 4 can be 100% restored using top four eigenvectors is because PCA preserves the subspace in which the original data lies.

## Usage
1. Open MATLAB and navigate to the repository folder.
2. Run the `main1.m` script in MATLAB.

The script will generate two figures:

+ The first figure displays the top 4 eigenvectors.
+ The second figure displays the difference between the original and reconstructed matrices as a 2D map.

## Requirements
+ MATLAB (tested with R2021a or later)

## License
+ This project is licensed under the MIT License

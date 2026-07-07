# Solution to MATLAB and Simulink Challenge project <'project number'> <'Project Title'>
This is a template repo for MATLAB and Simulink Challenge Project solutions.

Please add the following items:

[Program link](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub)

[Project description link]<Add link to the project description from the list of projects above>


# Project details
This implementation leverages deep learning to automate human activity classification. The core architecture consists of:

Feature Extraction: Two layers of 1D Convolution with Batch Normalization and ReLU activation to identify local temporal patterns in sensor data.

Dimensionality Reduction: Global Average Pooling to reduce parameter count and mitigate overfitting.

Classification: Fully Connected layers mapping extracted features to the six distinct activity classes.

Preprocessing: Robust normalization using training statistics to ensure model stability across varying sensor inputs.

# How to run section
Prerequisites:

MATLAB (R2023b or later recommended)

Deep Learning Toolbox

Steps:
1. Clone the repository:

    
    git clone https://github.com/BHOGALA-SRIKA/ActivityRecognition-1DCNN.git

2. Open MATLAB and navigate to the project root folder.

3. Run the script: Open ```src/main.mlx``` in the Live Editor and click Run.

4. The script will automatically load the data, train the model, and display the final classification accuracy along with a confusion matrix.

# Demo/Results
Training on single CPU.
|========================================================================================|
|  Epoch  |  Iteration  |  Time Elapsed  |  Mini-batch  |  Mini-batch  |  Base Learning  |
|         |             |   (hh:mm:ss)   |   Accuracy   |     Loss     |      Rate       |
|========================================================================================|
|       1 |           1 |       00:00:11 |       14.06% |       1.9668 |          0.0100 |
|       1 |          50 |       00:00:20 |       50.00% |       1.0354 |          0.0100 |
|       1 |         100 |       00:00:26 |       50.00% |       0.9359 |          0.0100 |
|       2 |         150 |       00:00:33 |       54.69% |       0.9034 |          0.0100 |
|       2 |         200 |       00:00:39 |       57.81% |       0.8815 |          0.0100 |
|       3 |         250 |       00:00:46 |       53.12% |       0.8753 |          0.0100 |
|       3 |         300 |       00:00:53 |       59.38% |       0.8549 |          0.0100 |
|       4 |         350 |       00:01:00 |       48.44% |       0.8552 |          0.0100 |
|       4 |         400 |       00:01:06 |       54.69% |       0.8816 |          0.0100 |
|       4 |         450 |       00:01:13 |       56.25% |       0.8104 |          0.0100 |
|       5 |         500 |       00:01:19 |       48.44% |       0.7977 |          0.0100 |
|       5 |         550 |       00:01:28 |       70.31% |       0.6983 |          0.0100 |
|       6 |         600 |       00:01:34 |       62.50% |       0.8406 |          0.0100 |
|       6 |         650 |       00:01:40 |       56.25% |       0.7379 |          0.0100 |
|       7 |         700 |       00:01:47 |       59.38% |       0.8417 |          0.0100 |
|       7 |         750 |       00:01:56 |       51.56% |       0.8658 |          0.0100 |
|       8 |         800 |       00:02:03 |       65.62% |       0.7404 |          0.0100 |
|       8 |         850 |       00:02:10 |       70.31% |       0.6650 |          0.0100 |
|       8 |         900 |       00:02:16 |       68.75% |       0.6448 |          0.0100 |
|       9 |         950 |       00:02:22 |       62.50% |       0.7835 |          0.0100 |
|       9 |        1000 |       00:02:28 |       54.69% |       0.8024 |          0.0100 |
|      10 |        1050 |       00:02:38 |       64.06% |       0.7195 |          0.0100 |
|      10 |        1100 |       00:02:48 |       64.06% |       0.7453 |          0.0100 |
|      11 |        1150 |       00:02:53 |       62.50% |       0.7083 |          0.0100 |
|      11 |        1200 |       00:02:59 |       48.44% |       0.9232 |          0.0100 |
|      11 |        1250 |       00:03:05 |       64.06% |       0.7068 |          0.0100 |
|      12 |        1300 |       00:03:10 |       48.44% |       0.9349 |          0.0100 |
|      12 |        1350 |       00:03:16 |       54.69% |       0.7822 |          0.0100 |
|      13 |        1400 |       00:03:22 |       51.56% |       0.7932 |          0.0100 |
|      13 |        1450 |       00:03:27 |       71.88% |       0.6209 |          0.0100 |
|      14 |        1500 |       00:03:33 |       57.81% |       0.7663 |          0.0100 |
|      14 |        1550 |       00:03:39 |       70.31% |       0.7361 |          0.0100 |
|      15 |        1600 |       00:03:45 |       59.38% |       0.7377 |          0.0100 |
|      15 |        1650 |       00:03:53 |       50.00% |       0.8471 |          0.0100 |
|      15 |        1700 |       00:04:00 |       62.50% |       0.6634 |          0.0100 |
|      15 |        1710 |       00:04:02 |       65.62% |       0.5753 |          0.0100 |
|========================================================================================|
Training finished: Max epochs completed.

<img width="1166" height="568" alt="image" src="https://github.com/user-attachments/assets/2df6512b-0383-4332-baae-18b51e169799" />

Final Model Accuracy: 69.19%


<img width="504" height="378" alt="image" src="https://github.com/user-attachments/assets/cdcbe9f7-34b0-4992-9415-5bea5e670d95" />


  
# References
1. **Dataset:** Anguita, D., et al. (2013). "A Public Domain Dataset for Human Activity Recognition Using Smartphones." ESANN 2013.
2. **Methodology:** Kiranyaz, S., et al. (2015). "Real-Time Patient-Specific ECG Classification by 1D Convolutional Neural Networks." IEEE Transactions on Biomedical Engineering.
3. **Tools:** MathWorks, "Deep Learning Toolbox," [Online]. Available: https://www.mathworks.com/help/deeplearning/

# Solution to MATLAB-Simulink Challenge 
# Project #232 : Human Motion Recognition Using IMUs


[Program link](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub)

[Project #232 Description](https://github.com/mathworks/MATLAB-Simulink-Challenge-Project-Hub/tree/main/projects/Human%20Motion%20Recognition%20Using%20IMUs)

# Project details
This implementation leverages deep learning to automate human activity classification. The core architecture consists of:

Feature Extraction: Two layers of 1D Convolution with Batch Normalization and ReLU activation to identify local temporal patterns in sensor data.

Dimensionality Reduction: Global Average Pooling to reduce parameter count and mitigate overfitting.

Classification: Fully Connected layers mapping extracted features to the six distinct activity classes.

Preprocessing: Robust normalization using training statistics to ensure model stability across varying sensor inputs. All 9 inertial signal channels (body acceleration, body gyroscope, and total acceleration, each along x/y/z axes) are used as multi-channel input to the network.


# Methodology

This project applies a 1D Convolutional Neural Network (1D-CNN) to classify human activities from smartphone IMU signals, following the general approach of Kiranyaz et al. (2015), who demonstrated 1D-CNNs as effective for extracting temporal patterns directly from raw time-series sensor data without hand-crafted features. The network takes all 9 inertial signal channels (body acceleration, body gyroscope, and total acceleration, each along x/y/z) as multi-channel input sequences of length 128. Two convolutional blocks (convolution + batch normalization + ReLU) extract local temporal features, followed by global average pooling to reduce dimensionality and limit overfitting, and fully connected layers that map features to the six activity classes (walking, walking upstairs, walking downstairs, sitting, standing, laying). Training used stochastic gradient descent with momentum (SGDM), a learning rate of 0.01, batch size 64, over 15 epochs. Input features were normalized channel-wise using training-set mean and standard deviation, applied identically to the test set to prevent data leakage.


# How to run section
Prerequisites:
- MATLAB (R2023b or later recommended)
- Deep Learning Toolbox
- Statistics and Machine Learning Toolbox

Steps:
1. Clone the repository:

    
    git clone https://github.com/BHOGALA-SRIKA/ActivityRecognition-1DCNN.git

2. Open MATLAB and navigate to the project root folder.

3. Run the script: Open ```src/main.mlx``` in the Live Editor and click Run.

4. The script will automatically load the data, train the model, save the trained network to `models/trained_net.mat`, and display the final classification accuracy along with a confusion matrix.
   
5. To verify results without retraining, open `tests/verify_pipeline.m` and run it — it loads the saved model and reports a PASS/FAIL against a minimum accuracy threshold.

# Demo/Results
Training on single CPU.

Training finished: Max epochs completed.

Epoch: 15 of 15

Iteration: 1710 of 1710 

Iterations per Epoch: 114

<img width="829" height="527" alt="image" src="https://github.com/user-attachments/assets/845b2af6-4eda-4f48-8f78-fdb3d1fac14c" />



Final Model Accuracy: 91.92%


<img width="504" height="378" alt="image" src="https://github.com/user-attachments/assets/454c60be-f2bc-4098-bd90-0670e9ce6169" />



  
# References
1. **Dataset:** Anguita, D., et al. (2013). "A Public Domain Dataset for Human Activity Recognition Using Smartphones." ESANN 2013.
2. **Methodology:** Kiranyaz, S., et al. (2015). "Real-Time Patient-Specific ECG Classification by 1D Convolutional Neural Networks." IEEE Transactions on Biomedical Engineering.
3. **Tools:** MathWorks, "Deep Learning Toolbox," [Online]. Available: https://www.mathworks.com/help/deeplearning/


## Full Report
A detailed project report including methodology, architecture, results, and limitations is available in [`docs/report`](docs/report.docx).


## AI Assistance
Generative AI was used to help debug data reshaping logic, restructure the model to use all 9 IMU signal channels instead of one, and draft the verification test script. All code was reviewed, tested, and understood before inclusion, per the program's Generative AI Guidelines.

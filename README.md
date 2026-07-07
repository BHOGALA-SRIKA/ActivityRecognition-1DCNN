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

Training finished: Max epochs completed.

<img width="1166" height="568" alt="image" src="https://github.com/user-attachments/assets/2df6512b-0383-4332-baae-18b51e169799" />

Final Model Accuracy: 69.19%


<img width="504" height="378" alt="image" src="https://github.com/user-attachments/assets/cdcbe9f7-34b0-4992-9415-5bea5e670d95" />


  
# References
1. **Dataset:** Anguita, D., et al. (2013). "A Public Domain Dataset for Human Activity Recognition Using Smartphones." ESANN 2013.
2. **Methodology:** Kiranyaz, S., et al. (2015). "Real-Time Patient-Specific ECG Classification by 1D Convolutional Neural Networks." IEEE Transactions on Biomedical Engineering.
3. **Tools:** MathWorks, "Deep Learning Toolbox," [Online]. Available: https://www.mathworks.com/help/deeplearning/

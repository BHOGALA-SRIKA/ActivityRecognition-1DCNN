%% verify_pipeline.m
% Quick verification script: loads the trained model and test data,
% runs classification, and checks accuracy meets a minimum bar.
% Does NOT retrain — verifies the already-saved model in models/.

clear; clc;

modelPath = fullfile('..','models','trained_net.mat');
assert(isfile(modelPath), 'Trained model not found. Run src/main.mlx first.');
loaded = load(modelPath, 'net', 'mu', 'sig');

signalNames = {'body_acc_x','body_acc_y','body_acc_z', ...
               'body_gyro_x','body_gyro_y','body_gyro_z', ...
               'total_acc_x','total_acc_y','total_acc_z'};
numChannels = numel(signalNames);
seqLength = 128;

testDir = fullfile('..','data','UCI HAR Dataset','test','Inertial Signals');
testLabelPath = fullfile('..','data','UCI HAR Dataset','test','y_test.txt');

labelsTest = readmatrix(testLabelPath);
numTestObs = size(labelsTest, 1);

rawTest = zeros(numTestObs, numChannels, seqLength);
for c = 1:numChannels
    testFile = fullfile(testDir, [signalNames{c} '_test.txt']);
    rawTest(:, c, :) = readmatrix(testFile);
end

rawTest = (rawTest - loaded.mu) ./ loaded.sig;

XTest = cell(numTestObs, 1);
for i = 1:numTestObs
    XTest{i} = squeeze(rawTest(i, :, :));
end
YTest = categorical(labelsTest);

YPred = classify(loaded.net, XTest);
accuracy = sum(YPred == YTest) / numel(YTest);

fprintf('Verification Accuracy: %.2f%%\n', accuracy * 100);

minAcceptable = 0.80;  % model runs ~90%+, so 80% is a safe pass bar
if accuracy >= minAcceptable
    fprintf('PASS: Model meets minimum accuracy threshold (%.0f%%).\n', minAcceptable*100);
else
    fprintf('FAIL: Model below minimum accuracy threshold (%.0f%%).\n', minAcceptable*100);
end

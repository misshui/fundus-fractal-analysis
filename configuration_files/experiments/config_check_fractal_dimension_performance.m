
% CONFIG_CHECK_FRACTAL_DIMENSION_PERFORMANCE
% -------------------------------------------------------------------------
% This script is called by script_check_fractal_dimension_performance
% to set up the parameters that we need for applying cross-validation
% -------------------------------------------------------------------------

% Training set name
dataset_name = 'MESSIDOR';

% Path where images and masks are saved
root_path         = '/Users/ignaciorlando/Documents/_fractal';
% Path where segmentations, features, etc are saved
data_path         = '/Users/ignaciorlando/Documents/_fractal';
% Results path
results_path      = '/Users/ignaciorlando/Dropbox/RetinalImaging/Writing/fractal2017paper/experiments/individual-fractal-dimensions';
% Output figures path
output_fig_path   = '/Users/ignaciorlando/Dropbox/RetinalImaging/Writing/fractal2017paper/experiments';

% Fractal dimension
fractal_dimensions = { ...
    'box' ...
    'information' ...
    'correlation' ...
};
list_fractal_dimensions_tags = { ...
    '$D_B$' ...
    '$D_I$' ...
    '$D_C$' ...
};

% Features to be used
list_of_features_to_try = {...
    'fractal-dimension-from-vessels' ... % Fractal dimension from vessels
    'fractal-dimension-from-skeleton' ... % Fractal dimension from skeleton
};

list_of_features_to_try_tags = {...
    'Segm.' ... % Fractal dimension from vessels
    'Skel.' ... % Fractal dimension from skeleton
};

% % Problems to solve
% list_of_problems_to_try = {
%     'dr-screening' ...  % DR screening: R0 vs. R1, R2, R3 and R4
%     'need-to-referral' ... % Need to referral: R0 and R1 vs. R2, R3 and R4
%     'proliferative' ... % Proliferative screening: R0, R1, R2 and R3 vs. R4
%     'od-neovascularizations' ... % OD neovascularizations
% };
% list_of_problems_to_try_tags = {
%     'DR screening' ...  % DR screening: R0 vs. R1, R2, R3 and R4
%     'Need for referral' ... % Need to referral: R0 and R1 vs. R2, R3 and R4
%     'Proliferative DR detection' ... % Proliferative screening: R0, R1, R2 and R3 vs. R4
%     'OD neovascularizations' ... % OD neovascularizations
% };

% Problems to solve
list_of_problems_to_try = {
    'proliferative' ... % Proliferative screening: R0, R1, R2 and R3 vs. R4
    'od-neovascularizations' ... % OD neovascularizations
};
list_of_problems_to_try_tags = {
    'PDR detection' ... % Proliferative screening: R0, R1, R2 and R3 vs. R4
    'OD neovascularizations' ... % OD neovascularizations
};

% Classifier
classifier = 'l1-logistic-regression'; % L1 logistic regression
%classifier = 'l2-logistic-regression'; % L2 logistic regression

% Number of folds
num_of_folds = 5;
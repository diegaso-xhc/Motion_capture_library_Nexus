% Developed by Diego Hidalgo C. (2020)
% This file can only be used for research purposes. For commercial
% purposes, please contact the author (diego.hidalgo-carvajal@tum.de)

clear all
close all
clc

dependencies; % Load required functions and files.

%%%%%%%%%%%%%%% Example of how to post process data %%%%%%%%%%%%%%%%%%%%%%%

%%%% Simply uncomment the case that best suits you and comment the other
%%%% one.

% Case 1: NEXUS is open and available

% % !  Select the study which needs post processing on NEXUS before using 
% % this script.   !
% % If the study is already saved, simply load the study as shown on second
% % part of this tutorial.
% 
% st = Study(); % Create a Study object (see Study class for reference).
%               % All relevant information related to the recording
%               % session can be accessed through this object.
% 
% st % General information regarding the study can be found by executing this command
% 
% st.plot_traj(); % This command plots the whole study in matlab. You can use this to double check if the selected study is the desired one.
% st.plot_mk(1, 24, 0); % This command plots the trajectories overtime as 3 2D-plots (one for each axis). Here you plot the marker 24 of subject 1.
% 
% st.subjects{1}.build_results(); % This line is required to build the results of the HAND VICON script. Ask Diego for more help.
% st.plot_traj_ax(1, 100); % Plots the axes of reference on the hand during the study. 100 is a scaling factor for the axes visibility.
% st.plot_snapshot_ax(1, 100, 400, 450); % Plots the hand with its axes only during pre specified frames of the recording.
% st.plot_traj_sub(2); % plots the visualization of the specified subjects motion.
% 
% % It is possible to access each one of the subjects individually and access
% % further functionalities. Here are some examples:
% st.subjects{1}.get_lists(); % Retrieve the information regardin the marker names and order of subject 1. The order and names are the same as on the VICON capture system.
% st.subjects{1}.list_mks() % Prints the list of markers of the subject
% 
% % You can access each marker individually as well and use the class' marker
% % properties.
% st.subjects{1}.markers{1} % This will print the information of marker 1 of subject 1. 
% st.subjects{1}.markers{1}.traj % This will print the trajectory of marker 1 (subject 1) as a n_samples x 3 matrix. Each column representes X, Y, Z coordinates, respectively.
% 
% st.save_data(2, 'data_file') % Creates a .csv file with all the trajectories of all markers belonging to subject 1. Each column shows the marker name. The name of the marker 
%                                 % is repeated 3 times (one for X, Y, Z, respectively).

%% Case 2: NEXUS is not available and you have previously saved studies

% If the study is already saved, simply load the study

load('Sample_study.mat'); % Loading existing study

st % General information regarding the study can be found by executing this command

st.plot_traj(); % This command plots the whole study in matlab. You can use this to double check if the selected study is the desired one.
st.plot_mk(1, 24, 0); % This command plots the trajectories overtime as 3 2D-plots (one for each axis). Here you plot the marker 24 of subject 1.

st.subjects{1}.build_results(); % This line is required to build the results of the HAND VICON script. Ask Diego for more help.
st.plot_traj_ax(1, 100); % Plots the axes of reference on the hand during the study. 100 is a scaling factor for the axes visibility.
st.plot_snapshot_ax(1, 100, 400, 450); % Plots the hand with its axes only during pre specified frames of the recording.
st.plot_traj_sub(2); % plots the visualization of the specified subjects motion.

% It is possible to access each one of the subjects individually and access
% further functionalities. Here are some examples:
st.subjects{1}.get_lists(); % Retrieve the information regardin the marker names and order of subject 1. The order and names are the same as on the VICON capture system.
st.subjects{1}.list_mks() % Prints the list of markers of the subject

% You can access each marker individually as well and use the class' marker
% properties.
st.subjects{1}.markers{1} % This will print the information of marker 1 of subject 1. 
st.subjects{1}.markers{1}.traj % This will print the trajectory of marker 1 (subject 1) as a n_samples x 3 matrix. Each column representes X, Y, Z coordinates, respectively.

st.save_data(2, 'data_file') % Creates a .csv file with all the trajectories of all markers belonging to subject 1. Each column shows the marker name. The name of the marker 
                             % is repeated 3 times (one for X, Y, Z, respectively).
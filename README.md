# Interface with NEXUS (Motion tracking system software)

## Overview of the repostitory
<div align="justify">
Motion capture systems are widely used to track the motion of bodies in a range of scenarios. This is done by using a set of infrared cameras arranged in an specific way, who track reflective markers positioned in body landmarks of interest. Then algorithms can determine the coordinates of a marker in space in a certain time. 

<br />
 
Tracking landmarks in human bodies and objects while performing specific tasks is crucial for a myriad of fields, including biomechanics, robotics, and prosthetics development. Having access to tools whieh ease handling of trajectory recording of reflective markers is crucial to facilitate the analysis of recorded trajectories.

<br />

This repository offers an easy to use Matlab library which interfaces with a widely known motion capture processing software, namely, NEXUS. The library allows the user to effortlessly access recorded trajectories within a motion capture study, subject classification, report extraction, and visualization. 

<br />
<br />

<p align="center">
   <img src="/Visualizations/Library_usage.gif" width="700" />
</p>
<br />

## Understanding repository

The repository was developed in Matlab, using the following software version:

```
- Matlab R2020b
- Vicon Nexus (Version 2.12.1)
- Vicon Nexus MATLAB sdk
```

You will need to add the <a href="[https://www.prensilia.com/](https://www.vicon.com/software/datastream-sdk/?section=downloads)">Nexus' Matlab sdk</a> to your project in order to use this library. Once this step is completed, the library in this repository will take over low level communication with Nexus and return marker's positions in an easilly accessible manner. Please explore the main.m files, which contains functions for both scenarios, namely, when you want to directly visualize a recently recording study (Nexus is open and the corresponding recording is selected), and when you have saved recorded data (we used .mat files, and you can adapt the code to your specific recordings format).

<br />
<br />

## Contributions

The contributions of this repository can be summarized as follows:

```
- Algorithms for interface matlab applications with nexus software
- Algorithms to manipulate and visualize marker trajectories
- Functions specifically written to track human and robot hands
```

## Examples of library visualizations

### Tracking a human hand interacting with an object

The following figure shows a capture of an interaction between a hand and an object. The library can add coordinate frames to each subject on the motion capture study.

<p align="center">
   <img src="/Visualizations/Axes_subject.png" width="400" />
</p>

### Visualization of a single marker coordinates

The following figure shows the trajectory of a single marker within a study along the whole motion capture study:

<p align="center">
  <img src="/Visualizations/Trajectory_tracking.png" width="400" />  
</p>

## License

Developed by Diego Hidalgo C. (2020). This repository is intended for research purposes only. If you wish to use any parts of the provided code for commercial purposes, please contact the author at hidalgocdiego@gmail.com.
